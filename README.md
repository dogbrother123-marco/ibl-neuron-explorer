# IBL Neuron Explorer

離線版 **1.4（build 5）**。資料已包含在 HTML 中，不需要伺服器、網路連線、Python 或 Node.js。

## 開啟方式（macOS）

1. 下載 [IBL-Neuron-Explorer.zip](https://github.com/dogbrother123-marco/ibl-neuron-explorer/releases/latest/download/IBL-Neuron-Explorer.zip)。也可以使用 **Code → Download ZIP**。
2. 完整解壓縮，取得 **IBL Neuron Explorer** 資料夾。
3. 雙擊 **Open IBL Neuron Explorer.command**，以 Chrome 開啟同資料夾的 Explorer；若無法啟動 Chrome，會改用 Safari。

macOS 可能對下載的 `.command` 顯示安全性提示。也可以直接雙擊 **IBL Neuron Explorer.html**；若它沒有在瀏覽器開啟，請使用「打開檔案的應用程式」選擇 Chrome、Safari、Firefox 或 Edge。

請讓 `.command` 與 HTML 保持在同一個資料夾；整個資料夾可以自由移動。Windows／Linux 使用者可直接用瀏覽器開啟 HTML。

## 內容

側欄保留 Overview、Unit table、Waveform classes、Functional classes。輸入 cluster ID 可尋找神經元；點擊左下角資料數量可查看 Data & methods，以及 Paw & wheel。Prior decoding 與 Population dynamics 已移除。

資料來源、session 資訊與解讀限制請見 [DATA_SOURCES.md](DATA_SOURCES.md)。

## 重新打包

開發者可執行 `./scripts/package.sh`，產生 `dist/IBL-Neuron-Explorer.zip`。這一步使用系統的 `zip` 指令；一般使用者不必執行。
