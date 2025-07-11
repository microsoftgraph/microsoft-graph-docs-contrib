---
title: "Delete fileStorageContainerType"
description: "Delete a fileStorageContainerType object."
author: "javieralvarezchiang"
ms.date: 06/30/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Delete fileStorageContainerType

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [fileStorageContainerType](../resources/filestoragecontainertype.md) object from the tenant. It can only be deleted if there are no fileStorageContainerTypeRegistrations associated
with it in any tenant.

>**Note**: At this time, only Trial fileStorageContainerTypes can be deleted.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

SharePoint Embedded admin or Global admin role is required.
<!-- {
  "blockType": "permissions",
  "name": "filestorage-delete-containertypes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-delete-containertypes-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /storage/fileStorage/containerTypes/{fileStorageContainerTypeId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

Delete a fileStorageContainerType

<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainertype"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Request

Delete a standard fileStorageContainerType (currently not supported).


<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainertype"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/storage/fileStorage/containerTypes/52a2630c-5e6a-41ff-8645-15406bafe66a
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 400 Bad Request
```

