param (
    [string]$ClientId,
    [string]$TenantId,
    [string]$ClientSecret
)

# Function to create custom permission objects
function Create-PermissionObjects {
    param (
        $appRoles,
        $oauth2PermissionScopes
    )
    $permissions = @()

    # For each appRole, create a custom object with the required properties and add it to the array
    foreach ($appRole in $appRoles) {
        $permission = [PSCustomObject]@{
            Name                 = $appRole.value
            Identifier           = $appRole.id
            DisplayText          = $appRole.displayName
            Description          = $appRole.description
            Type                 = "Application"
            AdminConsentRequired = "Yes"
        }
        $permissions += $permission
    }

    foreach ($oauth2PermissionScope in $oauth2PermissionScopes) {
        $adminConsentRequired = if ($oauth2PermissionScope.type -eq "User") { "No" } else { "Yes" }

        $permission = [PSCustomObject]@{
            Name                 = $oauth2PermissionScope.value
            Identifier           = $oauth2PermissionScope.id
            DisplayText          = $oauth2PermissionScope.adminConsentDisplayName
            Description          = $oauth2PermissionScope.adminConsentDescription
            Type                 = "Delegated"
            AdminConsentRequired = $adminConsentRequired
        }
        $permissions += $permission
    }

    # Sort permissions by Name in ascending order
    return $permissions | Sort-Object Name
}

# Function to generate Markdown content for permissions
function Generate-Markdown {
    param (
        $permissions,
        $resourceSpecificApplicationPermissions,
        $permissionNotesFolder
    )
    $markdown = ""

    $markdown += "## All permissions`n`n"

    foreach ($name in ($permissions.Name | Get-Unique)) {        
        $markdown += "### $name`n`n"
        $markdown += "| Category | Application | Delegated |`n|--|--|--|`n"
        
        foreach ($category in @("Identifier", "DisplayText", "Description", "AdminConsentRequired")) {      
            $markdown += "| $category "
            
            foreach ($type in @("Application", "Delegated")) {
                $permission = $permissions | Where-Object { $_.Name -eq $name -and $_.Type -eq $type }
                $markdown += if ($permission) { "| $($permission.$category) " } else { "| - " }
            }
            
            $markdown += "|`n"
        }
        
        # Handle permissions supported in MSA
        $msaPermissionNoteFile = "$permissionNotesFolder\permissions-msa.md"
        if (Test-Path $msaPermissionNoteFile) {
            try {
                $lines = Get-Content -Path $msaPermissionNoteFile -ErrorAction Stop
                if ($lines -like "*$name*") {
                    $markdown += "`n![personal Microsoft accounts][MSA] The *" + $name + "* delegated permission is also available for consent in personal Microsoft accounts.`n"
                }
            } 
            catch {
                Write-Host "An error occurred: $_"
            }
        }
        else {
            Write-Host "Could not find MSA permissions notes."
        }
        
        
        # Include additional notes if available
        $permissionNoteFile = "$permissionNotesFolder\$($name.ToLower()).md"
        if (Test-Path $permissionNoteFile) {
            $markdown += "`n[!INCLUDE [" + $name + "](../includes/permissions-notes/" + $name.ToLower() + ".md)]`n"
        }

        $markdown += "`n---`n`n"
    }

    # Add resource-specific consent (RSC) permissions section
    $markdown += "## Resource-specific consent (RSC) permissions`n`n"
    $markdown += "Learn more about [RSC authorization framework and RSC permissions](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).`n`n"
    $markdown += "---`n`n"
    $markdown += "| Name | ID | Display text | Description |`n|--|--|--|--|`n"

    foreach ($resourceSpecificApplicationPermission in $resourceSpecificApplicationPermissions) {
        $markdown += "| $($resourceSpecificApplicationPermission.value) | $($resourceSpecificApplicationPermission.id) | $($resourceSpecificApplicationPermission.displayName) | $($resourceSpecificApplicationPermission.description) |`n"
    }

    $markdown += "`n---`n"

    return $markdown
}

