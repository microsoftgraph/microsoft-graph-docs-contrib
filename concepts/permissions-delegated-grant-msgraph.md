---
title: "Grant delegated permissions using Microsoft Graph"
description: "Learn how to use Microsoft Graph to grant API permissions to an app."
author: "psignoret"
ms.localizationpriority: medium
ms.prod: "applications"
ms.custom: template-how-to
---

# Grant delegated permissions using Microsoft Graph

When you grant API permissions to a client app in Azure Active Directory (Azure AD), the permission grants recorded as objects that can be accessed, updated, or deleted like any other. Using Microsoft Graph to directly create permission grants is a programmatic alternative to [interactive consent](/azure/active-directory/manage-apps/consent-and-permissions-overview) and can be useful for automation scenarios, bulk management, or other custom operations in your organization.

Use the following instructions to grant delegated permissions that are exposed by an API to an app. Delegated permissions, also called scopes or OAuth2 permissions, allow an app to call an API on behalf of a signed-in user.

> [!CAUTION]
> Be careful! Permissions granted programmatically are not subject to review or confirmation. They take effect immediately.

## Prerequisites

To complete these instructions, you need the following resources and privileges:

1. A working Azure AD tenant, and you must complete the following steps:
    1. Sign in to an app such as [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) or [Postman](/graph/use-postman) as a user with privileges to create applications in the tenant.
    2. In the app you've signed in to, consent to the `Application.ReadWrite.All`, `DelegatedPermissionGrant.ReadWrite.All` delegated permissions.
    3. Get the object ID of a resource service principal that exposes delegated permissions (scopes). This article uses the Microsoft Graph service principal in the tenant as the resource service principal.

> [!CAUTION]
> The `DelegatedPermissionGrant.ReadWrite.All` permission allows an app or service to manage permission grants and elevate privileges for any app or user in your organization. Access to this service must be properly secured and should be limited to as few users as possible.

## Step 1: Register an application with Azure AD

### Request

<!-- {
  "blockType": "request",
  "name": "grant-delegated-perms-create-app"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/applications
Content-type: application/json

{
  "displayName": "My application"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.application"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications/$entity",
    "id": "576ce272-f1a3-4c6a-9199-d5cd67c191f5",
    "appId": "d3d7efc0-4950-43e2-8d2a-c48fffe7e52e",
    "displayName": "My application"
}
```

## Step 2: Create a service principal for the application

### Request

<!-- {
  "blockType": "request",
  "name": "grant-delegated-perms-create-sp"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/servicePrincipals
Content-type: application/json

{
    "appId": "d3d7efc0-4950-43e2-8d2a-c48fffe7e52e"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals/$entity",
    "id": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "accountEnabled": true,
    "appDisplayName": "My application",
    "appId": "d3d7efc0-4950-43e2-8d2a-c48fffe7e52e",
    "appOwnerOrganizationId": "84841066-274d-4ec0-a5c1-276be684bdd3",
    "displayName": "My application"
}
```

## Step 3: Grant a delegated permission to the service principal

In this step, you'll grant the service principal a delegated permission (or scope) that's exposed by Microsoft Graph. In the following example, the object ID of Microsoft Graph in this tenant is `943603e4-e787-4fe9-93d1-e30f749aae3`. The object ID of your service principal is `ef969797-201d-4f6b-960c-e9ed5f31dab5`. You'll grant the `User.Read.All` scope to your service principal and grant consent on behalf of one user identified by user ID `1ed8ac56-4827-4733-8f80-86adc2e67db5`.

<!-- {
  "blockType": "request",
  "name": "grant-delegated-perms-sp-oauth2permissiongrants"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/oauth2PermissionGrants
Content-Type: application/json

{
    "clientId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "consentType": "Principal",
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "principalId": "1ed8ac56-4827-4733-8f80-86adc2e67db5",
    "scope": "User.Read.All"
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
    "clientId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "consentType": "AllPrincipals",
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "scope": "User.Read.All"
}
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#oauth2PermissionGrants/$entity",
    "clientId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "consentType": "Principal",
    "id": "l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk",
    "principalId": "1ed8ac56-4827-4733-8f80-86adc2e67db5",
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "scope": "User.Read.All"
}
```

If you granted consent for all users in the tenant, the **consentType** in the above response object would be `AllPrincipals` and the **principalId** would be `null`.

To confirm the delegated permissions assigned to the service principal on behalf of user ID `1ed8ac56-4827-4733-8f80-86adc2e67db5`, you run the following request.

### Request

<!-- {
  "blockType": "request",
  "name": "get-delegated-perms-sp-oauth2permissiongrants"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/oauth2PermissionGrants?$filter=clientId eq 'ef969797-201d-4f6b-960c-e9ed5f31dab5' and principalId eq '1ed8ac56-4827-4733-8f80-86adc2e67db5' and consentType eq'Principal'
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
            "clientId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
            "consentType": "Principal",
            "id": "l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk",
            "principalId": "1ed8ac56-4827-4733-8f80-86adc2e67db5",
            "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
            "scope": "User.Read.All"
        }
    ]
}
```

## Step 4 [Optional]: Grant more delegated permissions to the service principal

In this step, you'll grant the app another delegated permission that's exposed by Microsoft Graph, on behalf of only one user identified by user ID `1ed8ac56-4827-4733-8f80-86adc2e67db5`.

Because you already have a delegated permission grant scoped to principal ID `1ed8ac56-4827-4733-8f80-86adc2e67db5`, resource ID `943603e4-e787-4fe9-93d1-e30f749aae39`, *and* client ID `ef969797-201d-4f6b-960c-e9ed5f31dab5`, you update the existing delegated permission grant using a PATCH request instead of running a new POST request.

<!-- {
  "blockType": "request",
  "name": "grant-delegated-perms-sp-oauth2permissiongrants-patch"
}-->
```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/oauth2PermissionGrants/l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk
Content-Type: application/json

{
    "scope": "User.Read.All Group.Read.All"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.oauth2PermissionGrants"
} -->
```http
HTTP/1.1 204 No Content
```

## Conclusion

You've granted delegated permissions (or scopes) to a service principal. This method of granting permissions using Microsoft Graph is an alternative to [interactive consent](/azure/active-directory/develop/application-consent-experience) and should be used with caution.

## See also

+ [How-To: Grant Microsoft Graph application permissions programmatically](permissions-app-grant-msgraph.md)
+ [oAuth2PermissionGrant resource type](/graph/api/resources/oauth2permissiongrant)