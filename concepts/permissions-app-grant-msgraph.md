---
title: "How-To: Grant Microsoft Graph application permissions programmatically"
description: "Learn how to use the Microsoft Graph API to grant Microsoft Graph API permissions to an app."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.prod: "applications"
ms.custom: template-how-to
---

# How-To: Grant Microsoft Graph application permissions programmatically

> [!CAUTION]
> Be careful! Permissions granted programmatically are not subject to review or confirmation. They take effect immediately.

## Prerequisites

To complete this tutorial, you need the following resources and privileges:

+ A working Azure AD tenant.
+ Sign in to either [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) or [Postman](/graph/use-postman) as a user in an Application Administrator role or a user allowed to create applications in the tenant. Graph Explorer supports sign in for delegated scenarios only while Postman supports sign in for both delegated and application scenarios.
+ Consent to the `Application.ReadWrite.All`, `AppRoleAssignment.ReadWrite.All` delegated or app permissions.

> [!CAUTION]
> The `AppRoleAssignment.ReadWrite.All` permission allows an app or service to manage permission grants and elevate privileges for any app, user, or group in your organization. Access to this service must be properly secured and should be limited to as few users as possible.

## Step 1: Register an application with Azure AD

### Request

<!-- {
  "blockType": "request",
  "name": "grant-app-perms-create-app"
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
  "name": "grant-app-perms-create-sp"
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

## Step 3: Assign an app role to the service principal

<!-- {
  "blockType": "request",
  "name": "grant-app-perms-sp-approleassignedto"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/v1.0/servicePrincipals/943603e4-e787-4fe9-93d1-e30f749aae39/appRoleAssignedTo
Content-Type: application/json

{
    "principalId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39",
    "appRoleId": "134fd756-38ce-4afd-ba33-e9623dbe66c2"
}
```

The service principal ID in the URL must always be the same as the **resourceId** and references the resource service principal that exposes app roles that you want to assign to another service principal. In this example, the resource service principal is identified by `943603e4-e787-4fe9-93d1-e30f749aae39` and exposes an app role identified by ID `134fd756-38ce-4afd-ba33-e9623dbe66c2`, that we're granting to our service principal that we created in Step 2 above.

An example of a resource service principal is the Microsoft Graph service principal that exposes [hundreds of app roles](permissions-reference.md). To retrieve the ID of the Microsoft Graph service principal in your tenant, run the following request:

<!-- {
  "blockType": "ignore"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=displayName eq 'Microsoft Graph'
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('943603e4-e787-4fe9-93d1-e30f749aae39')/appRoleAssignedTo/$entity",
    "id": "l5eW7x0ga0-WDOntXzHatch-ol4TgO5Ph3_pURoPDwc",
    "deletedDateTime": null,
    "appRoleId": "134fd756-38ce-4afd-ba33-e9623dbe66c2",
    "createdDateTime": "2022-03-17T20:09:07.6830758Z",
    "principalDisplayName": "My application",
    "principalId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "principalType": "ServicePrincipal",
    "resourceDisplayName": "Microsoft Graph",
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39"
}
```

## See also

+ [How-To: Grant Microsoft Graph delegated permissions programmatically](permissions-delegated-grant-msgraph.md)
+ [appRoleAssignment resource type](/graph/api/resources/approleassignment)