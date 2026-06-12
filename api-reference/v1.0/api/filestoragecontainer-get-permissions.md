---
title: "Get fileStorageContainer permission"
description: "Get a specific permission from a fileStorageContainer object."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 05/19/2026
---

# Get fileStorageContainer permission

Namespace: microsoft.graph

Get a specific [permission](../resources/permission.md) from a [fileStorageContainer](../resources/filestoragecontainer.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_get_permissions" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-get-permissions-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /storage/fileStorage/containers/{containerId}/permissions/{permissionId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [permission](../resources/permission.md) object in the response body.

## Examples

### Request

The following example shows a request to get a permission by ID.

<!-- {
  "blockType": "request",
  "name": "get_filestoragecontainer_permissions"
}
-->
```http
GET https://graph.microsoft.com/v1.0/storage/fileStorage/containers/b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z/permissions/cmVhZGVyX2k6MCMuZnxtZW1iZXJzaGlwfGFkZWxldkBjb250b3NvLmNvbQ
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permission"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.permission",
  "id": "cmVhZGVyX2k6MCMuZnxtZW1iZXJzaGlwfGFkZWxldkBjb250b3NvLmNvbQ",
  "roles": [
    "reader"
  ],
  "grantedToV2": {
    "user": {
      "id": "71392b2f-1765-406e-86af-5907d9bdb2ab",
      "displayName": "Adele Vance",
      "userPrincipalName": "adelev@contoso.com",
      "email": "adelev@contoso.com"
    }
  }
}
```

