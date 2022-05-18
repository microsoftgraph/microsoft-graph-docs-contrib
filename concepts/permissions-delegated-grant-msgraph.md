---
title: "Grant and revoke API delegated permissions using Microsoft Graph"
description: "Learn how to use Microsoft Graph to grant and revoke API delegated permissions for an app."
author: "psignoret"
ms.localizationpriority: medium
ms.prod: "applications"
ms.custom: template-how-to
---

# Grant and revoke API delegated permissions using Microsoft Graph

When you grant API permissions to a client app in Azure Active Directory (Azure AD), the permission grants are recorded as objects that can be accessed, updated, or deleted like any other. Using Microsoft Graph to directly create permission grants is a programmatic alternative to [interactive consent](/azure/active-directory/manage-apps/consent-and-permissions-overview) and can be useful for automation scenarios, bulk management, or other custom operations in your organization. You can also use Microsoft Graph to revoke the permission grants for an app.

In this guide, you'll learn how to grant and revoke delegated permissions for an app. Delegated permissions, also called scopes or OAuth2 permissions, allow an app to call an API on behalf of a signed-in user.

> [!CAUTION]
> Be careful! Permissions granted programmatically are not subject to review or confirmation. They take effect immediately.

## Prerequisites

To complete these instructions, you need the following resources and privileges:

1. A working Azure AD tenant, and you must complete the following steps:
    1. Sign in to an app such as [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) or [Postman](/graph/use-postman) as a user with privileges to create applications in the tenant.
    2. In the app you've signed in to, consent to the `Application.ReadWrite.All`, `DelegatedPermissionGrant.ReadWrite.All` delegated permissions.
    3. Get the object ID of the client service principal to which you'll grant delegated permissions on behalf of a user. In this article, the client service principal is identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`.

> [!CAUTION]
> The `DelegatedPermissionGrant.ReadWrite.All` permission allows an app or service to manage permission grants and elevate privileges for any app or user in your organization. Access to this service must be properly secured and should be limited to as few users as possible.

## Step 1: Get the delegated permissions of the resource service principal

Before you can grant delegated permissions, you must first identify the delegated permissions to grant and the resource service principal that exposes the delegated permissions. Delegated permissions are defined in the **oauth2PermissionScopes** object of a service principal. In this article, you'll use the Microsoft Graph service principal in the tenant as your resource service principal.

### Request

The following request retrieves the delegated permissions defined by the Microsoft Graph service principal in the tenant.

<!-- {
  "blockType": "request",
  "name": "get-scopes-for-microsoftgraph"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=displayName eq 'Microsoft Graph'&$select=id,displayName,appId,oauth2PermissionScopes
```

### Response

The following is an example of the response.

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

In this step, you'll grant your app, on behalf of a user, a delegated permission that's exposed by Microsoft Graph, thereby creating an **delegated permission grant**. From Step 1, the object ID of Microsoft Graph is `7ea9e944-71ce-443d-811c-71e8047b557a` and the delegated permissions `User.Read.All` and `Group.Read.All` are identified by IDs `a154be20-db9c-4678-8ab7-66f6cc099a59` and `5f8c59db-677d-491f-a6b8-5f174b11ec1d` respectively. The principal is a user identified by ID `3fbd929d-8c56-4462-851e-0eb9a7b3a2a5`.

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

Alternatively, you can choose to grant consent on behalf of all users in the tenant. The request body is similar to the previous request body except with the following changes:
- The **consentType** is `AllPrincipals`, indicating that you're consenting on behalf of all users in the tenant.
- The **principalId** property isn't supplied or can be `null`.
An example request body is as follows:

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

If you granted consent for all users in the tenant, the **consentType** in the above response object would be `AllPrincipals` and the **principalId** would be `null`.

To confirm the delegated permissions assigned to the service principal on behalf of user ID `3fbd929d-8c56-4462-851e-0eb9a7b3a2a5`, you run the following request.

### Request

<!-- {
  "blockType": "request",
  "name": "get-delegated-perms-sp-oauth2permissiongrants"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/oauth2PermissionGrants?$filter=clientId eq 'b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94' and principalId eq '3fbd929d-8c56-4462-851e-0eb9a7b3a2a5' and consentType eq 'Principal'
```

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

## Step 3 : Revoke delegated permissions granted to the service principal on behalf of a user

If a service principal has been granted multiple delegated permission grants on behalf of a user, you can either choose to revoke one grant or all grants. 
+ To revoke one grant, run a PATCH request and specify only the delegated permissions to retain in the **scope** parameter.
+ To revoke all grants, run a DELETE request for the oauth2PermissionGrant object.

### Request

The following request revokes all permission grants and retains only the `User.Read.All` permission grant.

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

### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Request

The following request revokes all permission grants for a service principal on behalf of a user.

<!-- {
  "blockType": "request",
  "name": "revoke-all-scopes-oauth2permissiongrants"
}-->
```msgraph-interactive
DELETE https://graph.microsoft.com/v1.0/oauth2PermissionGrants/47nZsM8O_UuNq5Jz3QValETpqX7OcT1EgRxx6AR7VXqdkr0_VoxiRIUeDrmns6Kl
```

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

+ [Grant and revoke API app roles using Microsoft Graph](permissions-app-grant-msgraph.md)
+ [oAuth2PermissionGrant resource type](/graph/api/resources/oauth2permissiongrant)