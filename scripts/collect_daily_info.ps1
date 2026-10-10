param(
    [string]$Date = (Get-Date -Format 'yyyy-MM-dd'),
    [string]$RepositoryRoot = (Split-Path -Parent $PSScriptRoot),
    [switch]$Push
)

$ErrorActionPreference = 'Stop'
Set-Location $RepositoryRoot
$sourcePath = Join-Path $RepositoryRoot 'src'
$dailyPath = Join-Path $sourcePath "$Date.md"

if (-not (Test-Path $sourcePath)) {
    New-Item -ItemType Directory -Path $sourcePath | Out-Null
}

if (-not (Test-Path $dailyPath)) {
    @("# [AI 技术资讯：$Date](../README.md)", '', "> 整理日期：$Date（Asia/Shanghai）", '', '## [5 分钟摘要](../README.md)', '', '## [热点聚合与中文媒体](../README.md)', '', '## [官方发布](../README.md)', '', '## [论文、模型与开源趋势](../README.md)', '', '## [行业、安全与深度分析](../README.md)', '', '## [综合观察](../README.md)', '', '## [来源访问与口径说明](../README.md)') | Set-Content -Path $dailyPath -Encoding utf8
    Write-Host "Created $dailyPath"
} else {
    Write-Host "Using existing $dailyPath"
}

if (-not (Select-String -Path $dailyPath -Pattern '^## \[来源访问与口径说明\]' -Quiet)) {
    throw "Daily file is missing the required document sections: $dailyPath"
}

git diff --check
$changes = git status --short
if ([string]::IsNullOrWhiteSpace(($changes -join "`n"))) {
    Write-Host 'No changes to commit.'
    exit 0
}

git add README.md "src/$Date.md"
git commit -m "添加 $Date AI 资讯"
if ($Push) {
    git push origin main
}
