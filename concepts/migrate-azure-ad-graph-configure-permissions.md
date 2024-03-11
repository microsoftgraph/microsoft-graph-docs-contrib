---
title: "Configure Azure AD Graph permissions for an app registration"
description: "Before Azure AD Graph is retired, you can use these options to configure Azure AD Graph permissions for an app registration."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: dkershaw
ms.localizationpriority: medium
ms.subservice: "entra-applications"
ms.topic: how-to
zone_pivot_groups: configure-azure-ad-graph-permissions
ms.date: 12/19/2023
#customer intent: As an app developer, I want to grant Azure AD Graph permissions to my app registration, so that my app can continue to function while I plan for migration from Azure AD Graph to Microsoft Graph.
---

# Configure Azure AD Graph permissions for an app registration

Azure Active Directory (Azure AD) Graph [is deprecated and is in its retirement path](https://techcommunity.microsoft.com/t5/microsoft-entra-blog/important-azure-ad-graph-retirement-and-powershell-module/ba-p/3848270). We recommend that you follow the [App migration planning checklist](migrate-azure-ad-graph-planning-checklist.md) to help you migrate your apps to [Microsoft Graph](/graph/overview).

Your app might still temporarily require Azure AD Graph permissions to access resources. You can follow one of four methods described in this article to configure Azure AD Graph permissions for your app registration:

1. [Use the Microsoft Entra admin center to find the APIs your organization uses](/graph/migrate-azure-ad-graph-configure-permissions?pivots=entra-portal-app-manifest#use-the-microsoft-entra-admin-center-to-find-the-apis-your-organization-uses)
1. [Update the application manifest on the Microsoft Entra admin center](/graph/migrate-azure-ad-graph-configure-permissions?pivots=entra-portal-app-manifest#update-the-application-manifest-on-the-microsoft-entra-admin-center)
1. [Use the Microsoft Graph applications API](/graph/migrate-azure-ad-graph-configure-permissions?pivots=entra-portal-app-manifest#use-the-microsoft-graph-applications-api)
<!--1. [Use the Microsoft Graph PowerShell SDK](#option-4-use-the-microsoft-graph-powershell-sdk)-->

> [!CAUTION]
> Any app using Azure AD Graph will still stop functioning after the API is retired. For more information, see [Migrate Azure AD Graph apps to Microsoft Graph](migrate-azure-ad-graph-overview.md).

## Prerequisites

The steps in this article require two sets of privileges:

- Privileges to add permissions to an app registration
- Privileges to grant those permissions to the app registration. 

A user with the *Global Administrator* role can do both, while a user with the *Application Administrator* or *Cloud Application Administrator* role can only add the permissions. To help you enforce separation of duties and least privilege access, separate the tasks of adding permissions and granting permissions to different users. For more information about the actions supported by these roles, see [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json).

<!-- start the msgraph page-->
::: zone pivot="msgraph"

In addition, you need the following resources and privileges:

- Sign in to an API client such as [Graph Explorer](https://aka.ms/ge) to run the HTTP requests.
- The app used to make these changes must be granted the `Application.ReadWrite.All` permission.

## Use the Microsoft Graph applications API

The Microsoft Graph [application object](/graph/api/resources/application) includes a **requiredResourceAccess** property that is a collection of objects with information about the resource API and permissions. Use this property to configure Azure AD Graph permissions as described in the following steps.

### Step 1: Identify the permission IDs for the Azure AD Graph permissions your app requires

Identify the Azure AD Graph permissions your app requires, their permission IDs, and whether they're app roles (application permissions) or oauth2PermissionScopes (delegated permissions). For more information, see [Azure AD Graph permissions reference](./migrate-azure-ad-graph-permissions-differences.md).

Azure AD Graph is identified as a servicePrincipal object with `00000002-0000-0000-c000-000000000000` as its globally unique **appId** and `Windows Azure Active Directory` as its **displayName** and **appDisplayName**. Run the following request to retrieve the service principal object for Azure AD Graph in your tenant.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/migrate-azureadgraph-get-serviceprincipal-azureadgraph-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/migrate-azureadgraph-get-serviceprincipal-azureadgraph-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/migrate-azureadgraph-get-serviceprincipal-azureadgraph-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/migrate-azureadgraph-get-serviceprincipal-azureadgraph-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/migrate-azureadgraph-get-serviceprincipal-azureadgraph-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/migrate-azureadgraph-get-serviceprincipal-azureadgraph-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/migrate-azureadgraph-get-serviceprincipal-azureadgraph-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/migrate-azureadgraph-get-serviceprincipal-azureadgraph-python-snippets.md)]
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

From the preceding truncated output, `311a71cc-e848-46a1-bdf8-97ff7156d8e6` is the permission ID for the *User.Read* delegated permission while `3afa6a7d-9b1a-42eb-948e-1650a849e176` is the permission ID for the *Application.Read.All* application permission in Azure AD Graph.

### Step 2: Add Azure AD Graph permissions to your app

The following example calls the [Update application](/graph/api/application-update) API to add the Azure AD Graph *User.Read* and *Application.Read.All* delegated and application permissions to an app registration identified by object ID `581088ba-83c5-4975-b8af-11d2d7a76e98`.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/migrate-azureadgraph-update-application-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/migrate-azureadgraph-update-application-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/migrate-azureadgraph-update-application-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/migrate-azureadgraph-update-application-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/migrate-azureadgraph-update-application-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/migrate-azureadgraph-update-application-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/migrate-azureadgraph-update-application-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/migrate-azureadgraph-update-application-python-snippets.md)]
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

### Step 3: Verify the Azure AD Graph permissions were added to your app

Verify that your app registration has the Azure AD Graph API permissions you added in Step 2 by:

1. Calling the Microsoft Graph GET /application/{id} endpoint and reading the **requiredResourceAccess** property as follows:

    ```msgraph-interactive
    GET https://graph.microsoft.com/v1.0/applications/581088ba-83c5-4975-b8af-11d2d7a76e98?$select=id,requiredResourceAccess
    ```

2. Checking the **App registrations** page in the Microsoft Entra admin center.

### Step 4: Grant admin consent

Though you added Azure AD Graph permissions, you haven't granted these permissions to the app. Many permissions require admin consent before they can be used to access organizational data. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) as a global administrator and grant admin consent for the permissions to the app registration.

## Grant API permissions without using the consent prompt

When using Microsoft Graph and any related SDKs, you can grant permissions to an app registration without the need to use the Microsoft Entra admin center and selecting the *Grant admin consent for [Company]* button on the API permissions page. For more information, see [Grant or revoke API permissions programmatically](permissions-grant-via-msgraph.md).

::: zone-end

<!-- end the msgraph page -->
<!-- start the entra-portal-api-permissions page -->
::: zone pivot="entra-portal-api-permissions"

## Use the Microsoft Entra admin center to find the APIs your organization uses

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com).
1. Expand **Identity** > **Applications** > select **App registrations**.
1. In the **App registrations** window, under the **All applications** tab, select the app that you want to add Azure AD Graph permissions to.
1. From the left pane of the window, under the **Manage** menu group, select **API permissions**. In the **Configured permissions** window, select **Add a permission**.
1. In the **Request API permissions** window, switch to the **APIs my organization uses** tab and search for `Windows Azure Active Directory` or `00000002-0000-0000-c000-000000000000`. Select from the filtered result set to reveal the **Azure Active Directory Graph** permissions window.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/AzureADGraphPermissionsAPI.png" alt-text="Azure AD Graph API is named Windows Azure Active Directory and has clientID 00000002-0000-0000-c000-000000000000." border="true":::

1. Select the **Delegated permissions** or **Application permissions** tab to choose from the list of delegated and application permissions respectively. Select **Add permissions** to add the permission to your app registration.
1. After adding the permissions you need, back in the **Configured permissions** window, select **Grant admin consent** to grant the Azure AD Graph permissions to your app registration.

::: zone-end

<!-- end the entra-portal-api-permissions page -->
<!-- start the entra-portal-app-manifest page -->
::: zone pivot="entra-portal-app-manifest"

## Update the application manifest on the Microsoft Entra admin center

1. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com).
2. Expand the **Identity** menu > **Applications** > select **App registrations**.
3. In the **App registrations** window, under the **All applications** tab, select the app that you want to add Azure AD Graph permissions to.
4. In the left pane of the window, under the **Manage** menu group, select **Manifest** to open up an editor that allows you to directly edit the attributes of the app registration object.

    :::image type="content" source="/graph/images/aadgraph-to-msgraph-migration/AppRegistrationManifest.png" alt-text="An app registration Manifest file allows you to edit the attributes of your application." border="true":::

