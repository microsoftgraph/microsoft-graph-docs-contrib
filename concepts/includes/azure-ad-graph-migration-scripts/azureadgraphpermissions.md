---
description: "updatePermissions.ps1 script - add only Azure AD Graph permissions"
---

```powershell
## Sign in with the required Application.ReadWrite.All scope
Connect-Graph -Scopes "Application.ReadWrite.All" 

## Azure AD Graph's globally unique appId is 00000002-0000-0000-c000-000000000000 identified by the ResourceAppId
$graphResourceId = "00000002-0000-0000-c000-000000000000"

## Replace 581088ba-83c5-4975-b8af-11d2d7a76e98 with the object ID of the app you wish to add new permissions to
$applicationId = "581088ba-83c5-4975-b8af-11d2d7a76e98" 

## Define the new permissions to be added to the target app
$newResourceAccess = @{  
    ResourceAppId = $graphResourceId; 
    ResourceAccess = @( 

        ## Replace the following with values of ID and type for all permissions you want to configure for the app
        @{ 
            # User.Read scope (delegated permission) to sign-in and read user profile 
            id = "311a71cc-e848-46a1-bdf8-97ff7156d8e6";  
            type = "Scope"; 
        },

        @{ 
            # Application.Read.All app role (application permission) to view application data
            id = "3afa6a7d-9b1a-42eb-948e-1650a849e176"; 
            type = "Role"; 
        }
    ) 
}

$app = Get-MgApplication -ApplicationId $applicationId

## Get the existing permissions of the application
$existingResourceAccess = $app.RequiredResourceAccess

## If the app has no existing permissions, or no existing permissions from our new permissions resource
if ( ([string]::IsNullOrEmpty($existingResourceAccess) ) -or ($existingResourceAccess | Where-Object { $_.ResourceAppId -eq $graphResourceId } -eq $null) ) {
    $existingResourceAccess += $newResourceAccess
    Update-MgApplication -ApplicationId $applicationId -RequiredResourceAccess $existingResourceAccess
}

## If the app already has existing permissions from our new permissions resource
else {
    $newResourceAccess.ResourceAccess += $existingResourceAccess.ResourceAccess
    Update-MgApplication -ApplicationId $applicationId -RequiredResourceAccess $newResourceAccess
}
```