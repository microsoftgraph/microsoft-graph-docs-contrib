---
title: "Configure required Azure AD Graph permissions for an app registration"
description: "Before Azure AD Graph is retired, you can use these options to configure required permissions for your app registration."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: medium
ms.prod: "applications"
ms.date: 11/11/2022
---

# Configure required Azure AD Graph permissions for an app registration

Azure Active Directory (Azure AD) Graph is deprecated and will be retired in the near future. As part of this deprecation path, adding Azure AD Graph permissions to an app registration through the Azure portal is now disabled. We recommend that you follow the [App migration planning checklist](migrate-azure-ad-graph-planning-checklist.md) to help you transition your apps to [Microsoft Graph](/graph/overview) API.

However, your app might still temporarily require Azure AD Graph permissions to access resources. This article describes the following four methods for configuring required Azure AD Graph permissions for your app registration:

1. [Use the Azure portal to find the APIs your organization uses](#option-1-use-the-azure-portal-to-find-the-apis-your-organization-uses)
1. [Update the application manifest on the Azure portal](#option-2-update-the-application-manifest-on-the-azure-portal)
1. [Use the Microsoft Graph API](#option-3-use-the-microsoft-graph-api)
1. [Use the Microsoft Graph PowerShell SDK](#option-4-use-the-microsoft-graph-powershell-sdk)

> [!CAUTION]
> Any app using Azure AD Graph will still stop functioning after the Azure AD Graph API retirement. For more information, see [Migrate Azure AD Graph apps to Microsoft Graph](migrate-azure-ad-graph-overview.md).

## Option 1: Use the Azure portal to find the APIs your organization uses

1. Sign in to the [Azure portal](https://portal.azure.com) as a global administrator or application administrator.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the **App registrations** window, under the **All applications** tab, select the app for which you wish to add Azure AD Graph permissions. This opens the app registration's **Overview** pane.
1. From the left pane of the window, under the **Manage** menu group, select **API permissions**. This reveals the **Configured permissions** for your app registration. Select **Add a permission**.
1. In the **Request API permissions** window that's revealed, switch to the **APIs my organization uses** tab and search for `Windows Azure Active Directory` or `00000002-0000-0000-c000-000000000000`. Select from the filtered list to reveal the **Azure Active Directory Graph** permissions window.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/AzureADGraphPermissionsAPI.png" alt-text="Azure AD Graph API is identified by Windows Azure Active Directory and clientID 00000002-0000-0000-c000-000000000000." border="true":::

1. Select the **Delegated permissions** or **Application permissions** tab to choose from delegated and application permissions respectively. Select **Add permissions** to add the permission to your app registration.
1. After adding the permissions you need, back in the **Configured permissions** window, select **Grant admin consent** to grant the Azure AD Graph permissions to your app registration.

## Option 2: Update the application manifest on the Azure portal

1. Sign in to the [Azure portal](https://portal.azure.com) as a global administrator or application administrator.
1. Search for and select **Azure Active Directory**.
1. Under **Manage**, select **App registrations**.
1. In the **App registrations** window, under the **All applications** tab, select the app for which you wish to add Azure AD Graph permissions. This opens the app registration's **Overview** pane.
1. From the left pane of the window, under the **Manage** menu group, select **Manifest**. This opens up an editor that allows you to directly edit the attributes of the app registration object.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/AppRegistrationManifest.png" alt-text="An app registration Manifest file allows you to edit the attributes of your application." border="true":::

1. Carefully edit the **requiredResourceAccess** property in the app's manifest file to add the following details:
    >**Note:** You can edit the app manifest on the Azure portal or select **Download** to edit the manifest locally, and then use **Upload** to reapply it to your application.
+ Add the **resourceAppId** property and assign the value `00000002-0000-0000-c000-000000000000` representing Azure AD Graph
+ Add the **resourceAccess** property and assign the required permissions.

    The following JSON snippet shows a **requiredResourceAccess** property with Azure AD Graph as the resource, and assigned the *User.Read* and *Application.Read.All* oauth2PermissionScope (delegated permission) and appRole (application permission) respectively.    

    ```JSON
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
    ],
    ```

7. Save your changes.
8. Select **API permissions** and in the **Configured permissions** for your app registration, select **Grant admin consent** to grant the Azure AD Graph permissions to your app registration.

## Option 3: Use the Microsoft Graph API

The Microsoft Graph [application](/graph/api/resources/application) API includes a **requiredResourceAccess** property that is a collection of  [requiredResourceAccess](/graph/api/resources/requiredresourceaccess) objects. Use this property to configure required Azure AD Graph permissions as described in the following steps.

### Prerequisites

To complete the following steps, you need the following resources and privileges:

+ Run the HTTP requests in a tool of your choice, for example in your app, through [Graph Explorer](https://aka.ms/ge), or Postman.
+ Run the APIs as a user in a Global Administrator or Application Administrator role, or as owner of the target app registration. For more information about the actions supported by these roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).
+ The app used to make these changes must be granted the `Application.ReadWrite.All` permission.

### Step 1: Identify the permission IDs for the Azure AD Graph permissions your app requires

Identify the Azure AD Graph permissions your app requires, their permission IDs, and whether they're app roles (application permissions) or oauth2PermissionScopes (delegated permissions).

Azure AD Graph is identified as a servicePrincipal object with `00000002-0000-0000-c000-000000000000` as its globally unique appId and `Windows Azure Active Directory` as its **displayName** and **appDisplayName**. Run the following request to retrieve the service principal object for Azure AD Graph.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "migrate-azureadgraph-get-serviceprincipal-azureadgraph"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=appId eq '00000002-0000-0000-c000-000000000000'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/migrate-azureadgraph-get-serviceprincipal-azureadgraph-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/migrate-azureadgraph-get-serviceprincipal-azureadgraph-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/migrate-azureadgraph-get-serviceprincipal-azureadgraph-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/migrate-azureadgraph-get-serviceprincipal-azureadgraph-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/migrate-azureadgraph-get-serviceprincipal-azureadgraph-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/migrate-azureadgraph-get-serviceprincipal-azureadgraph-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

In the response object, details for Azure AD Graph application permissions are listed in the **appRoles** object while details for delegated permissions are listed in the **oauth2PermissionScopes** object.

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
            ],
            "oauth2PermissionScopes": [
                {
                    "adminConsentDescription": "Allows users to sign in to the app, and allows the app to read the profile of signed-in users. It also allow the app to read basic company information of signed-in users.",
                    "adminConsentDisplayName": "Sign in and read user profile",
                    "id": "311a71cc-e848-46a1-bdf8-97ff7156d8e6",
                    "isEnabled": true,
                    "type": "User",
                    "userConsentDescription": "Allows you to sign in to the app with your work account and let the app read your profile. It also allows the app to read basic company information.",
                    "userConsentDisplayName": "Sign you in and read your profile",
                    "value": "User.Read"
                }
            ]
        }
    ]
}
```

From the above truncated output, `311a71cc-e848-46a1-bdf8-97ff7156d8e6` is the permission ID for the *User.Read* delegated permission while `3afa6a7d-9b1a-42eb-948e-1650a849e176` is the permission ID for the *Application.Read.All* application permission.

### Step 2: Add required Azure AD Graph permissions to your app

The following example calls the [Update application](/graph/api/application-update) API to add the required Azure AD Graph permissions to an app registration identified by object ID `581088ba-83c5-4975-b8af-11d2d7a76e98`. From Step 1, these permissions were *User.Read* and *Application.Read.All* delegated permission and application permission respectively.

> [!IMPORTANT]
> To update the **requiredResourceAccess** property, you must pass in both existing and new permissions. Passing in only new permissions overwrites and removes the existing permissions.

#### Request


# [HTTP](#tab/http)
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/migrate-azureadgraph-update-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/migrate-azureadgraph-update-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/migrate-azureadgraph-update-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/migrate-azureadgraph-update-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/migrate-azureadgraph-update-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Step 3: Verify that the required Azure AD Graph permissions were added to your app

Verify that your app registration has the required Azure AD Graph API permissions you added in Step 2 by using the Microsoft Graph API or by checking the **App registrations** page in the Azure portal.

#### Use the Microsoft Graph GET /application/{id} API

The following request retrieves the **id** and **requiredResourceAccess** properties of the app identified by object **id** `581088ba-83c5-4975-b8af-11d2d7a76e98`.

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/applications/581088ba-83c5-4975-b8af-11d2d7a76e98?$select=id,requiredResourceAccess
```

>**Note:** Though you've configured the permissions the app requires, these permissions haven't been granted. Many permissions require admin consent before they can be used to access organizational data.

## Option 4: Use the Microsoft Graph PowerShell SDK

The [Update-MgApplication](/powershell/module/microsoft.graph.applications/update-mgapplication?view=graph-powershell-1.0&preserve-view=true) cmdlet in Microsoft Graph PowerShell SDK includes a **RequiredResourceAccess** parameter that is a collection of **IMicrosoftGraphRequiredResourceAccess** objects. Use this parameter to configure the required Azure AD Graph permissions as described in the following steps.

### Prerequisites

To complete the following steps, the following privileges are required:

+ An authenticated PowerShell session (for example, using `Connect-MgGraph`).
+ Microsoft Graph PowerShell must be granted the `Application.ReadWrite.All` permission.
+ The signed-in user must be granted the Global Administrator or Application Administrator Azure AD directory roles, or be owner of the target app registration. For more information about the actions supported by these roles, see [Azure AD built-in roles](/azure/active-directory/roles/permissions-reference).

### Step 1: Identify the permission IDs for the Azure AD Graph permissions your app requires

Identify the Azure AD Graph permissions your app requires, their permission IDs, and whether they're app roles (application permissions) or delegated permissions.

Azure AD Graph is identified as a ServicePrincipal object with `00000002-0000-0000-c000-000000000000` as its globally unique AppId and `Windows Azure Active Directory` as its **DisplayName** and **AppDisplayName**. Run the following request to retrieve the ServicePrincipal object for Azure AD Graph.

#### Request

Create a new PowerShell script named **fetchPermissions.ps1** and add the following code. This code retrieves Azure AD Graph permission IDs and types. The output displays and formats the output of the **AppRoles** and **Oauth2PermissionScopes** objects.

[!INCLUDE [fetchPermissions](includes/azure-ad-graph-migration-scripts/fetchpermissions.md)]

Run the script using the following command
```powershell
.\fetchPermissions.ps1
```

#### Response

The following is an example of the output.

[!INCLUDE [fetchPermissions-Response](includes/azure-ad-graph-migration-scripts/fetchpermissions-response.md)]

From this output, `311a71cc-e848-46a1-bdf8-97ff7156d8e6` is the permission ID of the *User.Read* delegated permission while `3afa6a7d-9b1a-42eb-948e-1650a849e176` is the permission ID of the *Application.Read.All* application permission.

### Step 2: Add Azure AD Graph permissions to your app

Create a new PowerShell script named **updatePermissions.ps1** and add the following code. This code adds the required Azure AD Graph permissions to an app registration identified by object ID `581088ba-83c5-4975-b8af-11d2d7a76e98`. From Step 1, these permissions were *User.Read* and *Application.Read.All* delegated permission and application permission respectively.

> [!IMPORTANT]
> To update the **RequiredResourceAccess** property, you must pass in both existing and new permissions. Passing in only new permissions overwrites and removes the existing permissions.

#### Request

# [Azure AD Graph permissions only](#tab/updatepermissions-azureadgraph-powershell)
[!INCLUDE [addAzureADPermissions](includes/azure-ad-graph-migration-scripts/azureadgraphpermissions.md)]
# [Azure AD and Microsoft Graph permissions](#tab/updatepermissions-azureadgraph-msgraph-powershell)
[!INCLUDE [addAzureAD+MicrosoftGraphPermissions](includes/azure-ad-graph-migration-scripts/azureadgraph-microsoftgraph-permissions.md)]

---

Run the script using the following command.
```powershell
.\updatePermissions.ps1
```

### Response

The following is an example of the output.

```powershell
Welcome To Microsoft Graph!
```

>**Note:** Though you've configured the permissions the app requires, these permissions haven't been granted. Many permissions require admin consent before they can be used to access organizational data.

## See also

+ [application API](/graph/api/resources/application)
+ [Update-MgApplication](/powershell/module/microsoft.graph.applications/update-mgapplication?view=graph-powershell-1.0&preserve-view=true)
+ [Grant permissions programmatically without interactive consent](/graph/permissions-grant-via-msgraph)