5. Carefully edit the **requiredResourceAccess** property in the app's manifest to add the following details:

    > [!TIP]
    > A. You can edit the app manifest on the Microsoft Entra admin center or select **Download** to edit the manifest locally, and then use **Upload** to reapply it to your application.
    >
    > B. To learn more about how to configure the **requiredResourceAccess** property, see [requiredResourceAccess resource type](/graph/api/resources/requiredresourceaccess).
    >
    > C. Refer to the [Azure AD Graph permissions reference](./migrate-azure-ad-graph-permissions-differences.md) for details of Azure AD Graph permission names, IDs, and types.

    5.1. If the app isn't assigned any Azure AD Graph permissions, add the **resourceAppId** property and assign the value `00000002-0000-0000-c000-000000000000` representing Azure AD Graph.

    5.2. Add the **resourceAccess** property and configure the permissions.

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

6. Save your changes.

7. Back under the **Manage** menu group, select **API permissions** and in the **Configured permissions** for your app registration, select **Grant admin consent** to grant the Azure AD Graph permissions to your app registration.

::: zone-end

<!-- end the entra-portal-api-permissions page -->
<!-- Hide PS steps because PS snippets are now available on the samples in the MS Graph page

## Use the Microsoft Graph PowerShell SDK

The [Update-MgApplication](/powershell/module/microsoft.graph.applications/update-mgapplication?view=graph-powershell-1.0&preserve-view=true) cmdlet in Microsoft Graph PowerShell SDK includes a **RequiredResourceAccess** parameter that is a collection of **IMicrosoftGraphRequiredResourceAccess** objects. Use this parameter to configure the Azure AD Graph permissions as described in the following steps.

