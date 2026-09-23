#!/bin/zsh
set -eu

explorer_dir="${0:A:h}"
explorer_html="$explorer_dir/IBL Neuron Explorer.html"

if [[ ! -f "$explorer_html" ]]; then
  print -u2 -- "找不到 IBL Neuron Explorer.html。請完整解壓縮下載的 ZIP，並讓 HTML 與此 .command 檔案放在同一個資料夾。"
  exit 1
fi

if /usr/bin/open -b com.google.Chrome "$explorer_html" 2>/dev/null; then
  exit 0
fi
if /usr/bin/open -b com.apple.Safari "$explorer_html" 2>/dev/null; then
  exit 0
fi

print -u2 -- "無法啟動 Chrome 或 Safari。請直接用瀏覽器開啟同資料夾的 IBL Neuron Explorer.html。"
exit 1
