---
title: "Assign Azure AD Graph permissions to an app through Microsoft Graph"
description: "Assign Azure AD Graph permissions to an app through Microsoft Graph."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.prod: "applications"
---

# Assign Azure Active Directory (Azure AD) Graph permissions to an app through Microsoft Graph

Azure AD Graph is deprecated and will be retired on June 30, 2022. As part of this deprecation path, adding Azure AD Graph permissions to an app through the Azure portal is now disabled. We recommend that you follow the [App migration planning checklist](migrate-azure-ad-graph-planning-checklist.md) to help you transition your apps to the Microsoft Graph API.

However, you may still need to add more Azure AD Graph permissions to your app. This article provides you with guidance for using Microsoft Graph to add Azure AD Graph permissions to your app.

## Option 1: Use the Microsoft Graph REST API

The Microsoft Graph [application](/graph/api/resources/application) API includes a **requiredResourceAccess** property that is a collection of  [requiredResourceAccess](/graph/api/resources/requiredresourceaccess)objects. Use this property to assign Azure AD Graph permissions following the steps below.

### Prerequisites

To complete the following steps, you need the following resources and privileges:

+ Run the HTTP requests in a tool of your choice, for example in your app, through [Graph Explorer](aka.ms/ge), or Postman.
+ Run the APIs as a user in a Global Administrator or Application Administrator role. For more information about the actions supported by these roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference#application-administrator).
+ Be assigned the `Application.ReadWrite.All` permission.

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

### Step 1: Identify the permission id's for the Azure AD Graph permissions you need for your app

First, identify the Azure AD Graph permissions you need to add, their permission id's, and their types (application permissions or delegated permissions). You can retrieve the id's from an existing app by reading its **requiredResourceAccess** property either in the app's **Manifest** on the Azure portal, or through Microsoft Graph API.

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

The following example calls the [Update application](/graph/api/application-update) API to add an Azure AD Graph permission to an app. In this example, we'll add the following permissions to an app identified by the object id `581088ba-83c5-4975-b8af-11d2d7a76e98`:

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

#### View the permissions on the Azure portal

1. Sign in to the [Azure portal](https://portal.azure.com) as a global administrator.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the **App registrations** window, select the **All Applications** tab then select the application for which you added Azure AD Graph permissions.
1. From the left pane of the window, under **Manage**, select **API Permissions**.
1. In the **Configured permissions** section of the window, you should see the permissions you added in Step 2 above. If the permissions aren't listed, refresh your browser.


### Step 4: Grant admin consent for permissions that require admin consent

1. Sign in to the [Azure portal](https://portal.azure.com) as a user in one of the following roles: Global Administrator, Privileged Role Administrator, Cloud Application Administrator, Application Administrator, or a custom role that includes the permission to grant permissions to applications.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the **App registrations** window, select the **All Applications** tab then select the application for which you added Azure AD Graph permissions.
1. From the left pane of the window, under **Manage**, select **API Permissions**.
1. In the **Configured permissions** section of the window, you should see the permissions you added in Step 2 above. If the permissions aren't listed, refresh your browser.
1. Carefully review the permissions that the application requires. To consent, select **Grant admin consent**.


## Option 2: Use Microsoft Graph PowerShell SDK

Run the following PowerShell script that uses the **Update-MgApplication** cmdlet to add Azure AD Graph permissions.

```powershell-interactive

Connect-Graph -Scopes "Application.ReadWrite.All" 

$applicationId = '<ObjId>' 

$app = Get-MgApplication -ApplicationId $applicationId 

$aadAccess = $app.RequiredResourceAccess | Where-Object { $_.resourceAppId -eq '00000002-0000-0000-c000-000000000000' } 

if($null -eq $aadAccess){ 

    $app.RequiredResourceAccess += @{  

        resourceAppId = "00000002-0000-0000-c000-000000000000"; 

        resourceAccess = @( 

                @{ 

                    # Sign in and read user profile 

                    id = "311a71cc-e848-46a1-bdf8-97ff7156d8e6";  

                    type = "Scope"; 

                }, 

                @{ 

                    # Read directory data 

                    id = "5778995a-e1bf-45b8-affa-663a9f3f4d04"; 

                    type = "Scope"; 

                } 

            ) 

     } 

} 

Update-MgApplication -ApplicationId $applicationId -RequiredResourceAccess $app.RequiredResourceAccess 

```

## See also

+ [application API](/graph/api/resources/application)
+ [Update-MgApplication](powershell/module/microsoft.graph.applications/update-mgapplication?view=graph-powershell-1.0)