### Prerequisites

To complete the following steps, you require the following privileges:

+ An authenticated PowerShell session (for example, using `Connect-MgGraph`).
+ Microsoft Graph PowerShell must be granted the `Application.ReadWrite.All` permission.
+ The signed-in user must have at least the *Application Administrator* role, or be owner of the target app registration.

### Step 1: Identify the permission IDs for the Azure AD Graph permissions your app requires

Identify the Azure AD Graph permissions your app requires, their permission IDs, and whether they're app roles (application permissions) or delegated permissions.

Azure AD Graph is identified as a ServicePrincipal object with `00000002-0000-0000-c000-000000000000` as its globally unique AppId and `Windows Azure Active Directory` as its **DisplayName** and **AppDisplayName**. Run the following request to retrieve the ServicePrincipal object for Azure AD Graph.

#### Request

Create a new PowerShell script named **fetchPermissions.ps1** and add the following code. This code retrieves Azure AD Graph permission IDs and types. The output displays and formats the output of the **AppRoles** and **Oauth2PermissionScopes** objects.

[!INCLUDE [fetchPermissions](includes/azure-ad-graph-migration-scripts/fetchpermissions.md)]

The following command runs the script.
```powershell
.\fetchPermissions.ps1
```

#### Response

The following example shows the output.

[!INCLUDE [fetchPermissions-Response](includes/azure-ad-graph-migration-scripts/fetchpermissions-response.md)]

From this output, `311a71cc-e848-46a1-bdf8-97ff7156d8e6` is the permission ID of the *User.Read* delegated permission while `3afa6a7d-9b1a-42eb-948e-1650a849e176` is the permission ID of the *Application.Read.All* application permission.

### Step 2: Add Azure AD Graph permissions to your app

Create a new PowerShell script named **updatePermissions.ps1** and add the following code. This code adds Azure AD Graph permissions to an app registration identified by object ID `581088ba-83c5-4975-b8af-11d2d7a76e98`. From Step 1, these permissions were *User.Read* and *Application.Read.All* delegated permission and application permission respectively.

> [!IMPORTANT]
> To update the **RequiredResourceAccess** property, you must pass in both existing and new permissions. Passing in only new permissions overwrites and removes the existing permissions.

#### Request

# [Azure AD Graph permissions only](#tab/updatepermissions-azureadgraph-powershell)
[!INCLUDE [addAzureADPermissions](includes/azure-ad-graph-migration-scripts/azureadgraphpermissions.md)]
# [Azure AD Graph and Microsoft Graph permissions](#tab/updatepermissions-azureadgraph-msgraph-powershell)
[!INCLUDE [addAzureAD+MicrosoftGraphPermissions](includes/azure-ad-graph-migration-scripts/azureadgraph-microsoftgraph-permissions.md)]

---

The following command runs the script.
```powershell
.\updatePermissions.ps1
```

### Response

The following example shows the output.

```powershell
Welcome To Microsoft Graph!
```

#### Step 4: Grant admin consent

Though you added Azure AD Graph permissions, you haven't granted these permissions to the app. Many permissions require admin consent before they can be used to access organizational data. Sign in to the [Microsoft Entra admin center](https://entra.microsoft.com) as a global administrator and grant admin consent for the permissions to the app registration.

## Grant API permissions without using the consent prompt

When using Microsoft Graph and any related SDKs, you can grant permissions to an app registration without the need to use the Microsoft Entra admin center and selecting the *Grant admin consent for [Company]* button on the API permissions page. For more information, see [Grant or revoke API permissions programmatically](permissions-grant-via-msgraph.md).
-->

## Related content

- [application object](/graph/api/resources/application)
- [Grant permissions programmatically without interactive consent](/graph/permissions-grant-via-msgraph)
- [Azure AD Graph permissions reference](./migrate-azure-ad-graph-permissions-differences.md)
