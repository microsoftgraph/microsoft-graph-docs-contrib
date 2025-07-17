$docsRepoPath = Join-Path (Get-Location).Path -ChildPath "docs"

$permissionsReferenceFilePath = Join-Path $docsRepoPath -ChildPath "\concepts\permissions-reference.md"

# Define a hash table of typos and their corrections
$corrections = @{
    "Precention" = "Prevention"
    "oganization's" = "organization's"
    "backed up snapshot" = "backed-up snapshot"
    "organizatio" = "organization"
    "organization\u2019s" = "organization's"
    "device\u2019s" = "device's"
    "providers\u2019" = "providers'"
    "the the signed-in user" = "the signed-in user"
    "dimissing" = "dismissing"
    "user\u2019s" = "user's"
    "users\u2019" = "users'"
    "intellgence" = "intelligence"
    "polices" = "policies"
    "by the you" = "by you"
    "mesages" = "messages"
    "team\u2019s" = "team's"
    "calendars\u0020." = "calendars."
}

# Read the file content
$content = Get-Content -Path $permissionsReferenceFilePath -Raw

# Iterate through the corrections and replace typos
foreach ($typo in $corrections.Keys) {
    $content = $content -replace "\b$typo\b", $corrections[$typo]
}

$content = $content -replace "’", "'"

# Write the corrected content back to the file
Set-Content -Path $permissionsReferenceFilePath -Value $content

Write-Output "Typos corrected and saved in $permissionsReferenceFilePath."