---
title: "Grant or revoke API permissions programmatically"
description: "Learn how to use Microsoft Graph to grant and revoke API permissions for an app without interactive admin consent."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: psignoret, jackson.woods
ms.localizationpriority: medium
ms.subservice: entra-applications
zone_pivot_groups: grant-api-permissions
ms.topic: how-to
ms.date: 04/25/2025
#Customer intent: As a developer, I want to learn how to grant and revoke API permissions for an app using Microsoft Graph, and bypass the interactive consent prompt available on the Microsoft Entra portal.
---

# Grant or revoke API permissions programmatically

Granting API permissions to a client app in Microsoft Entra ID records the permission grants as objects that you read, update, or delete like any other data. You can use Microsoft Graph to grant or revoke API permissions for an app. This method avoids [interactive admin consent](/azure/active-directory/manage-apps/consent-and-permissions-overview) and is useful for automation or bulk management.

<!-- start the grant-application-permissions zone -->
::: zone pivot="grant-application-permissions"

[Application permissions](permissions-overview.md#application-permissions), also called *app roles* or *direct access permissions*, let an app call an API using its own identity. Follow these steps to grant or revoke app roles.

> [!CAUTION]
> Be careful! Permissions granted programmatically aren't subject to review or confirmation and take effect immediately.

## Prerequisites

To complete these instructions, you need:

- A Microsoft Entra tenant.
- To run the requests in this article in a delegated context. Complete these steps:
    - Sign in to an API client like [Graph Explorer](https://aka.ms/ge) as a user with privileges to create applications in the tenant. The privileges to create permission grants can be limited or controlled in your tenant through admin-configured [app consent policies](/entra/identity/enterprise-apps/manage-app-consent-policies).
    - In the app you're signed in to, consent to the *Application.Read.All* and *AppRoleAssignment.ReadWrite.All* delegated permissions for the signed-in user. You don't need to consent on behalf of your organization.
- Get the object ID of the client service principal to which you grant app roles. In this article, the client service principal is identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`. In the Microsoft Entra admin center, expand **Identity** > **Applications** > **Enterprise applications** > **App applications** to find the client service principal. Select it and on the **Overview** page, copy the Object ID value.

> [!CAUTION]
> Only appropriate users should access apps granted the *AppRoleAssignment.ReadWrite.All* permission.

## Step 1: Get the app roles of the resource service principal

First, find the app roles exposed by the resource service principal. App roles are defined in the **appRoles** object of the service principal. This article uses the Microsoft Graph service principal in your tenant as the resource service principal.

### Request

The following request retrieves the app roles defined by the Microsoft Graph service principal in the tenant.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-approles-for-microsoftgraph"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=displayName eq 'Microsoft Graph'&$select=id,displayName,appId,appRoles
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/get-approles-for-microsoftgraph-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/get-approles-for-microsoftgraph-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/get-approles-for-microsoftgraph-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/get-approles-for-microsoftgraph-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/get-approles-for-microsoftgraph-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/get-approles-for-microsoftgraph-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/get-approles-for-microsoftgraph-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/get-approles-for-microsoftgraph-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals(id,displayName,appId,appRoles)",
    "value": [
        {
            "id": "7ea9e944-71ce-443d-811c-71e8047b557a",
            "displayName": "Microsoft Graph",
            "appId": "00000003-0000-0000-c000-000000000000",
            "appRoles": [
                {
                    "allowedMemberTypes": [
                        "Application"
                    ],
                    "description": "Allows the app to read user profiles without a signed in user.",
                    "displayName": "Read all users' full profiles",
                    "id": "df021288-bdef-4463-88db-98f22de89214",
                    "isEnabled": true,
                    "origin": "Application",
                    "value": "User.Read.All"
                }
            ]
        }
    ]
}
```

## Step 2: Grant an app role to a client service principal

In this step, grant your app an app role that's exposed by Microsoft Graph, resulting in an **app role assignment**. From Step 1, the object ID of Microsoft Graph is `7ea9e944-71ce-443d-811c-71e8047b557a`, and the app role `User.Read.All` is identified by ID `df021288-bdef-4463-88db-98f22de89214`. 

### Request

The following request grants your client app (the principal of ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`) an app role of ID `df021288-bdef-4463-88db-98f22de89214` that's exposed by a resource service principal of ID `7ea9e944-71ce-443d-811c-71e8047b557a`.

> [!NOTE] 
> If you use the Python SDK, import the following libraries:
> ```
> from msgraph.generated.models.app_role_assignment import AppRoleAssignment
> from msgraph.generated.models.service_principal import ServicePrincipal
> ```

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "grant-approles-using-approleassignedto"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/servicePrincipals/7ea9e944-71ce-443d-811c-71e8047b557a/appRoleAssignedTo
Content-Type: application/json

{
    "principalId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
    "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a",
    "appRoleId": "df021288-bdef-4463-88db-98f22de89214"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/grant-approles-using-approleassignedto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/grant-approles-using-approleassignedto-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/grant-approles-using-approleassignedto-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/grant-approles-using-approleassignedto-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/grant-approles-using-approleassignedto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/grant-approles-using-approleassignedto-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/grant-approles-using-approleassignedto-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/grant-approles-using-approleassignedto-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('7ea9e944-71ce-443d-811c-71e8047b557a')/appRoleAssignedTo/$entity",
    "id": "47nZsM8O_UuNq5Jz3QValCxBBiqJea9Drc9CMK4Ru_M",
    "deletedDateTime": null,
    "appRoleId": "df021288-bdef-4463-88db-98f22de89214",
    "createdDateTime": "2022-05-18T15:37:21.8215423Z",
    "principalDisplayName": "My application",
    "principalId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
    "principalType": "ServicePrincipal",
    "resourceDisplayName": "Microsoft Graph",
    "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a"
}
```

### Confirm the app role assignment

Verify the principals with role assignments to the resource service principal by running the following request.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-approles-for-sp-approleassignedto"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals/7ea9e944-71ce-443d-811c-71e8047b557a/appRoleAssignedTo
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/get-approles-for-sp-approleassignedto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/get-approles-for-sp-approleassignedto-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/get-approles-for-sp-approleassignedto-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/get-approles-for-sp-approleassignedto-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/get-approles-for-sp-approleassignedto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/get-approles-for-sp-approleassignedto-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/get-approles-for-sp-approleassignedto-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/get-approles-for-sp-approleassignedto-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The response object includes a collection of app role assignments to your resource service principal and includes the app role assignment you created in the preceding request.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignment"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('7ea9e944-71ce-443d-811c-71e8047b557a')/appRoleAssignedTo",
    "value": [
        {
            "id": "47nZsM8O_UuNq5Jz3QValCxBBiqJea9Drc9CMK4Ru_M",
            "deletedDateTime": null,
            "appRoleId": "df021288-bdef-4463-88db-98f22de89214",
            "createdDateTime": "2022-05-18T15:37:21.8997216Z",
            "principalDisplayName": "My application",
            "principalId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
            "principalType": "ServicePrincipal",
            "resourceDisplayName": "Microsoft Graph",
            "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a"
        }
    ]
}
```

## Step 3: Revoke an app role assignment from a client service principal

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "revoke-approles-using-approleassignedto"
}-->
```msgraph-interactive
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/7ea9e944-71ce-443d-811c-71e8047b557a/appRoleAssignedTo/47nZsM8O_UuNq5Jz3QValCxBBiqJea9Drc9CMK4Ru_M
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/revoke-approles-using-approleassignedto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/revoke-approles-using-approleassignedto-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/revoke-approles-using-approleassignedto-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/revoke-approles-using-approleassignedto-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/revoke-approles-using-approleassignedto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/revoke-approles-using-approleassignedto-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/revoke-approles-using-approleassignedto-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/revoke-approles-using-approleassignedto-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Related content

+ [Grant app roles using Microsoft Graph PowerShell](/powershell/microsoftgraph/tutorial-grant-app-only-api-permissions)
+ Learn more about the [appRoleAssignment resource type](/graph/api/resources/approleassignment).

::: zone-end

<!-- end the grant-application-permissions zone -->
<!-- start the grant-delegated-permissions zone -->

::: zone pivot="grant-delegated-permissions"

[Delegated permissions](permissions-overview.md#delegated-permissions), also called *app roles* or *OAuth2 permissions*, let an app call an API on behalf of a signed-in user. Follow these steps to grant or revoke delegated permissions.

> [!CAUTION]
> Be careful! Permissions granted programmatically aren't subject to review or confirmation. They take effect immediately.

## Prerequisites

To complete these instructions, you need:

- A valid Microsoft Entra tenant.
- To run the requests in this article as a user. Complete these steps:
    - Sign in to an API client like [Graph Explorer](https://aka.ms/ge) as a user with the *Cloud Application Administrator* Microsoft Entra role. This role is the least privileged role for creating applications and granting consent to delegated permissions in the tenant. The privileges to create permission grants can be limited or controlled in your tenant through admin-configured [app consent policies](/entra/identity/enterprise-apps/manage-app-consent-policies).
    - In the app you're signed in to, consent to the *Application.Read.All* and *DelegatedPermissionGrant.ReadWrite.All* delegated permissions for the signed-in user. You don't need to consent on behalf of your organization.
    - Get the object ID of the client service principal to which you grant delegated permissions on behalf of a user. In this article, the client service principal is identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`. In the Microsoft Entra admin center, expand **Identity** > **Applications** > **Enterprise applications** > **App applications** to find the client service principal. Select it and on the **Overview** page, copy the Object ID value.

> [!CAUTION]
> Only appropriate users should access apps granted the *DelegatedPermissionGrant.ReadWrite.All* permission.

## Step 1: Get delegated permissions of the resource service principal

First, find the delegated permissions exposed by the resource service principal. Delegated permissions are defined in the **oauth2PermissionScopes** object of the service principal. This article uses the Microsoft Graph service principal in your tenant as the resource service principal.

### Request

This request retrieves the delegated permissions defined by the Microsoft Graph service principal in the tenant.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-scopes-for-microsoftgraph"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=displayName eq 'Microsoft Graph'&$select=id,displayName,appId,oauth2PermissionScopes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/get-scopes-for-microsoftgraph-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/get-scopes-for-microsoftgraph-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/get-scopes-for-microsoftgraph-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/get-scopes-for-microsoftgraph-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/get-scopes-for-microsoftgraph-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/get-scopes-for-microsoftgraph-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/get-scopes-for-microsoftgraph-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/get-scopes-for-microsoftgraph-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals(id,displayName,appId,oauth2PermissionScopes)",
    "value": [
        {
            "id": "7ea9e944-71ce-443d-811c-71e8047b557a",
            "displayName": "Microsoft Graph",
            "appId": "00000003-0000-0000-c000-000000000000",
            "oauth2PermissionScopes": [
                {
                    "adminConsentDescription": "Allows the app to read the full set of profile properties, reports, and managers of other users in your organization, on behalf of the signed-in user.",
                    "adminConsentDisplayName": "Read all users' full profiles",
                    "id": "a154be20-db9c-4678-8ab7-66f6cc099a59",
                    "isEnabled": true,
                    "type": "Admin",
                    "userConsentDescription": "Allows the app to read the full set of profile properties, reports, and managers of other users in your organization, on your behalf.",
                    "userConsentDisplayName": "Read all users' full profiles",
                    "value": "User.Read.All"
                },
                {
                    "adminConsentDescription": "Allows the app to list groups, and to read their properties and all group memberships on behalf of the signed-in user.  Also allows the app to read calendar, conversations, files, and other group content for all groups the signed-in user can access. ",
                    "adminConsentDisplayName": "Read all groups",
                    "id": "5f8c59db-677d-491f-a6b8-5f174b11ec1d",
                    "isEnabled": true,
                    "type": "Admin",
                    "userConsentDescription": "Allows the app to list groups, and to read their properties and all group memberships on your behalf.  Also allows the app to read calendar, conversations, files, and other group content for all groups you can access.  ",
                    "userConsentDisplayName": "Read all groups",
                    "value": "Group.Read.All"
                }                
            ]
        }
    ]
}
```

## Step 2: Grant delegated permission to the client service principal on behalf of a user

### Request
In this step, grant your app delegated permission that's exposed by Microsoft Graph on behalf of a user, resulting in a **delegated permission grant**.

+ From Step 1, the object ID of Microsoft Graph in the tenant is `7ea9e944-71ce-443d-811c-71e8047b557a`
+ The delegated permissions `User.Read.All` and `Group.Read.All` are identified by the globally unique IDs `a154be20-db9c-4678-8ab7-66f6cc099a59` and `5f8c59db-677d-491f-a6b8-5f174b11ec1d` respectively.
+ The principal is a user identified by ID `3fbd929d-8c56-4462-851e-0eb9a7b3a2a5`.
+ The client service principal is identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`. This is the object **id** of the service principal and *not* its **appId**.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "grant-delegated-perms-sp-oauth2permissiongrants"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/oauth2PermissionGrants
Content-Type: application/json

{
    "clientId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
    "consentType": "Principal",
    "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a",
    "principalId": "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5",
    "scope": "User.Read.All Group.Read.All"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/grant-delegated-perms-sp-oauth2permissiongrants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/grant-delegated-perms-sp-oauth2permissiongrants-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/grant-delegated-perms-sp-oauth2permissiongrants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/grant-delegated-perms-sp-oauth2permissiongrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/grant-delegated-perms-sp-oauth2permissiongrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/grant-delegated-perms-sp-oauth2permissiongrants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/grant-delegated-perms-sp-oauth2permissiongrants-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/grant-delegated-perms-sp-oauth2permissiongrants-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The preceding request grants consent on behalf of a single user, but you can also grant consent on behalf of all users in the tenant. The request body is similar to the previous request body except with the following changes:
- The **consentType** is `AllPrincipals`, indicating that you're consenting on behalf of all users in the tenant.
- The **principalId** property isn't supplied or can be `null`.

Here is an example request body for granting consent on behalf of all users:

```msgraph-interactive
POST https://graph.microsoft.com/v1.0/oauth2PermissionGrants
Content-Type: application/json

{
    "clientId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
    "consentType": "AllPrincipals",
    "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a",
    "scope": "User.Read.All Group.Read.All"
}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oauth2PermissionGrant"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#oauth2PermissionGrants/$entity",
    "clientId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
    "consentType": "Principal",
    "id": "47nZsM8O_UuNq5Jz3QValETpqX7OcT1EgRxx6AR7VXqdkr0_VoxiRIUeDrmns6Kl",
    "principalId": "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5",
    "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a",
    "scope": "User.Read.All Group.Read.All"
}
```

If you granted consent for all users in the tenant, the **consentType** in the response object would be `AllPrincipals`, and the **principalId** would be `null`.

### Confirm the permission grant

Verify the principals with delegated permissions to the resource service principal by running the following request.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-delegated-perms-sp-oauth2permissiongrants"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/oauth2PermissionGrants?$filter=clientId eq 'b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94' and principalId eq '3fbd929d-8c56-4462-851e-0eb9a7b3a2a5' and consentType eq 'Principal'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/get-delegated-perms-sp-oauth2permissiongrants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/get-delegated-perms-sp-oauth2permissiongrants-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/get-delegated-perms-sp-oauth2permissiongrants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/get-delegated-perms-sp-oauth2permissiongrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/get-delegated-perms-sp-oauth2permissiongrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/get-delegated-perms-sp-oauth2permissiongrants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/get-delegated-perms-sp-oauth2permissiongrants-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/get-delegated-perms-sp-oauth2permissiongrants-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oauth2PermissionGrants"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#oauth2PermissionGrants",
    "value": [
        {
            "clientId": "b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94",
            "consentType": "Principal",
            "id": "47nZsM8O_UuNq5Jz3QValETpqX7OcT1EgRxx6AR7VXqdkr0_VoxiRIUeDrmns6Kl",
            "principalId": "3fbd929d-8c56-4462-851e-0eb9a7b3a2a5",
            "resourceId": "7ea9e944-71ce-443d-811c-71e8047b557a",
            "scope": "User.Read.All Group.Read.All"
        }
    ]
}
```

## Step 3: Revoke delegated permissions granted to a service principal on behalf of a user [optional]

If a service principal has been granted multiple delegated permission grants on behalf of a user, you can choose to revoke either specific grants or all grants. Use this method to remove and revoke consent for the delegated permissions that you assigned to the client service principal.

+ To revoke one or more grants, run a PATCH request on the oauth2PermissionGrant object and specify only the delegated permissions to retain in the **scope** parameter.
+ To revoke all grants, send a DELETE request to the oauth2PermissionGrant object.

### Request

This request revokes all permission grants except the `User.Read.All` permission grant. It removes the permissions and revokes the previously granted consent.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "revoke-scopes-oauth2permissiongrants"
}-->
```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/oauth2PermissionGrants/47nZsM8O_UuNq5Jz3QValETpqX7OcT1EgRxx6AR7VXqdkr0_VoxiRIUeDrmns6Kl
Content-Type: application/json

{
    "scope": "User.Read.All"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/revoke-scopes-oauth2permissiongrants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/revoke-scopes-oauth2permissiongrants-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/revoke-scopes-oauth2permissiongrants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/revoke-scopes-oauth2permissiongrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/revoke-scopes-oauth2permissiongrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/revoke-scopes-oauth2permissiongrants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/revoke-scopes-oauth2permissiongrants-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/revoke-scopes-oauth2permissiongrants-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Request

This request revokes all permission grants for a service principal on behalf of a user.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "revoke-all-scopes-oauth2permissiongrants"
}-->
```msgraph-interactive
DELETE https://graph.microsoft.com/v1.0/oauth2PermissionGrants/47nZsM8O_UuNq5Jz3QValETpqX7OcT1EgRxx6AR7VXqdkr0_VoxiRIUeDrmns6Kl
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/revoke-all-scopes-oauth2permissiongrants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/revoke-all-scopes-oauth2permissiongrants-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/revoke-all-scopes-oauth2permissiongrants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/revoke-all-scopes-oauth2permissiongrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/revoke-all-scopes-oauth2permissiongrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/revoke-all-scopes-oauth2permissiongrants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/revoke-all-scopes-oauth2permissiongrants-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/revoke-all-scopes-oauth2permissiongrants-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Related content

- [Grant delegated permissions roles using PowerShell](/powershell/microsoftgraph/tutorial-grant-app-only-api-permissions)
- [OAuth2PermissionGrant resource type](/graph/api/resources/oauth2permissiongrant)

::: zone-end

<!-- end the grant-delegated-permissions zone -->
