---
title: "Grant or revoke API permissions programmatically"
description: "Learn how to use Microsoft Graph to programmatically grant and revoke delegated and application API permissions for an app. This method is an alternative to interactive admin consent."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: psignoret, jackson.woods
ms.localizationpriority: medium
ms.prod: "applications"
zone_pivot_groups: grant-api-permissions
ms.custom: template-how-to
ms.date: 12/09/2022
---

# Grant or revoke API permissions programmatically

When you grant API permissions to a client app in Azure Active Directory (Azure AD), the permission grants are recorded as objects that can be accessed, updated, or deleted like your data. Using Microsoft Graph to directly create permission grants is a programmatic alternative to [interactive consent](/azure/active-directory/manage-apps/consent-and-permissions-overview) and can be useful for automation scenarios, bulk management, or other custom operations in your organization.

<!-- start the grant-application-permissions zone -->
::: zone pivot="grant-application-permissions"

In this guide, you'll learn how to grant and revoke app roles for an app using Microsoft Graph. **App roles**, also called *application permissions*, or *direct access permissions*, allow an app to call an API with its own identity.

> [!CAUTION]
> Be careful! Permissions granted programmatically are not subject to review or confirmation. They take effect immediately.

## Prerequisites

To complete these instructions, you need the following resources and privileges:

- A working Azure AD tenant.
- You'll run the requests in this article as a user. You must complete the following steps:
    - Sign in to an app such as [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) or [Postman](/graph/use-postman) as a user with privileges to create applications in the tenant.
    - In the app you've signed in to, consent to the *Application.Read.All* and *AppRoleAssignment.ReadWrite.All* delegated permissions on behalf of the signed-in user. You don't need to consent on behalf of your organization.
    - Get the object ID of the client service principal to which you'll grant app roles. In this article, the client service principal is identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`.

<!--
> [!CAUTION]
> The `AppRoleAssignment.ReadWrite.All` permission allows an app or service to manage permission grants and elevate privileges for any app, user, or group in your organization. Access to this service must be properly secured and should be limited to as few users as possible.
-->

> [!CAUTION]
> Apps that have been granted the *AppRoleAssignment.ReadWrite.All* permission should only be accessed by appropriate users.

## Step 1: Get the appRoles of the resource service principal

Before you can grant app roles, you must first identify the app roles to grant and the resource service principal that exposes the app roles. App roles are defined in the **appRoles** object of a service principal. In this article, you'll use the Microsoft Graph service principal in the tenant as your resource service principal.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/get-approles-for-microsoftgraph-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-approles-for-microsoftgraph-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-approles-for-microsoftgraph-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-approles-for-microsoftgraph-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-approles-for-microsoftgraph-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-approles-for-microsoftgraph-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following object is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

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

In this step, you'll grant your app an app role that's exposed by Microsoft Graph, thereby creating an **app role assignment**. From Step 1, the object ID of Microsoft Graph is `7ea9e944-71ce-443d-811c-71e8047b557a` and the app role `User.Read.All` is identified by ID `df021288-bdef-4463-88db-98f22de89214`.

### Request

