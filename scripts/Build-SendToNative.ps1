$ErrorActionPreference='Stop'
Add-Type -Path (Join-Path $PSScriptRoot 'SendToNative.cs') -ReferencedAssemblies System.Windows.Forms -OutputAssembly (Join-Path $PSScriptRoot 'SendToNative.exe') -OutputType WindowsApplication
