# Validate that temp-docstubs folder only contains temp-docstubs-instructions.md file
$folderPath = "temp-docstubs"
$allowedFile = "temp-docstubs-instructions.md"

# Get all files in the temp-docstubs folder (excluding hidden files)
$files = Get-ChildItem -Path $folderPath -File | Where-Object { -not $_.Name.StartsWith('.') }

# Build error message if there are extra files
$err = ""
$unexpectedFiles = @()

foreach ($file in $files) {
    if ($file.Name -ne $allowedFile) {
        $unexpectedFiles += $file.Name
    }
}

# Check if the allowed file exists
$allowedFilePath = Join-Path $folderPath $allowedFile
if (-not (Test-Path $allowedFilePath)) {
    $err += "Required file not found: $allowedFile`r`n"
}

# Report errors for unexpected files
if ($unexpectedFiles.Count -gt 0) {
    $err += "Unexpected files found in temp-docstubs folder. Only $allowedFile should be present.`r`n"
    $err += "Found the following unexpected files:`r`n"
    foreach ($fileName in $unexpectedFiles) {
        $err += "  - $fileName`r`n"
    }
    $err += "`r`nPlease remove these files before committing. The temp-docstubs folder is only for temporary doc stubs during authoring.`r`n"
}

# Exit with error if any issues found
if ($err -ne "") {
    Write-Error $err
    exit 1
}

Write-Host "Validation passed: temp-docstubs folder contains only $allowedFile" -ForegroundColor Green
exit 0
