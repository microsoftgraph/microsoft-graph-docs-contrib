---
title: "List deviceTemplate owners"
description: "List owners of a device template."
author: "sofia-geislinger"
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
ms.date: 11/24/2024
---

# List deviceTemplate owners

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get owners of a [deviceTemplate](../resources/devicetemplate.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "devicetemplate-list-owners-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/devicetemplate-list-owners-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /directory/templates/deviceTemplates/{id}/owners
```
> **Note:** The `{id}` in the request URL is the value of the **id** property of the device template.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request

Don't supply a request body for this method.

## Response

- If successful, this method returns a `200 OK` response code and a collection of [serviceprincipal](../resources/serviceprincipal.md) objects in the response body.
- Reference [MSGraph error responses and resource types](/graph/errors) for more information regarding general error codes and error conditions.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "devicetemplate-list-owners-permissions"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/templates/deviceTemplates/00f1e7a4-de6d-4070-84df-8aab629c4d1e/owners
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.servicePrincipal"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directoryObjects",
  "value": [
    {
      "@odata.type": "#microsoft.graph.servicePrincipal",
      "id": "4vfaf3ac-5122-4a25-98d8-b32c091f441f",
      "accountEnabled": true,
      "alternativeNames": [],
      "createdDateTime": "2024-09-11T21:21:25Z",
      "appDisplayName": "test",
      "appId": "1a9da825-c78b-4531-afcf-c9443adaa442",
      "appOwnerOrganizationId": "5ea2e292-4586-4888-486a-a0661219fdab",
      "appRoleAssignmentRequired": false,
      "displayName": "test",
      "isAuthorizationServiceEnabled": false,
      "notificationEmailAddresses": [],
      "publisherName": "Workplace Join Android",
      "samlSLOBindingType": "httpRedirect",
      "servicePrincipalNames": [
        "1a9da825-ch8b-4531-afcf-c9443adaa442"
      ],
      "servicePrincipalType": "Application",
      "signInAudience": "AzureADMyOrg",
      "tags": [
        "HideApp",
        "WindowsAzureActiveDirectoryIntegratedApp"
      ]
    }
  ]
}
```
