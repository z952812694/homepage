$files = @(
    "C:\Users\Admin\.openclaw\workspace\USER.md",
    "C:\Users\Admin\.openclaw\workspace\HEARTBEAT.md",
    "C:\Users\Admin\.openclaw\workspace\TOOLS.md",
    "C:\Users\Admin\.openclaw\workspace\IDENTITY.md",
    "C:\Users\Admin\.openclaw\workspace\SOUL.md",
    "C:\Users\Admin\.openclaw\workspace\AGENTS.md",
    "C:\Users\Admin\.openclaw\workspace\MEMORY.md"
)

foreach ($f in $files) {
    if (Test-Path $f) {
        $bytes = [System.IO.File]::ReadAllBytes($f)
        $bom = ""
        if ($bytes.Length -ge 3) {
            $bom = [BitConverter]::ToString($bytes[0..2])
        }
        $hasBOM = ($bom -eq "EF-BB-BF")
        $tail = ""
        if ($bytes.Length -ge 100) {
            $tail = [BitConverter]::ToString($bytes[($bytes.Length - 100)..($bytes.Length - 1)])
        }
        $hasTrailingGarbage = $tail -match "27-20-44-4F-20-4E-4F-54"
        Write-Host "=== $(Split-Path $f -Leaf) ==="
        Write-Host "  Size: $($bytes.Length) bytes"
        Write-Host "  BOM: $bom (UTF8-BOM: $hasBOM)"
        Write-Host "  Trailing garbage: $hasTrailingGarbage"
        Write-Host ""
    }
}
