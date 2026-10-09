# SPAS Scoop bucket

Install [SPAS](https://github.com/getspas/spas) on Windows with Scoop:

```powershell
scoop bucket add getspas https://github.com/getspas/scoop-bucket
scoop install getspas/spas
```

The manifest includes x64 and ARM64 binaries from the SPAS GitHub release.
Git is a dependency; SPAS requires Git 2.43.1 or newer. Scoop installs into your
user environment and creates a `spas` command shim.

```powershell
scoop update spas
scoop uninstall spas
```

Uninstalling preserves SPAS configuration and private assets. The bucket does
not change your PowerShell profile or move application data into Scoop folders.

SPAS's release publisher updates the manifest after a stable release is published.
The bucket's CI verifies archive checksums and tests installation on Windows
for x64 and ARM64.
