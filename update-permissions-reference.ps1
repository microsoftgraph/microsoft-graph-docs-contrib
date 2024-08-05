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

    $markdown += "`n## All permissions`n`n"

    foreach ($name in ($permissions.Name | Get-Unique)) {
        $markdown += "### $name`n`n"
        $markdown += "| Category | Application | Delegated |`n"
        $markdown += "|--|--|--|`n"

        foreach ($category in @("Identifier", "DisplayText", "Description", "AdminConsentRequired")) {
            $markdown += "| $category "

            foreach ($type in @("Application", "Delegated")) {
                $permission = $permissions | Where-Object { $_.Name -eq $name -and $_.Type -eq $type }
                $markdown += if ($permission) { "| $($permission.$category) " } else { "| - " }
            }

            $markdown += "`n"
        }

        $noteFilePath = "$permissionNotesFolder\$($name.ToLower()).md"
        if (Test-Path $noteFilePath) {
            $markdown += "`n[!INCLUDE [$name](../includes/permissions-notes/$($name.ToLower()).md)]`n"
        }

        $markdown += "`n---`n`n"
    }

    $markdown += "## Delegated permissions supported for personal Microsoft accounts (MSA)`n`n"
    $markdown += "[!INCLUDE [permissions-msa](../includes/permissions-notes/permissions-msa.md)]`n`n"
    $markdown += "---`n`n"
    $markdown += "## Resource-specific consent (RSC) permissions`n`n"
    $markdown += "Learn more about [RSC authorization framework and RSC permissions](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).`n`n"
    $markdown += "---`n`n"
    $markdown += "| Name | ID | Display text | Description |`n"
    $markdown += "|--|--|--|--|`n"

    foreach ($resourceSpecificApplicationPermission in $resourceSpecificApplicationPermissions) {
        $markdown += "| $($resourceSpecificApplicationPermission.value) | $($resourceSpecificApplicationPermission.id) | $($resourceSpecificApplicationPermission.displayName) | $($resourceSpecificApplicationPermission.description) `n"
    }

    return $markdown
}

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
$token = $response.access_token
$secureAccessToken = ConvertTo-SecureString $token -AsPlainText -Force

Connect-MgGraph -AccessToken $secureAccessToken

# Install the Microsoft Graph PowerShell module if not already installed
if (-not (Get-Module -Name Microsoft.Graph -ListAvailable)) {
    Install-Module -Name Microsoft.Graph -Scope CurrentUser -Force
}

# Connect to Microsoft Graph
try {
    Connect-MgGraph -AccessToken $secureAccessToken

    if ($Error.Count -gt 0) {
        Write-Host "An error occurred during connection:"
        Write-Host $Error[0].Exception.Message
    } else {
        Write-Host "Connected successfully."
    }
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
    $markdown | Out-File -FilePath $permissionsReferenceFilePath -ErrorAction Stop
    Write-Host "Markdown file generated successfully: $permissionsReferenceFilePath"
}
catch {
    Write-Error "Failed to write Markdown file: $_"
}
