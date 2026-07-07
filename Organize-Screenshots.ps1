# Organize-Screenshots.ps1
# Drop ALL your screenshots (named ticketN-0X-description.png) into one folder,
# then run this from the repo root. It sorts them into evidence/ticketN/ automatically.
#
# Usage:
#   .\scripts\Organize-Screenshots.ps1 -Source "C:\Users\you\Desktop\lab-screenshots"

param(
    [Parameter(Mandatory = $true)]
    [string]$Source
)

$repoRoot = Split-Path -Parent $PSScriptRoot

Get-ChildItem -Path $Source -Filter "ticket*-*.png" | ForEach-Object {
    if ($_.Name -match '^ticket(\d+)-') {
        $ticketNum = $Matches[1]
        $dest = Join-Path $repoRoot "evidence\ticket$ticketNum"

        if (-not (Test-Path $dest)) {
            New-Item -ItemType Directory -Path $dest | Out-Null
        }

        Move-Item -Path $_.FullName -Destination $dest
        Write-Host "Moved $($_.Name) -> evidence\ticket$ticketNum\" -ForegroundColor Green
    }
    else {
        Write-Host "Skipped $($_.Name) (doesn't match ticketN-0X naming)" -ForegroundColor Yellow
    }
}

Write-Host "`nDone. Review evidence folders, then run scripts\publish.ps1 to push to GitHub." -ForegroundColor Cyan
