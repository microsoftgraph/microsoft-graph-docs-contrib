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
+ Sign in to either [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) or [Postman](/graph/use-postman) as a user in an Application Administrator role or a user allowed to create applications in the tenant. Note that Graph Explorer supports sign-in in delegated contexts only while Postman supports sign-in in both delegated and application contexts.
+ Consent to the `Application.ReadWrite.All`, `DelegatedPermissionGrant.ReadWrite.All` delegated or app permissions.

## Step 1: Register an application with Azure AD

### Request

```msgraph-interactive
POST https://graph.microsoft.com/v1.0/applications
Content-type: application/json

{
  "displayName": "My application"
}
```

### Response

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#applications/$entity",
    "id": "576ce272-f1a3-4c6a-9199-d5cd67c191f5",
    "appId": "d3d7efc0-4950-43e2-8d2a-c48fffe7e52e",
    "displayName": "ADO#1694534"
}
```

## Step 2: Create a service principal for the application

### Request

```msgraph-interactive
POST https://graph.microsoft.com/v1.0/servicePrincipals
Content-type: application/json

{
    "appId": "d3d7efc0-4950-43e2-8d2a-c48fffe7e52e"
}
```

### Response

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals/$entity",
    "id": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "accountEnabled": true,
    "appDisplayName": "ADO#1694534",
    "appId": "d3d7efc0-4950-43e2-8d2a-c48fffe7e52e",
    "appOwnerOrganizationId": "84841066-274d-4ec0-a5c1-276be684bdd3",
    "displayName": "ADO#1694534"
}
```

## Step 3: Assign a delegated permission to the service principal

```msgraph-interactive
POST https://graph.microsoft.com/v1.0/oauth2PermissionGrants
Content-Type: application/json

{
    "clientId": "0612c321-db5f-4a32-909e-4f28080557ef",
    "consentType": "AllPrincipals",
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "scope": "AuditLog.Read.All"
}
```

### Response

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#oauth2PermissionGrants/$entity",
    "clientId": "0612c321-db5f-4a32-909e-4f28080557ef",
    "consentType": "AllPrincipals",
    "id": "IcMSBl_bMkqQnk8oCAVX7-QDNpSH5-lPk9HjD3Sarjk",
    "principalId": null,
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "scope": "AuditLog.Read.All"
}
```

## Step 4 [Optional]: Assign more delegated permissions to the service principal

```msgraph-interactive
PATCH https://graph.microsoft.com/v1.0/oauth2PermissionGrants
Content-Type: application/json

{
    "scope": "AuditLog.Read.All Group.ReadWrite.All"
}
```

### Response

```http
HTTP/1.1 204 No Content
```


## Step 5 [Optional]: Create an app role assignment for a user to the app

This step assigns the app to a user identified by principal ID `4f74691a-6111-4a08-b59c-2a89c9bc6c19`. This assignment allows the user to see the app will appear on the [MyApps portal](https://myapps.microsoft.com/), and it also allows users to access the app as intended if the app is configured to require user assignment.

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
    "resourceDisplayName": "ADO#1694534",
    "resourceId": "ef969797-201d-4f6b-960c-e9ed5f31dab5"
}
```

## See also

+ [How-To: Grant Microsoft Graph application permissions programmatically](permissions-app-grant-msgraph.md)
+ [oAuth2PermissionGrant resource type](/graph/api/resources/oauth2permissiongrant)
+ [appRoleAssignment resource type](/graph/api/resources/approleassignment)