The following request grants your client app (the principal of ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`) an app role of ID `df021288-bdef-4463-88db-98f22de89214` that's exposed by a resource service principal of ID `7ea9e944-71ce-443d-811c-71e8047b557a`.


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
[!INCLUDE [sample-code](../includes/snippets/csharp/grant-approles-using-approleassignedto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/grant-approles-using-approleassignedto-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/grant-approles-using-approleassignedto-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/grant-approles-using-approleassignedto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [snippet-not-available](../includes/snippets/snippet-not-available.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/grant-approles-using-approleassignedto-powershell-snippets.md)]
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

To confirm all principals with role assignments to the resource service principal, run the following request.

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-approles-for-sp-approleassignedto"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals/7ea9e944-71ce-443d-811c-71e8047b557a/appRoleAssignedTo
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-approles-for-sp-approleassignedto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-approles-for-sp-approleassignedto-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-approles-for-sp-approleassignedto-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-approles-for-sp-approleassignedto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-approles-for-sp-approleassignedto-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-approles-for-sp-approleassignedto-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The response object includes a collection of app role assignments to your resource service principal and includes the app role assignment you created using the POST request.

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
[!INCLUDE [sample-code](../includes/snippets/csharp/revoke-approles-using-approleassignedto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/revoke-approles-using-approleassignedto-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/revoke-approles-using-approleassignedto-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/revoke-approles-using-approleassignedto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/revoke-approles-using-approleassignedto-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/revoke-approles-using-approleassignedto-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Conclusion

You've learned how to manage app role grants for a service principal. This method of granting permissions using Microsoft Graph is an alternative [interactive consent](/azure/active-directory/develop/application-consent-experience) and should be used with caution.

## See also

+ [Tutorial: Grant app roles in Azure AD using Microsoft Graph PowerShell](/powershell/microsoftgraph/tutorial-grant-app-only-api-permissions)
+ [appRoleAssignment resource type](/graph/api/resources/approleassignment)

::: zone-end

<!-- end the grant-application-permissions zone -->
<!-- start the grant-delegated-permissions zone -->

::: zone pivot="grant-delegated-permissions"

In this guide, you'll learn how to grant and revoke delegated permissions for an app using Microsoft Graph. **Delegated permissions**, also called *scopes* or *OAuth2 permissions*, allow an app to call an API on behalf of a signed-in user.

> [!CAUTION]
> Be careful! Permissions granted programmatically are not subject to review or confirmation. They take effect immediately.

## Prerequisites

To complete these instructions, you need the following resources and privileges:

- A working Azure AD tenant.
- You'll run the requests in this article as a user. You must complete the following steps:
    - Sign in to an app such as [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) or [Postman](/graph/use-postman) as a user with privileges to create applications in the tenant.
    - In the app you've signed in to, consent to the *Application.Read.All*, *DelegatedPermissionGrant.ReadWrite.All* delegated permissions on behalf of the signed-in user. You don't need to consent on behalf of your organization.
    - Get the object ID of the client service principal to which you'll grant delegated permissions on behalf of a user. In this article, the client service principal is identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`.

<!--
> [!CAUTION]
> The `DelegatedPermissionGrant.ReadWrite.All` permission allows an app or service to manage permission grants and elevate privileges for any app or user in your organization. Access to this service must be properly secured and should be limited to as few users as possible.
-->

> [!CAUTION]
> Apps that have been granted the *DelegatedPermissionGrant.ReadWrite.All* permission should only be accessed by appropriate users.

## Step 1: Get the delegated permissions of the resource service principal

Before you can grant delegated permissions, you must first identify the delegated permissions to grant and the resource service principal that exposes the delegated permissions. Delegated permissions are defined in the **oauth2PermissionScopes** object of a service principal. In this article, you'll use the Microsoft Graph service principal in the tenant as your resource service principal.

### Request

The following request retrieves the delegated permissions defined by the Microsoft Graph service principal in the tenant.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-scopes-for-microsoftgraph"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=displayName eq 'Microsoft Graph'&$select=id,displayName,appId,oauth2PermissionScopes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-scopes-for-microsoftgraph-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-scopes-for-microsoftgraph-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-scopes-for-microsoftgraph-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-scopes-for-microsoftgraph-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-scopes-for-microsoftgraph-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-scopes-for-microsoftgraph-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following object is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

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

## Step 2: Grant a delegated permission to the client service principal on behalf of a user

In this step, you'll grant your app, on behalf of a user, a delegated permission that's exposed by Microsoft Graph, thereby creating an **delegated permission grant**. 

+ From Step 1, the object ID of Microsoft Graph in the tenant is `7ea9e944-71ce-443d-811c-71e8047b557a`
+ The delegated permissions `User.Read.All` and `Group.Read.All` are identified by the globally unique IDs `a154be20-db9c-4678-8ab7-66f6cc099a59` and `5f8c59db-677d-491f-a6b8-5f174b11ec1d` respectively.
+ The principal is a user identified by ID `3fbd929d-8c56-4462-851e-0eb9a7b3a2a5`.


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
[!INCLUDE [sample-code](../includes/snippets/csharp/grant-delegated-perms-sp-oauth2permissiongrants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/grant-delegated-perms-sp-oauth2permissiongrants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/grant-delegated-perms-sp-oauth2permissiongrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/grant-delegated-perms-sp-oauth2permissiongrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/grant-delegated-perms-sp-oauth2permissiongrants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/grant-delegated-perms-sp-oauth2permissiongrants-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

While the preceding request grants consent on behalf of a single user, you can choose to grant consent on behalf of all users in the tenant. The request body is similar to the previous request body except with the following changes:
- The **consentType** is `AllPrincipals`, indicating that you're consenting on behalf of all users in the tenant.
- The **principalId** property isn't supplied or can be `null`.

An example request body for granting consent on behalf all users is as follows:

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

To confirm the delegated permissions assigned to the service principal on behalf of the user, you run the following request.

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-delegated-perms-sp-oauth2permissiongrants"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/oauth2PermissionGrants?$filter=clientId eq 'b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94' and principalId eq '3fbd929d-8c56-4462-851e-0eb9a7b3a2a5' and consentType eq 'Principal'
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-delegated-perms-sp-oauth2permissiongrants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-delegated-perms-sp-oauth2permissiongrants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-delegated-perms-sp-oauth2permissiongrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-delegated-perms-sp-oauth2permissiongrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-delegated-perms-sp-oauth2permissiongrants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-delegated-perms-sp-oauth2permissiongrants-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
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

## Step 3: Revoke delegated permissions granted to a service principal on behalf of a user [Optional]

If a service principal has been granted multiple delegated permission grants on behalf of a user, you can choose to revoke either specific grants or all grants. Use this method to remove and revoke consent for the delegated permissions that you've assigned to Graph Explorer.

+ To revoke one or some grants, run a PATCH request on the oauth2PermissionGrant object and specify only the delegated permissions to retain in the **scope** parameter.
+ To revoke all grants, run a DELETE request on the oauth2PermissionGrant object.

### Request

The following request revokes all permission grants and retains only the `User.Read.All` permission grant. The permissions are removed and the consent that was previously granted is revoked.


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
[!INCLUDE [sample-code](../includes/snippets/csharp/revoke-scopes-oauth2permissiongrants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/revoke-scopes-oauth2permissiongrants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/revoke-scopes-oauth2permissiongrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/revoke-scopes-oauth2permissiongrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/revoke-scopes-oauth2permissiongrants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/revoke-scopes-oauth2permissiongrants-powershell-snippets.md)]
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

The following request revokes all permission grants for a service principal on behalf of a user.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "revoke-all-scopes-oauth2permissiongrants"
}-->
```msgraph-interactive
DELETE https://graph.microsoft.com/v1.0/oauth2PermissionGrants/47nZsM8O_UuNq5Jz3QValETpqX7OcT1EgRxx6AR7VXqdkr0_VoxiRIUeDrmns6Kl
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/revoke-all-scopes-oauth2permissiongrants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/revoke-all-scopes-oauth2permissiongrants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/revoke-all-scopes-oauth2permissiongrants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/revoke-all-scopes-oauth2permissiongrants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/revoke-all-scopes-oauth2permissiongrants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/revoke-all-scopes-oauth2permissiongrants-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

## Conclusion

You've granted delegated permissions (or scopes) to a service principal. This method of granting permissions using Microsoft Graph is an alternative to [interactive consent](/azure/active-directory/develop/application-consent-experience) and should be used with caution.

## See also

- [Tutorial: Grant delegated permissions in Azure AD using Microsoft Graph PowerShell](/powershell/microsoftgraph/tutorial-grant-delegated-api-permissions)
- [oAuth2PermissionGrant resource type](/graph/api/resources/oauth2permissiongrant)

::: zone-end

<!-- end the grant-delegated-permissions zone -->
