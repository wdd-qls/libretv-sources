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

## Top 10 精选源（`libretv-top10.json`）

从 [资源组 ziyuanzu.com](https://www.ziyuanzu.com/) 的采集站清单中筛选，2026-10-19 实测。

筛选条件：可用率 ≥ 99.99%、站点标注速度为「快速/一般」、资源量靠前，且本地三轮请求 **3/3 成功返回合法 JSON**（每轮取 20 条片单）。

| # | 站点 | 资源量 | 可用率 | 站点速度 | 实测中位延迟 |
|---|------|--------|--------|----------|--------------|
| 1 | 无尽资源站 | 12.3 万 | 100% | 快速 | 270ms |
| 2 | 鸭鸭资源站 | 12.3 万 | 100% | 快速 | 587ms |
| 3 | 最大资源站 | 12.5 万 | 99.999% | 一般 | 792ms |
| 4 | 360资源站 | 7.3 万 | 99.999% | 快速 | 931ms |
| 5 | 索尼采集站 | 14.7 万 | 100% | 一般 | 1330ms |
| 6 | 光速资源站 | 11.6 万 | 100% | 快速 | 1694ms |
| 7 | 豪华资源站 | 11.5 万 | 100% | 快速 | 2281ms |
| 8 | 暴风资源站 | 16.5 万 | 100% | 快速 | 2311ms |
| 9 | 豆瓣资源站 | 14.8 万 | 100% | 一般 | 2691ms |
| 10 | 极速资源站 | 11.4 万 | 100% | 快速 | 2960ms |

> 延迟为本机（国内网络）三次请求的中位数，仅供参考；不同网络环境下排序会变。
> 已排除纯成人内容站点及探测失败（超时/空响应）的站点。

订阅地址：

```
https://raw.githubusercontent.com/wdd-qls/libretv-sources/main/libretv-top10.json
```
