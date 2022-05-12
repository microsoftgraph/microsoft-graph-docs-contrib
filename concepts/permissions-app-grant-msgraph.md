---
title: "How-To: Grant API application permissions programmatically"
description: "Learn how to use Microsoft Graph to grant API permissions to an app."
author: "FaithOmbongi"
ms.localizationpriority: medium
ms.prod: "applications"
ms.custom: template-how-to
---

# How-To: Grant API application permissions programmatically

When you grant API permissions to a client app or user in Azure Active Directory (Azure AD), they're recorded as objects that can be accessed, updated, or deleted like any other. Using Microsoft Graph to directly create permission grants is a programmatic alternative to [interactive consent](/azure/active-directory/manage-apps/consent-and-permissions-overview) and can be useful for automation scenarios, bulk management, or other custom operations in your organization.

Use the following instructions to grant application permissions that are exposed by an API to an app. Application permissions allow an app to call an API with its own identity, and may sometimes be called app roles, app-only permissions, or direct access permissions.

> [!CAUTION]
> Be careful! Permissions granted programmatically are not subject to review or confirmation. They take effect immediately.

## Prerequisites

To complete these instructions, you need the following resources and privileges:

1. A working Azure AD tenant.
2. Sign in to an app such as [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) or [Postman](/graph/use-postman) as a user with privileges to create applications in the tenant.
3. In the app you've signed in to, consent to the `Application.ReadWrite.All` and `AppRoleAssignment.ReadWrite.All` delegated permissions.
4. Get the object ID of a resource service principal that exposes app roles, and the ID of the app role to grant. In this guide, we'll use the Microsoft Graph resource service principal.

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

In this step, we'll assign our app an app role that's exposed by Microsoft Graph, thereby creating an app role assignment. In the following example, the object ID of Microsoft Graph in this tenant is `943603e4-e787-4fe9-93d1-e30f749aae3`. The app role `User.Read.All` is identified by ID `df021288-bdef-4463-88db-98f22de89214`.

Therefore, we'll grant our app (the principal of ID `ef969797-201d-4f6b-960c-e9ed5f31dab5`) an app role of ID `df021288-bdef-4463-88db-98f22de89214` that's exposed by a resource service principal of ID `943603e4-e787-4fe9-93d1-e30f749aae3`.

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
    "appRoleId": "df021288-bdef-4463-88db-98f22de89214"
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
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('943603e4-e787-4fe9-93d1-e30f749aae39')/appRoleAssignedTo/$entity",
    "id": "l5eW7x0ga0-WDOntXzHatch-ol4TgO5Ph3_pURoPDwc",
    "deletedDateTime": null,
    "appRoleId": "df021288-bdef-4463-88db-98f22de89214",
    "createdDateTime": "2022-03-17T20:09:07.6830758Z",
    "principalDisplayName": "My application",
    "principalId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
    "principalType": "ServicePrincipal",
    "resourceDisplayName": "Microsoft Graph",
    "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39"
}
```

To confirm all apps with a role assignment to the app, run the following request.

### Request

<!-- {
  "blockType": "request",
  "name": "get-app-perms-sp-approleassignedto"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals/943603e4-e787-4fe9-93d1-e30f749aae39/appRoleAssignedTo
```

### Response

The response object includes a collection of app role assignments to your resource service principal and includes the app role assignment you created using the POST request.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.appRoleAssignments"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#servicePrincipals('943603e4-e787-4fe9-93d1-e30f749aae39')/appRoleAssignedTo",
    "value": [
        {
            "id": "l5eW7x0ga0-WDOntXzHatch-ol4TgO5Ph3_pURoPDwc",
            "deletedDateTime": null,
            "appRoleId": "df021288-bdef-4463-88db-98f22de89214",
            "createdDateTime": "2022-03-17T20:09:07.6830758Z",
            "principalDisplayName": "My application",
            "principalId": "ef969797-201d-4f6b-960c-e9ed5f31dab5",
            "principalType": "ServicePrincipal",
            "resourceDisplayName": "Microsoft Graph",
            "resourceId": "943603e4-e787-4fe9-93d1-e30f749aae39"
        }
    ]
}
```

## Conclusion

You've granted an app role to a service principal. This method of granting permissions using Microsoft Graph bypasses [interactive consent](/azure/active-directory/develop/application-consent-experience)

## See also

+ [How-To: Grant Microsoft Graph delegated permissions programmatically](permissions-delegated-grant-msgraph.md)
+ [appRoleAssignment resource type](/graph/api/resources/approleassignment)