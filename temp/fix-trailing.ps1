$files = @(
    "C:\Users\Admin\.openclaw\workspace\USER.md",
    "C:\Users\Admin\.openclaw\workspace\HEARTBEAT.md",
    "C:\Users\Admin\.openclaw\workspace\TOOLS.md"
)

foreach ($f in $files) {
    $bytes = [System.IO.File]::ReadAllBytes($f)
    
    # Find trailing garbage marker: ' DO NOT REMOVE
    $searchBytes = [System.Text.Encoding]::ASCII.GetBytes("' DO NOT REMOVE")
    $found = -1
    for ($i = $bytes.Length - 200; $i -lt $bytes.Length - 15; $i++) {
        $match = $true
        for ($j = 0; $j -lt $searchBytes.Length; $j++) {
            if ($bytes[$i + $j] -ne $searchBytes[$j]) {
                $match = $false
                break
            }
        }
        if ($match) {
            $found = $i
            break
        }
    }
    
    if ($found -gt 0) {
        # Also remove any trailing whitespace/newlines before the marker
        $end = $found
        while ($end -gt 0 -and ($bytes[$end - 1] -eq 0x0A -or $bytes[$end - 1] -eq 0x0D -or $bytes[$end - 1] -eq 0x20)) {
            $end--
        }
        # Keep one final newline
        $cleanBytes = New-Object byte[] ($end + 1)
        [Array]::Copy($bytes, $cleanBytes, $end)
        $cleanBytes[$end] = 0x0A
        [System.IO.File]::WriteAllBytes($f, $cleanBytes)
        Write-Host "Fixed: $(Split-Path $f -Leaf) (removed $($bytes.Length - $end - 1) trailing bytes)"
    } else {
        Write-Host "OK: $(Split-Path $f -Leaf) (no trailing garbage found)"
    }
}
