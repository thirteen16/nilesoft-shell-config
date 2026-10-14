param([switch]$Apply)
$ErrorActionPreference='Stop'
$root=Split-Path $PSScriptRoot -Parent
$machine='HKEY_LOCAL_MACHINE\Software\Classes\'
$user='HKEY_CURRENT_USER\Software\Classes\'
$terminal=@(foreach($object in @('Directory','Directory\Background','Drive')) {foreach($verb in @('cmd','Powershell')) {"$object\shell\$verb"}})
$targets=@($terminal)+@('Python.File\shell\editwithidle','Python.NoConFile\shell\editwithidle','Directory\Background\shell\WSL')
foreach($ext in @('.3ds','.3mf','.dae','.dxf','.obj','.ply','.stl','.wrl')) {$targets+="SystemFileAssociations\$ext\shell\3D Print"}
if(-not $Apply){$targets | ForEach-Object {$machine+$_};return}
$backup=Join-Path $root ('registry-delete-backup-'+(Get-Date -Format 'yyyyMMdd-HHmmss'))
New-Item -ItemType Directory -Path $backup | Out-Null
$results=[Collections.Generic.List[object]]::new()
try {
    $configPaths=@((Join-Path $root 'imports\table-order.nss'),(Join-Path $root 'imports\all-files.nss'))
    $hashes=Get-FileHash -LiteralPath $configPaths
    $config=[IO.File]::ReadAllText($configPaths[0])
    foreach($title in @('Open Command Prompt here','Open PowerShell here')) {
        if($config -notmatch ("item\([^\r\n]*title='"+[regex]::Escape($title)+"'[^\r\n]*cmd=")){throw "Independent custom command missing: $title"}
    }
    $restore=[Collections.Generic.List[string]]::new()
    $restore.Add('Windows Registry Editor Version 5.00')
    $existing=[Collections.Generic.List[string]]::new()
    $index=0
    foreach($path in @($targets | ForEach-Object {$machine+$_})+@($terminal | ForEach-Object {$user+$_})) {
        if(-not(Test-Path -LiteralPath ('Registry::'+$path))){continue}
        $file=Join-Path $backup ('key-{0:D2}.reg' -f (++$index))
        & reg.exe export $path $file /y | Out-Null
        if($LASTEXITCODE -ne 0){throw "Backup failed: $path"}
        $restore.Add(([IO.File]::ReadAllText($file) -replace '^Windows Registry Editor Version 5.00\s*',''))
        $existing.Add($path)
    }
    [IO.File]::WriteAllText((Join-Path $backup 'RESTORE.reg'),($restore -join "`r`n`r`n"),[Text.Encoding]::Unicode)
    $existing | Set-Content -LiteralPath (Join-Path $backup 'backed-up-keys.txt') -Encoding utf8
    foreach($relative in $targets) {
        $path=$machine+$relative
        if(-not $existing.Contains($path)){continue}
        try {
            Remove-Item -LiteralPath ('Registry::'+$path) -Recurse -Force
            if(Test-Path -LiteralPath ('Registry::'+$path)){throw 'Key still exists'}
            $results.Add([pscustomobject]@{Path=$path;Status='Deleted';Error=''})
        } catch {$results.Add([pscustomobject]@{Path=$path;Status='NotDeleted';Error=$_.Exception.Message})}
    }
    foreach($relative in $terminal) {
        if(Test-Path -LiteralPath ('Registry::'+$machine+$relative)){continue}
        $path=$user+$relative
        $key=Get-Item -LiteralPath ('Registry::'+$path) -ErrorAction SilentlyContinue
        if($key -and $key.SubKeyCount -eq 0 -and $key.ValueCount -eq 1 -and $key.GetValueNames() -contains 'LegacyDisable') {
            try {
                Remove-Item -LiteralPath ('Registry::'+$path) -Force
                if(Test-Path -LiteralPath ('Registry::'+$path)){throw 'Override still exists'}
                $results.Add([pscustomobject]@{Path=$path;Status='Deleted obsolete override';Error=''})
            } catch {$results.Add([pscustomobject]@{Path=$path;Status='NotDeleted';Error=$_.Exception.Message})}
        }
    }
    foreach($hash in $hashes){if((Get-FileHash -LiteralPath $hash.Path).Hash -ne $hash.Hash){throw 'Nilesoft configuration unexpectedly changed'}}
} finally {
    $results | ConvertTo-Json -Depth 4 | Set-Content -LiteralPath (Join-Path $backup 'results.json') -Encoding utf8
    $results | Export-Csv -LiteralPath (Join-Path $backup 'results.csv') -NoTypeInformation -Encoding utf8
}
$results | Group-Object Status | Select-Object Name,Count
Write-Output $backup
