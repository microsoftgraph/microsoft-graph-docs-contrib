---
title: "Use Microsoft Graph to assign Azure AD Graph permissions to an app"
description: "Use Microsoft Graph to assign Azure AD Graph permissions to an app."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.prod: "applications"
---

# Use Microsoft Graph to configure required Azure AD Graph permissions for an app registration

Azure Active Directory (Azure AD) Graph is deprecated and will be retired on June 30, 2022. As part of this deprecation journey, adding Azure AD Graph permissions to the required permissions for an app registration through the Azure portal is now disabled. We recommend that you follow the [App migration planning checklist](migrate-azure-ad-graph-planning-checklist.md) to help you transition your apps to the [Microsoft Graph](/graph/overview) API.

However, you may still need to add more Azure AD Graph permissions to your app. This article provides you with guidance for using Microsoft Graph to configure required permissions for Azure AD Graph to your app registration.

> [!CAUTION]
> Any app using Azure AD Graph will still stop functioning after June 30, 2022. For more information, see [Migrate Azure AD Graph apps to Microsoft Graph](migrate-azure-ad-graph-overview.md).

## Option 1: Use the Microsoft Graph API

The Microsoft Graph [application](/graph/api/resources/application) API includes a **requiredResourceAccess** property that is a collection of  [requiredResourceAccess](/graph/api/resources/requiredresourceaccess) objects. Use this property to configure required Azure AD Graph permissions following the steps below.

### Prerequisites

To complete the following steps, you need the following resources and privileges:

+ Run the HTTP requests in a tool of your choice, for example in your app, through [Graph Explorer](https://aka.ms/ge), or Postman.
+ Run the APIs as a user in a Global Administrator or Application Administrator role, or as owner of the target app registration. For more information about the actions supported by these roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).
+ The app used to make these changes must be granted the `Application.ReadWrite.All` permission.

<!---
## Hiding this because the PG doesn't want to publicize this workaround to retrieving all Azure AD Graph permissions.

### Step 1: Identify the permission ids for the Azure AD Graph permissions

Azure AD Graph is identified as a servicePrincipal object with globally unique appId `00000002-0000-0000-c000-000000000000` and `Windows Azure Active Directory` as its **displayName** and **appDisplayName**. To retrieve the Azure AD object using Microsoft Graph, call the /servicePrincipals API as follows:


#### Request: Retrieve the servicePrincipal object for Azure AD Graph

<!-- {
  "blockType": "request",
  "name": "migrate-azureadgraph-get-serviceprincipal-azureadgraph"
}-->

<!--
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=appId eq '00000002-0000-0000-c000-000000000000'
```

#### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->

<!--
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals",
    "value": [
        {
            "id": "1804a6f8-e623-4520-8f40-ba1b0c11c42d",
            "accountEnabled": true,
            "appDisplayName": "Windows Azure Active Directory",
            "appDescription": null,
            "appId": "00000002-0000-0000-c000-000000000000",
            "appOwnerOrganizationId": "f8cdef31-a31e-4b4a-93e4-5f571e91255a",
            "appRoleAssignmentRequired": false,
            "displayName": "Windows Azure Active Directory",
            "servicePrincipalNames": [
                "https://graph.windows.net",
                "00000002-0000-0000-c000-000000000000/graph.microsoftazure.us",
                "00000002-0000-0000-c000-000000000000/graph.windows.net",
                "00000002-0000-0000-c000-000000000000/directory.windows.net",
                "00000002-0000-0000-c000-000000000000",
                "https://graph.windows.net/",
                "https://graph.microsoftazure.us"
            ],
            "servicePrincipalType": "Application",
            "signInAudience": "AzureADMultipleOrgs",
            "appRoles": [
                {
                    "allowedMemberTypes": [
                        "Application"
                    ],
                    "description": "Allows the app to read applications and service principals without a signed-in user",
                    "displayName": "Read all applications",
                    "id": "3afa6a7d-9b1a-42eb-948e-1650a849e176",
                    "isEnabled": true,
                    "origin": "Application",
                    "value": "Application.Read.All"
                }
            ]
        }
    ]
}
```

The details of all Azure AD Graph permissions are indicated in the **appRoles** (application permissions) and **oauth2PermissionScopes** (delegated permissions) objects. From here
-->

### Step 1: Identify the permission IDs for the Azure AD Graph permissions you need for your app

First, identify the Azure AD Graph permissions you need to add, their permission id's, and their types (application permissions or delegated permissions). You can retrieve the id's from an existing app by reading its **requiredResourceAccess** property either in the app's **Manifest** on the Azure portal, or through Microsoft Graph API. Azure AD Graph's globally unique **appId** is `00000002-0000-0000-c000-000000000000` and it's identified by the **resourceAppId** property of the **requiredResourceAccess** object.

