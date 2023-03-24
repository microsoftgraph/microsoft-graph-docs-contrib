---
description: "updatePermissions.ps1 script - add only Azure AD Graph permissions"
---

```powershell
## Sign in with the required Application.ReadWrite.All scope
Connect-MgGraph -Scopes "Application.ReadWrite.All" 

## Azure AD Graph's globally unique appId is 00000002-0000-0000-c000-000000000000 identified by the ResourceAppId
$AzureADGraphAppId = "00000002-0000-0000-c000-000000000000"
$MicrosoftGraphAppId = "00000003-0000-0000-c000-000000000000"

## Replace a05f9f7f-4377-4915-bbd0-5fe8f9517046 with the object ID of the app you wish to add new permissions to
$clientObjectId = "a05f9f7f-4377-4915-bbd0-5fe8f9517046" 

## Define the new Azure Graph permissions to be added to the target client
$newAzureADGraphPermissions = @{  
    ResourceAppId  = $AzureADGraphAppId; 
    ResourceAccess = @( 

        ## Replace the following with values of ID and type for all Azure AD Graph permissions you want to configure for the app
        @{ 
            # User.Read scope (delegated permission) to sign-in and read user profile 
            id   = "311a71cc-e848-46a1-bdf8-97ff7156d8e6";  
            type = "Scope"; 
        },

        @{ 
            # Application.Read.All app role (application permission) to view application data
            id   = "3afa6a7d-9b1a-42eb-948e-1650a849e176"; 
            type = "Role"; 
        }
    )
}

## Define the new Microsoft Graph permissions to be added to the target client
$newMicrosoftGraphPermissions = @{  
    ResourceAppID  = $MicrosoftGraphAppId;
    ResourceAccess = @(

        ## Replace the following with values of ID and type for all Microsoft Graph permissions you want to configure for the app
        @{
            # User.Read scope (delegated permission) to sign-in and read user profile 
            id   = "e1fe6dd8-ba31-4d61-89e7-88639da4683d";
            type = "Scope"
        },
        @{
            # Application.Read.All app role (application permission) to view application data
            id   = "9a5d68dd-52b0-4cc2-bd40-abcf44ac3a30";
            type = "Role";
        }
    )
}


$clientApp = Get-MgApplication -ApplicationId $clientObjectId

## Get the existing permissions of the application
$existingResourceAccess = $clientApp.RequiredResourceAccess

## If the app has no existing permissions, or no existing permissions from our new permissions resource
if ( ([string]::IsNullOrEmpty($existingResourceAccess) ) -or ($existingResourceAccess | Where-Object { $_.ResourceAppId -eq $AzureADGraphAppId } -eq $null) ) {
    $existingResourceAccess += $newAzureADGraphPermissions
    if ($existingResourceAccess | Where-Object { $_.ResourceAppId -eq $MicrosoftGraphAppId } -eq $null) {
        $existingResourceAccess += $newMicrosoftGraphPermissions
        Update-MgApplication -ApplicationId $clientObjectId -RequiredResourceAccess $existingResourceAccess
    }
    else {
        ## If the app already has existing permissions from our new permissions resource
        $existingResourceAccess = $existingResourceAccess + $newAzureADGraphPermissions + $newMicrosoftGraphPermissions
        Update-MgApplication -ApplicationId $clientObjectId -RequiredResourceAccess $existingResourceAccess
    }
}
```