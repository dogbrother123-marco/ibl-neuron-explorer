# 資料來源

此 Explorer 使用 **International Brain Laboratory（IBL）公開資料**，不是 IBL 官方產品。來源說明：[IBL 2025 brain-wide map 資料文件](https://docs.internationalbrainlab.org/notebooks_external/2025_data_release_brainwidemap.html)。

- Subject：`SWC_043`
- 日期：`2020-09-21`
- Session：`4ecb5d24-f5cc-402c-be28-9d0f7cb14b3a`
- Probe：`probe00`
- 298 個通過 QC 的神經元、529 trials、13,705,503 spikes。
- Spike 時間解析度為 10 µs；本版本未截斷 spike 數量。

這是單一 session／probe 的資料，不是整個 IBL 資料庫。來源 trial QC 標記為 `WARNING`，此探索工具保留所有 trials；尚未套用所有論文特定的行為排除條件。波形與功能分類為描述性結果，不能直接視為已確認的細胞類型。

頁面與圖表沿用既有 Neuron Explorer 的版面，Figure 2a–2d 以 IBL 數值重新計算並繪製。圖表的 SVG、計數、方法與統計結果可在 Explorer 中離線下載。前爪資料為左側相機的 2D 像素座標；滾輪位置單位為 radians。

本資料包保留 IBL 的來源歸屬。資料的使用與引用方式請依 IBL 來源文件；此儲存庫沒有另行附加軟體授權條款。