### Request

The following request retrieves Azure AD Graph permission IDs and types from an existing application identified by **id** `f7748341-825c-46e9-a111-5e3b56ae015b`.

<!-- {
  "blockType": "request",
  "name": "migrate-azureadgraph-get-serviceprincipal-azureadgraph"
}-->

```msgraph-interactive
https://graph.microsoft.com/v1.0/applications/f7748341-825c-46e9-a111-5e3b56ae015b?$select=requiredResourceAccess
```

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications(requiredResourceAccess)/$entity",
    "requiredResourceAccess": [
        {
            "resourceAppId": "00000002-0000-0000-c000-000000000000",
            "resourceAccess": [
                {
                    "id": "311a71cc-e848-46a1-bdf8-97ff7156d8e6",
                    "type": "Scope"
                },
                {
                    "id": "3afa6a7d-9b1a-42eb-948e-1650a849e176",
                    "type": "Role"
                }
            ]
        }
    ]
}
```

### Step 2: Add Azure AD Graph permissions to your app

The following example calls the [Update application](/graph/api/application-update) API to add the following Azure AD Graph permissions to an app identified by object id `581088ba-83c5-4975-b8af-11d2d7a76e98`:

+ *User.Read* delegated permission identified by object id `311a71cc-e848-46a1-bdf8-97ff7156d8e6`.
+ *Application.Read.All* application permission identified by object id `3afa6a7d-9b1a-42eb-948e-1650a849e176`.

> [!IMPORTANT]
> To update the requiredResourceAccess object, you must pass in both existing and new permissions. Passing in only new permissions overwrites and removes the existing permissions.

#### Request

<!-- {
  "blockType": "request",
  "name": "migrate-azureadgraph-update-application"
}-->
```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/applications/581088ba-83c5-4975-b8af-11d2d7a76e98
Content-Type: application/json

