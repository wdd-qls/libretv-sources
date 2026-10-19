# 将 ziyuanzu-cms-interfaces.txt (CMS 接口清单) 转换为 LibreTV v2 源列表格式
# 用法: pwsh -File convert.ps1 -InputFile ziyuanzu-cms-interfaces.txt -OutputFile libretv-ziyuanzu.json
param(
    [string]$InputFile  = "ziyuanzu-cms-interfaces.txt",
    [string]$OutputFile = "libretv-ziyuanzu.json"
)

$src = Get-Content $InputFile -Raw | ConvertFrom-Json

$obj = [ordered]@{
    name        = "LibreTV-SourceList"
    version     = 2
    exportedAt  = [DateTimeOffset]::UtcNow.ToUnixTimeMilliseconds()
    sources     = @($src | ForEach-Object { [ordered]@{ name = $_.name; url = $_.api } })
    liveSources = @()
}

$json = $obj | ConvertTo-Json -Depth 6
[IO.File]::WriteAllText(
    (Join-Path (Get-Location) $OutputFile),
    $json,
    (New-Object System.Text.UTF8Encoding($false))
)
Write-Output "wrote $OutputFile ($($obj.sources.Count) sources)"
