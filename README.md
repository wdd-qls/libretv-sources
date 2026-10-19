# libretv-sources

LibreTV 源列表，由 `ziyuanzu-cms-interfaces.txt`（CMS 接口清单）转换而来。

- 文件：`libretv-ziyuanzu.json`
- 源数量：73
- 格式：LibreTV `version: 2` 导出格式（`sources[].name` / `sources[].url`）
- 原始字段 `apiType` / `uptime` / `speed` / `totalResources` / `categories` 在 LibreTV 格式中无对应位置，已省略

## 使用

LibreTV 设置页 → 配置管理 → 导入配置 → 填入下面的 Raw 地址：

```
https://raw.githubusercontent.com/wdd-qls/libretv-sources/main/libretv-ziyuanzu.json
```

## 重新生成

源清单更新后，把新的 CMS 接口 JSON 存为 `ziyuanzu-cms-interfaces.txt`，再运行转换脚本（见仓库内 `convert.ps1`）。
