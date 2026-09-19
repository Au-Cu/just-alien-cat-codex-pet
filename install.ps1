param([string]$PetsDirectory = $(if ($env:CODEX_HOME) { Join-Path $env:CODEX_HOME 'pets' } else { Join-Path $env:USERPROFILE '.codex\pets' }))
$ErrorActionPreference = 'Stop'
$sourceDirectory = Join-Path $PSScriptRoot 'pet'
$targetDirectory = Join-Path $PetsDirectory 'just-alien-cat'
foreach ($name in @('pet.json', 'spritesheet.webp')) {
    if (-not (Test-Path -LiteralPath (Join-Path $sourceDirectory $name) -PathType Leaf)) { throw "Missing pet file: $name" }
}
New-Item -ItemType Directory -Path $targetDirectory -Force | Out-Null
foreach ($name in @('pet.json', 'spritesheet.webp')) {
    Copy-Item -LiteralPath (Join-Path $sourceDirectory $name) -Destination $targetDirectory -Force
}
Write-Host "Installed JUST Alien Cat to $targetDirectory"
Write-Host 'Refresh Settings > Pets in Codex, then select JUST Alien Cat (JUST外星猫).'
