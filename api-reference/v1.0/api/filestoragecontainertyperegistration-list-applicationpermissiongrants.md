---
title: "List applicationPermissionGrants"
description: "List all app permission grants in a fileStorageContainerTypeRegistration."
author: "javieralvarezchiang"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---


# List applicationPermissionGrants

Namespace: microsoft.graph

List all [app permission grants](../resources/filestoragecontainertypeapppermissiongrant.md) in a [fileStorageContainerTypeRegistration](../resources/filestoragecontainertyperegistration.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestoragecontainertyperegistration-list-applicationpermissiongrants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainertyperegistration-list-applicationpermissiongrants-permissions.md)]

>**Note:**
> * When delegated tokens are used, either the SharePoint Embedded admin role or the Global admin role is required.
> * If the `FileStorageContainerTypeReg.Selected` permission is used, results are limited to [registrations](../resources/filestoragecontainertyperegistration.md) owned by the application that makes the call.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /storage/fileStorage/containerTypeRegistrations/{fileStorageContainerTypeRegistrationId}/applicationPermissionGrants
```

## Optional query parameters

This method supports the `$filter`, `$select`, `$orderby`, `$count`, `$top`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [fileStorageContainerTypeAppPermissionGrant](../resources/filestoragecontainertypeapppermissiongrant.md) objects in the response body.

## Examples

### Request
The following example shows how to list permission grants associated with a **fileStorageContainerTypeRegistration**.

<!-- {
  "blockType": "request",
  "name": "list_filestoragecontainertypeapppermissiongrant"
}
-->
```http
GET https://graph.microsoft.com/v1.0/storage/fileStorage/containerTypeRegistrations/21b52d99-7114-4c47-80b3-362b6a0bba3a/applicationPermissionGrants
```

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.fileStorageContainerTypeAppPermissionGrant)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
      "appId": "11335700-9a00-4c00-84dd-0c210f203f00",
      "delegatedPermissions": ["readContent","writeContent"],
      "applicationPermissions": ["full"]
    },
    {
      "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
      "appId": "d893fd02-3578-4c7f-bd85-12fc3358af48",
      "delegatedPermissions": ["read"],
      "applicationPermissions": ["read","write"]
    },
    {
      "@odata.type": "#microsoft.graph.fileStorageContainerTypeAppPermissionGrant",
      "appId": "33225700-9a00-4c00-84dd-0c210f203f01",
      "delegatedPermissions": ["full"],
      "applicationPermissions": ["none"]
    }
  ]
}
```