{
    "requiredResourceAccess": [
        {
            "resourceAppId": "00000002-0000-0000-c000-000000000000",
            "resourceAccess": [
                {
                    "id": "311a71cc-e848-46a1-bdf8-97ff7156d8e6",
                    "type": "Scope"
                },
                {
                    "id": "3afa6a7d-9b1a-42eb-948e-1650a849e176",
                    "type": "Role"
                }
            ]
        }
    ]
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Step 3: Verify that the Azure AD Graph permissions were added to your app

Verify that your app has the permissions you added in Step 2 by using the Microsoft Graph API or by checking the **App registrations** window on the Azure portal.

#### Use the Microsoft Graph GET /application/{id} API

The following request retrieves the **id** and **requiredResourceAccess** properties of the app identified by object **id** `581088ba-83c5-4975-b8af-11d2d7a76e98`.

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/applications/581088ba-83c5-4975-b8af-11d2d7a76e98?$select=id,requiredResourceAccess
```

Though you've granted the permissions you require, some permissions, for example, all application permissions, require admin consent before they can be used to access organizational data.

### Step 4: Grant admin consent for permissions that require admin consent

1. Sign in to the [Azure portal](https://portal.azure.com) as a user in one of the following Azure AD roles: Global Administrator, Privileged Role Administrator, Cloud Application Administrator, Application Administrator, or a custom role that includes the permission to grant permissions to apps.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the **App registrations** window, select the **All Applications** tab then select the application for which you added Azure AD Graph permissions.
1. From the left pane of the window, under **Manage**, select **API Permissions**.
1. In the **Configured permissions** section of the window, you should see the permissions you added in Step 2 above. If the permissions aren't listed, refresh your browser.
1. Carefully review the permissions that the application requires. To consent, select **Grant admin consent**.


## Option 2: Use Microsoft Graph PowerShell SDK

The [Update-MgApplication](/powershell/module/microsoft.graph.applications/update-mgapplication?view=graph-powershell-1.0&preserve-view=true) cmdlet in Microsoft Graph PowerShell includes a **RequiredResourceAccess** parameter that is a collection of **IMicrosoftGraphRequiredResourceAccess** objects. Use this parameter to assign Azure AD Graph permissions following the steps below.

### Prerequisites

To complete the following steps, your PowerShell app needs the following resources and privileges:

+ Be granted the Global Administrator or Application Administrator Azure AD roles. For more information about the actions supported by these roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).
+ Be assigned the `Application.ReadWrite.All` permission.
+ An authenticated PowerShell session.

### Step 1: Identify the permission id's for the Azure AD Graph permissions you need for your app

First, identify the Azure AD Graph permissions you need to add, their permission id's, and their types (application permissions or delegated permissions). You can retrieve the id's from an existing app by retrieving its **requiredResourceAccess** property either in the app's **Manifest** on the Azure portal, or through a PowerShell script.

### Request

Create a new PowerShell script named **fetchPermissions.ps1** and add the following code. This code retrieves Azure AD Graph permission IDs and types from an existing application identified by object ID `f7748341-825c-46e9-a111-5e3b56ae015b`. Replace `f7748341-825c-46e9-a111-5e3b56ae015b` with your source app's object ID.

```powershell
# Sign in with the required Application.ReadWrite.All scope
Connect-Graph -Scopes "Application.ReadWrite.All" 

## Replace f7748341-825c-46e9-a111-5e3b56ae015b with the object ID of the existing app; then read and output the permission id's and their types
$sourceAppId= 'f7748341-825c-46e9-a111-5e3b56ae015b' 
$sourceApp = Get-MgApplication -ApplicationId $sourceAppId 
$sourceApp.RequiredResourceAccess.ResourceAccess
```

Run the script using the following command
```powershell
.\fetchPermissions.ps1
```

### Response

The following is an example of the output.

```powershell
Id                                   Type
--                                   ----
311a71cc-e848-46a1-bdf8-97ff7156d8e6 Scope
3afa6a7d-9b1a-42eb-948e-1650a849e176 Role
```

From this output, `311a71cc-e848-46a1-bdf8-97ff7156d8e6` is the object id of the *User.Read* delegated permission while `3afa6a7d-9b1a-42eb-948e-1650a849e176` is the object id of the *Application.Read.All* application permission.

### Step 2: Add Azure AD Graph permissions to your app

Create a new PowerShell script named **updatePermissions.ps1** and add the following code. This code adds the required permissions to an app identified by the object id `581088ba-83c5-4975-b8af-11d2d7a76e98`. From Step 1, these permissions were *User.Read* and *Application.Read.All* delegated and application permissions respectively.

> [!IMPORTANT]
> To update the **RequiredResourceAccess** object, you must pass in both existing and new permissions. Passing in only new permissions overwrites and removes the existing permissions.

#### Request

```powershell
# Sign in with the required Application.ReadWrite.All scope
Connect-Graph -Scopes "Application.ReadWrite.All" 

## Replace 581088ba-83c5-4975-b8af-11d2d7a76e98 with the object ID of the app you wish to add new permisisons to
$applicationId = '581088ba-83c5-4975-b8af-11d2d7a76e98' 

$app = Get-MgApplication -ApplicationId $applicationId

## Azure AD Graph's globally unique appId is 00000002-0000-0000-c000-000000000000 identified by the ResourceAppId
$aadAccess = $app.RequiredResourceAccess | Where-Object { $_.ResourceAppId -eq '00000002-0000-0000-c000-000000000000' } 

if($null -eq $aadAccess){ 
    $app.RequiredResourceAccess += @{  
        ResourceAppId = "00000002-0000-0000-c000-000000000000"; 
        ResourceAccess = @( 

                ## Replace the following with values of id and type for all permissions - both new and existing permissions - you want to grant the app
                @{ 
                    # User.Read delegated permission Sign in and read user profile 
                    id = "311a71cc-e848-46a1-bdf8-97ff7156d8e6";  
                    type = "Scope"; 
                }, 
                @{ 
                    # Application.Read.All app-only permission to view application data
                    id = "3afa6a7d-9b1a-42eb-948e-1650a849e176"; 
                    type = "Role"; 
                }
            ) 
     } 
} 

Update-MgApplication -ApplicationId $applicationId -RequiredResourceAccess $app.RequiredResourceAccess 
```

Run the script using the following command.
```powershell
.\updatePermissions.ps1
```

### Response

The following is an example of an output that verifies the permissions granted to the app.

```powershell
Welcome To Microsoft Graph!
```

Though you've granted the permissions you require, some permissions, for example, all application permissions, require admin consent before they can be used to access organizational data.

### Step 3: Grant admin consent for permissions that require admin consent

1. Sign in to the [Azure portal](https://portal.azure.com) as a user in one of the following Azure AD roles: Global Administrator, Privileged Role Administrator, Cloud Application Administrator, Application Administrator, or a custom role that includes the permission to grant permissions to apps.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the **App registrations** window, select the **All Applications** tab then select the application for which you added Azure AD Graph permissions.
1. From the left pane of the window, under **Manage**, select **API Permissions**.
1. In the **Configured permissions** section of the window, you should see the permissions you added in Step 2 above. If the permissions aren't listed, refresh your browser.
1. Carefully review the permissions that the application requires. To consent, select **Grant admin consent**.

## See also

+ [application API](/graph/api/resources/application)
+ [Update-MgApplication](/powershell/module/microsoft.graph.applications/update-mgapplication?view=graph-powershell-1.0&preserve-view=true)