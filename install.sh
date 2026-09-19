#!/usr/bin/env sh
set -eu
script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
target_dir="${CODEX_HOME:-${HOME}/.codex}/pets/just-alien-cat"
test -f "$script_dir/pet/pet.json"
test -f "$script_dir/pet/spritesheet.webp"
mkdir -p "$target_dir"
cp "$script_dir/pet/pet.json" "$target_dir/pet.json"
cp "$script_dir/pet/spritesheet.webp" "$target_dir/spritesheet.webp"
printf 'Installed JUST Alien Cat to %s\n' "$target_dir"
printf 'Refresh Settings > Pets in Codex, then select JUST外星猫.\n'
