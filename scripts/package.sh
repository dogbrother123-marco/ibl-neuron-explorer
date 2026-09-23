#!/bin/sh
set -eu

script_dir=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
release_dir=$(CDPATH= cd -- "$script_dir/.." && pwd)
output_dir="$release_dir/dist"
archive_path="$output_dir/IBL-Neuron-Explorer.zip"

if ! command -v zip >/dev/null 2>&1; then
  printf '%s\n' '需要 zip 指令才能重新打包。一般使用者可直接開啟現有的 .command 或 HTML。' >&2
  exit 1
fi

for file in 'IBL Neuron Explorer.html' 'Open IBL Neuron Explorer.command' 'README.md' 'DATA_SOURCES.md' '.gitignore' '.gitattributes' 'scripts/package.sh'; do
  if [ ! -f "$release_dir/$file" ]; then
    printf '缺少檔案：%s\n' "$file" >&2
    exit 1
  fi
done

stage_dir=$(mktemp -d "${TMPDIR:-/tmp}/ibl-neuron-explorer.XXXXXX")
trap 'rm -rf "$stage_dir"' EXIT HUP INT TERM
bundle_dir="$stage_dir/IBL Neuron Explorer"
mkdir -p "$bundle_dir/scripts" "$output_dir"

for file in 'IBL Neuron Explorer.html' 'Open IBL Neuron Explorer.command' 'README.md' 'DATA_SOURCES.md' '.gitignore' '.gitattributes' 'scripts/package.sh'; do
  cp "$release_dir/$file" "$bundle_dir/$file"
done
chmod 755 "$bundle_dir/Open IBL Neuron Explorer.command" "$bundle_dir/scripts/package.sh"

archive_tmp="$stage_dir/IBL-Neuron-Explorer.zip"
(cd "$stage_dir" && zip -q -X -r "$archive_tmp" 'IBL Neuron Explorer')
mv "$archive_tmp" "$archive_path"
printf '已建立：%s\n' "$archive_path"
