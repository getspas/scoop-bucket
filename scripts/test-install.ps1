$ErrorActionPreference = 'Stop'

$manifest = Get-Content "$PSScriptRoot/../bucket/spas.json" -Raw | ConvertFrom-Json
$metadata = & "$env:SCOOP/shims/spas.exe" version --json | ConvertFrom-Json
if ($LASTEXITCODE -ne 0 -or $metadata.version -ne $manifest.version) {
    throw 'Installed SPAS version does not match the manifest.'
}

& "$env:SCOOP/shims/spas.exe" --help
if ($LASTEXITCODE -ne 0) {
    throw 'Installed SPAS command failed.'
}
