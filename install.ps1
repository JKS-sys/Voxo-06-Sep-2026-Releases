# Voxo installer for Windows 10/11:
#   irm https://raw.githubusercontent.com/JKS-sys/Voxo-06-Sep-2026-Releases/main/install.ps1 | iex
$ErrorActionPreference = 'Stop'
$repo = 'JKS-sys/Voxo-06-Sep-2026-Releases'
$gh = "https://github.com/$repo/releases"
$r2 = 'https://ipconfig.co.network/updates/voxo'
try { $feed = Invoke-RestMethod "$gh/latest/download/latest.json" } catch { $feed = Invoke-RestMethod "$r2/latest.json" }
$v = $feed.version
Write-Host "==> Voxo $v" -ForegroundColor Cyan
$f = "Voxo_${v}_x64-setup.exe"
$out = Join-Path $env:TEMP $f
try { Invoke-WebRequest "$gh/download/v$v/$f" -OutFile $out -UseBasicParsing } catch { Invoke-WebRequest "$r2/$f" -OutFile $out -UseBasicParsing }
Write-Host "==> Installing (if SmartScreen asks: More info -> Run anyway)" -ForegroundColor Cyan
Start-Process $out -ArgumentList '/S' -Wait
Remove-Item $out -ErrorAction SilentlyContinue
Write-Host "==> Done - Voxo is in the Start menu" -ForegroundColor Green
