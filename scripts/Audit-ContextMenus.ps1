$ErrorActionPreference = 'Stop'
$rows = [Collections.Generic.List[object]]::new()
function Read-MenuParent($base, [string]$prefix, [string]$relative, [string]$kind) {
    try { $parent = $base.OpenSubKey($relative) } catch { Write-Warning "Cannot read $prefix\$relative"; return }
    if (-not $parent) { return }
    try {
        foreach ($name in $parent.GetSubKeyNames()) {
            $key = $parent.OpenSubKey($name)
            if (-not $key) { continue }
            try {
                $values = @{}
                foreach ($v in $key.GetValueNames()) { $values[$v] = $key.GetValue($v, $null, 'DoNotExpandEnvironmentNames') }
                $command = $key.OpenSubKey('command')
                $cmd = if ($command) { $command.GetValue(''); $command.Close() } else { $null }
                $clsid = if ($kind -eq 'handler') { $key.GetValue(''); } else { $key.GetValue('ExplorerCommandHandler') }
                if (-not $clsid -and $name -match '^\{.*\}$') { $clsid = $name }
                $server = $null; $className = $null
                if ($clsid -match '^\{[\da-fA-F-]+\}$') {
                    $class = [Microsoft.Win32.Registry]::ClassesRoot.OpenSubKey("CLSID\$clsid")
                    if ($class) {
                        $className = $class.GetValue('')
                        $srv = $class.OpenSubKey('InprocServer32')
                        if ($srv) { $server = $srv.GetValue(''); $srv.Close() }
                        $class.Close()
                    }
                }
                $rows.Add([pscustomobject]@{Path="$prefix\$relative\$name"; Kind=$kind; Name=$name; Values=$values; Command=$cmd; CLSID=$clsid; ClassName=$className; Server=$server})
            } finally { $key.Close() }
        }
    } finally { $parent.Close() }
}
foreach ($hive in @('CurrentUser','LocalMachine')) {
    $base = [Microsoft.Win32.Registry]::$hive.OpenSubKey('Software\Classes')
    $prefix = if ($hive -eq 'CurrentUser') {'HKEY_CURRENT_USER\Software\Classes'} else {'HKEY_LOCAL_MACHINE\Software\Classes'}
    try {
        $objects = [Collections.Generic.List[string]]::new()
        foreach ($name in $base.GetSubKeyNames()) { $objects.Add($name) }
        foreach ($container in @('Directory\Background','DesktopBackground','SystemFileAssociations','CLSID','Applications')) {
            $objects.Add($container)
            if ($container -in @('SystemFileAssociations','CLSID','Applications')) {
                $key = $base.OpenSubKey($container)
                if ($key) { foreach ($child in $key.GetSubKeyNames()) { $objects.Add("$container\$child") }; $key.Close() }
            }
        }
        foreach ($object in $objects | Sort-Object -Unique) {
            Read-MenuParent $base $prefix "$object\shell" 'verb'
            Read-MenuParent $base $prefix "$object\shellex\ContextMenuHandlers" 'handler'
        }
    } finally { $base.Close() }
}
$out = Join-Path $PSScriptRoot '..\registry-menu-audit'
[IO.Directory]::CreateDirectory($out) | Out-Null
$rows | ConvertTo-Json -Depth 8 | Set-Content -LiteralPath (Join-Path $out 'inventory.json') -Encoding utf8
$rows | Select-Object Path,Kind,Name,ClassName,Server,Command,@{n='Label';e={$_.Values['MUIVerb'] ?? $_.Values['']}},@{n='Disabled';e={$_.Values.ContainsKey('LegacyDisable') -or $_.Values.ContainsKey('ProgrammaticAccessOnly')}} | Export-Csv -LiteralPath (Join-Path $out 'inventory.csv') -NoTypeInformation -Encoding utf8
$rows | Group-Object Kind | Select-Object Name,Count
