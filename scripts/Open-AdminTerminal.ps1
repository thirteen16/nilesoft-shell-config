param(
    [ValidateSet('CMD','PowerShell')][string]$Shell,
    [Parameter(Mandatory=$true)][string]$Target
)
$ErrorActionPreference = 'Stop'
try {
    $folder = (Get-Item -LiteralPath $Target -Force).FullName
    if (-not (Test-Path -LiteralPath $folder -PathType Container)) { throw '目标不是文件夹。' }
    $literal = "'" + $folder.Replace("'", "''") + "'"
    $code = "Set-Location -LiteralPath $literal; [Environment]::CurrentDirectory = $literal; "
    if ($Shell -eq 'CMD') {
        $code += 'Start-Process -FilePath "$env:SystemRoot\System32\cmd.exe" -ArgumentList ''/d'', ''/k'' -WorkingDirectory (Get-Location).Path -NoNewWindow -Wait'
    }
    $encoded = [Convert]::ToBase64String([Text.Encoding]::Unicode.GetBytes($code))
    $launchArgs = @('-NoProfile')
    if ($Shell -eq 'PowerShell') { $launchArgs += '-NoExit' }
    $launchArgs += @('-EncodedCommand', $encoded)
    Start-Process -FilePath "$env:SystemRoot\System32\WindowsPowerShell\v1.0\powershell.exe" -Verb RunAs -ArgumentList $launchArgs -WorkingDirectory $folder
} catch {
    if ($_.Exception.NativeErrorCode -ne 1223) {
        Add-Type -AssemblyName System.Windows.Forms
        [System.Windows.Forms.MessageBox]::Show($_.Exception.Message, '打开管理员终端') | Out-Null
    }
}
