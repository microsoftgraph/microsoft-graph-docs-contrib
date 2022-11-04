---
title: "Grant and revoke API app roles using Microsoft Graph"
description: "Learn how to use Microsoft Graph to grant and revoke API app roles for an app."
author: "psignoret"
ms.localizationpriority: medium
ms.prod: "applications"
ms.custom: template-how-to
---

# Grant and revoke API app roles using Microsoft Graph

When you grant API permissions to a client app in Azure Active Directory (Azure AD), the permission grants are recorded as objects that can be accessed, updated, or deleted like your data. Using Microsoft Graph to directly create permission grants is a programmatic alternative to [interactive consent](/azure/active-directory/manage-apps/consent-and-permissions-overview) and can be useful for automation scenarios, bulk management, or other custom operations in your organization.

In this guide, you'll learn how to grant and revoke app roles for an app using Microsoft Graph. **App roles**, also called *application permissions*, or *direct access permissions*, allow an app to call an API with its own identity.

> [!CAUTION]
> Be careful! Permissions granted programmatically are not subject to review or confirmation. They take effect immediately.

## Prerequisites

To complete these instructions, you need the following resources and privileges:

1. A working Azure AD tenant.
2. You'll run the requests in this article as a user. You must complete the following steps:
    1. Sign in to an app such as [Graph Explorer](https://developer.microsoft.com/graph/graph-explorer) or [Postman](/graph/use-postman) as a user with privileges to create applications in the tenant.
    2. In the app you've signed in to, consent to the *Application.Read.All* and *AppRoleAssignment.ReadWrite.All* delegated permissions on behalf of the signed-in user. You don't need to consent on behalf of your organization.
    3. Get the object ID of the client service principal to which you'll grant app roles. In this article, the client service principal is identified by ID `b0d9b9e3-0ecf-4bfd-8dab-9273dd055a94`.

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

<!-- {
  "blockType": "request",
  "name": "get-approles-for-microsoftgraph"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals?$filter=displayName eq 'Microsoft Graph'&$select=id,displayName,appId,appRoles
```

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

<!-- {
  "blockType": "request",
  "name": "get-approles-for-sp-approleassignedto"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/servicePrincipals/7ea9e944-71ce-443d-811c-71e8047b557a/appRoleAssignedTo
```

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

<!-- {
  "blockType": "request",
  "name": "revoke-approles-using-approleassignedto"
}-->
```msgraph-interactive
DELETE https://graph.microsoft.com/v1.0/servicePrincipals/7ea9e944-71ce-443d-811c-71e8047b557a/appRoleAssignedTo/47nZsM8O_UuNq5Jz3QValCxBBiqJea9Drc9CMK4Ru_M
```

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

+ [Grant and revoke API delegated permissions using Microsoft Graph](permissions-delegated-grant-msgraph.md)
+ [appRoleAssignment resource type](/graph/api/resources/approleassignment)