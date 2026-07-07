# publish.ps1
# One-shot: initialize the repo, commit everything, and push to GitHub.
#
# BEFORE RUNNING:
#   1. Create an empty repo on github.com (no README, no .gitignore) named ad-helpdesk-lab
#   2. Run this from the repo root: .\scripts\publish.ps1 -GitHubUser "yourusername"

param(
    [Parameter(Mandatory = $true)]
    [string]$GitHubUser,
    [string]$RepoName = "ad-helpdesk-lab"
)

$repoRoot = Split-Path -Parent $PSScriptRoot
Set-Location $repoRoot

if (-not (Test-Path ".git")) {
    git init
    git branch -M main
    git remote add origin "https://github.com/$GitHubUser/$RepoName.git"
}

git add .
git commit -m "AD Helpdesk Simulation Lab: 6 documented tickets with evidence"
git push -u origin main

Write-Host "`nPublished. View it at https://github.com/$GitHubUser/$RepoName" -ForegroundColor Cyan
