---
title: "How-To: Grant Microsoft Graph delegated permissions programmatically"
description: "Learn how to use the Microsoft Graph API to grant Microsoft Graph API permissions to an app."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.prod: "applications"
ms.custom: template-how-to
---

# How-To: Grant Microsoft Graph delegated permissions programmatically

> [!CAUTION]
> Be careful! Permissions granted programmatically are not subject to review or confirmation. They take effect immediately.

## Prerequisites

To complete these instructions, you need the following resources and privileges:

+ A working Azure AD tenant.
+ Sign in to an app as a user in an Application Administrator role or a user allowed to create applications in the tenant. You can use either [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) (for delegated scenarios only) or [Postman](/graph/use-postman) (for either delegated and application scenarios) to test these queries.
+ Consent to the `Application.ReadWrite.All` and `DelegatedPermissionGrant.ReadWrite.All` delegated or app permissions.
+ The object ID of a resource service principal that exposes delegated permissions (scopes). In this guide, we'll use the Microsoft Graph resource service principal.

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

In this step, we'll grant the service principal a delegated permission (or scope) that's exposed by Microsoft Graph. In the following example, the object ID of Microsoft Graph is `943603e4-e787-4fe9-93d1-e30f749aae3`. We'll grant the `Group.Read.All` scope to our service principal and grant consent on behalf of all users in the tenant.

<!-- {
  "blockType": "request",
  "name": "grant-delegated-perms-sp-oauth2permissiongrants"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/oauth2PermissionGrants
Content-Type: application/json

{
    "clientId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "consentType": "AllPrincipals",
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "scope": "Group.Read.All"
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
    "consentType": "AllPrincipals",
    "id": "l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk",
    "principalId": null,
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "scope": "Group.Read.All"
}
```

## Step 4 [Optional]: Grant more delegated permissions to the service principal

In this step, we'll grant an additional `AuditLog.Read.All` Microsoft Graph delegated permission to our service principal on behalf of all users in the tenant.
<!-- {
  "blockType": "request",
  "name": "grant-delegated-perms-sp-oauth2permissiongrants-patch"
}-->
```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/oauth2PermissionGrants/l5eW7x0ga0-WDOntXzHateQDNpSH5-lPk9HjD3Sarjk
Content-Type: application/json

{
    "scope": "Group.Read.All AuditLog.Read.All"
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


## Step 5 [Optional]: Create an app role assignment for a user to the app

This step assigns the app to a user identified by principal ID `4f74691a-6111-4a08-b59c-2a89c9bc6c19`. This assignment allows the user to see the app on the [MyApps portal](https://myapps.microsoft.com/) and access the app as if the app is configured to require user assignment.

<!-- {
  "blockType": "request",
  "name": "grant-delegated-perms-sp-appRoleAssignedTo"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/servicePrincipals/ef969797-201d-4f6b-960c-e9ed5f31dab5/appRoleAssignedTo
Content-Type: application/json

{
    "principalId": "4f74691a-6111-4a08-b59c-2a89c9bc6c19",
    "resourceId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "appRoleId": "00000000-0000-0000-0000-000000000000"
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignments"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('ef969797-201d-4f6b-960c-e9ed5f31dab5')/appRoleAssignedTo/$entity",
    "id": "Gml0TxFhCEq1nCqJybxsGWE6Ywzd6w9Gnp7H4SZEIpE",
    "deletedDateTime": null,
    "appRoleId": "00000000-0000-0000-0000-000000000000",
    "createdDateTime": "2022-03-18T10:52:39.7396904Z",
    "principalDisplayName": "Conf Room Crystal",
    "principalId": "4f74691a-6111-4a08-b59c-2a89c9bc6c19",
    "principalType": "User",
    "resourceDisplayName": "My application",
    "resourceId": "ef969797-201d-4f6b-960c-e9ed5f31dab5"
}
```

## Conclusion

You've granted delegated permissions (or scopes) to a service principal. This method of granting permissions using Microsoft Graph bypasses the consent workflow and should be used with caution.

## See also

+ [How-To: Grant Microsoft Graph application permissions programmatically](permissions-app-grant-msgraph.md)
+ [oAuth2PermissionGrant resource type](/graph/api/resources/oauth2permissiongrant)
+ [appRoleAssignment resource type](/graph/api/resources/approleassignment)