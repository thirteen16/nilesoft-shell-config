param([switch]$Apply)
$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$machine = 'HKEY_LOCAL_MACHINE\Software\Classes\'
$thirdParty = @(
    '*\shell\Open with IntelliJ IDEA', '*\shell\Open with PyCharm',
    'Directory\shell\AnyCode', 'Directory\Background\shell\AnyCode',
    'Directory\shell\git_shell', 'Directory\Background\shell\git_shell',
    'Directory\shell\IntelliJ IDEA', 'Directory\Background\shell\IntelliJ IDEA',
    'Directory\shell\PyCharm', 'Directory\Background\shell\PyCharm'
)
$system = foreach ($object in @('Directory','Directory\Background','Drive')) {
    foreach ($verb in @('cmd','Powershell')) { "$object\shell\$verb" }
}
$config = [IO.File]::ReadAllText((Join-Path $root 'imports\table-order.nss'))
foreach ($title in @('Open with IntelliJ IDEA','Open with PyCharm','Open with Visual Studio','Open Git Bash here','Open Command Prompt here','Open PowerShell here')) {
    if ($config -notmatch ("item\([^\r\n]*title='" + [regex]::Escape($title) + "'[^\r\n]*cmd=")) { throw "Missing independent Nilesoft command: $title" }
}
$plan = @(
    foreach ($relative in $thirdParty) { [pscustomobject]@{Action='Delete redundant third-party menu key';Path=$machine+$relative} }
    foreach ($relative in $system) { [pscustomobject]@{Action='Hide duplicate system menu using HKCU LegacyDisable';Path='HKEY_CURRENT_USER\Software\Classes\'+$relative} }
)
if (-not $Apply) { $plan | Format-Table -AutoSize; return }
$backup = Join-Path $root ('registry-menu-backup-' + (Get-Date -Format 'yyyyMMdd-HHmmss'))
New-Item -ItemType Directory -Path $backup | Out-Null
$restore = [Collections.Generic.List[string]]::new()
$restore.Add('Windows Registry Editor Version 5.00')
$restore.Add('')
$index = 0
# Complete every backup before performing any registry mutation.
foreach ($relative in $thirdParty) {
    $path = $machine+$relative
    if (-not (Test-Path -LiteralPath "Registry::$path")) { throw "Expected menu key missing: $path" }
    $file = Join-Path $backup ('third-party-{0:D2}.reg' -f (++$index))
    & reg.exe export $path $file /y | Out-Null
    if ($LASTEXITCODE -ne 0) { throw "Backup failed: $path" }
    $restore.Add(([IO.File]::ReadAllText($file) -replace '^Windows Registry Editor Version 5.00\s*',''))
}
foreach ($relative in $system) {
    if (-not (Test-Path -LiteralPath ('Registry::'+$machine+$relative))) { throw "System key missing: $relative" }
    $path = 'HKEY_CURRENT_USER\Software\Classes\'+$relative
    $key = Get-Item -LiteralPath "Registry::$path" -ErrorAction SilentlyContinue
    if ($key -and $key.GetValueNames() -contains 'LegacyDisable') { throw "Already overridden; review before cleanup: $path" }
    if ($key) {
        $file = Join-Path $backup ('system-user-before-{0:D2}.reg' -f (++$index))
        & reg.exe export $path $file /y | Out-Null
        if ($LASTEXITCODE -ne 0) { throw "Backup failed: $path" }
    }
    $restore.Add("[$path]`r`n`"LegacyDisable`"=-`r`n")
}
[IO.File]::WriteAllText((Join-Path $backup 'RESTORE.reg'),($restore -join "`r`n"),[Text.Encoding]::Unicode)
$plan | Export-Csv -LiteralPath (Join-Path $backup 'changes.csv') -NoTypeInformation -Encoding utf8
$hashBefore = Get-FileHash -LiteralPath (Join-Path $root 'imports\table-order.nss'),(Join-Path $root 'imports\all-files.nss')
foreach ($relative in $thirdParty) { Remove-Item -LiteralPath ('Registry::'+$machine+$relative) -Recurse -Force }
foreach ($relative in $system) {
    $path = 'Registry::HKEY_CURRENT_USER\Software\Classes\'+$relative
    if (-not (Test-Path -LiteralPath $path)) { New-Item -Path $path -Force | Out-Null }
    New-ItemProperty -LiteralPath $path -Name LegacyDisable -PropertyType String -Value '' -Force | Out-Null
}
foreach ($relative in $thirdParty) { if (Test-Path -LiteralPath ('Registry::'+$machine+$relative)) { throw "Deletion verification failed: $relative" } }
foreach ($relative in $system) {
    $key = Get-Item -LiteralPath ('Registry::HKEY_CURRENT_USER\Software\Classes\'+$relative)
    if ($key.GetValueNames() -notcontains 'LegacyDisable') { throw "Override verification failed: $relative" }
}
foreach ($hash in $hashBefore) { if ((Get-FileHash -LiteralPath $hash.Path).Hash -ne $hash.Hash) { throw 'Nilesoft configuration changed unexpectedly' } }
[pscustomobject]@{DeletedThirdParty=10;HiddenSystemDuplicates=6;Backup=$backup;Verified=$true} | ConvertTo-Json | Tee-Object -FilePath (Join-Path $backup 'result.json')