# Function to update permissions-reference.md file
function Update-FileContent {
    param (
        [string]$FilePath,
        [string[]]$NewContent
    )

    # Read the file contents
    $fileContents = Get-Content -Path $FilePath

    # Find the index of the first header
    $firstHeader = "## All permissions"
    $firstHeaderIndex = $fileContents.IndexOf($firstHeader)

    # Find the index of the second header
    $secondHeader = "## Related content"
    $secondHeaderIndex = $fileContents.IndexOf($secondHeader)

    # Check if indices are valid
    if ($firstHeaderIndex -ge 0 -and $secondHeaderIndex -lt $fileContents.Count -and $firstHeaderIndex -lt $secondHeaderIndex) {
        # Split the file content into three parts: before first header index, the new content, and after second header index 
        $beforeFirstHeader = $fileContents[0..($firstHeaderIndex - 1)]
        $afterSecondHeader = $fileContents[$secondHeaderIndex..($fileContents.Count - 1)]
		
        # Trim any trailing empty lines
        for ($i = $afterSecondHeader.Length - 1; $i -ge 0; $i--) {
            if ($afterSecondHeader[$i] -ne "") {
                break
            }
            $afterSecondHeader = $afterSecondHeader[0..($i - 1)]
        }
		
        # Update ms.date
        $today = Get-Date -Format "MM/dd/yyyy"
        $beforeFirstHeader = $beforeFirstHeader -replace '^ms\.date:.*', "ms.date: $today"

        # Combine the parts with the new content
        $updatedContent = $beforeFirstHeader + $NewContent + $afterSecondHeader

        # Write the updated content back to the file
        $updatedContent | Set-Content -Path $FilePath
    }
    else {
        Write-Output "Could not find update location on file."
    }
}


# Main script

$docsRepoPath = Join-Path (Get-Location).Path -ChildPath "docs"

# Get access token
$graphScopes = "https://graph.microsoft.com/.default"
$headers = @{
    "Content-Type" = "application/x-www-form-urlencoded"
}
$body = "grant_type=client_credentials&client_id=$ClientId&client_secret=$ClientSecret&scope=$graphScopes"
$authUri = "https://login.microsoftonline.com/$TenantId/oauth2/v2.0/token"

$response = Invoke-RestMethod $authUri  -Method 'POST' -Headers $headers -Body $body
$response | ConvertTo-Json
$accessToken = $response.access_token
$secureAccessToken = ConvertTo-SecureString $accessToken -AsPlainText -Force

# Install the Microsoft Graph PowerShell module if not already installed
if (-not (Get-Module -Name Microsoft.Graph -ListAvailable)) {
    Install-Module -Name Microsoft.Graph -Scope CurrentUser -Force
}

# Connect to Microsoft Graph
try {
    Connect-MgGraph -AccessToken $secureAccessToken -NoWelcome
    Write-Host "Connected successfully."
}
catch {
    Write-Error "Failed to connect to Microsoft Graph: $_"
    exit
}

# Get the Microsoft Graph service principal object
try {
    $servicePrincipal = Get-MgServicePrincipal -Filter "appId eq '00000003-0000-0000-c000-000000000000'" -ErrorAction Stop
}
catch {
    Write-Error "Failed to retrieve service principal: $_"
    exit
}
Disconnect-MgGraph

$appRoles = $servicePrincipal.appRoles
$oauth2PermissionScopes = $servicePrincipal.oauth2PermissionScopes
$resourceSpecificApplicationPermissions = $servicePrincipal.resourceSpecificApplicationPermissions

# Create permission objects
$permissions = Create-PermissionObjects -appRoles $appRoles -oauth2PermissionScopes $oauth2PermissionScopes

$permissionNotesFolder = Join-Path $docsRepoPath -ChildPath "\includes\permissions-notes"
$markdown = Generate-Markdown -permissions $permissions -resourceSpecificApplicationPermissions $resourceSpecificApplicationPermissions -permissionNotesFolder $permissionNotesFolder

# Write the Markdown output to a file
$permissionsReferenceFilePath = Join-Path $docsRepoPath -ChildPath "\concepts\permissions-reference.md"

try {
    Update-FileContent -FilePath $permissionsReferenceFilePath -NewContent $markdown
    Write-Host "Markdown file generated successfully: $permissionsReferenceFilePath"
}
catch {
    Write-Error "Failed to write Markdown file: $_"
}
