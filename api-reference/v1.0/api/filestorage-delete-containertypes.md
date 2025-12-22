---
title: "Delete fileStorageContainerType"
description: "Delete a fileStorageContainerType object from the tenant."
author: "javieralvarezchiang"
ms.date: 11/12/2025
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
---

# Delete fileStorageContainerType

Namespace: microsoft.graph

Delete a [fileStorageContainerType](../resources/filestoragecontainertype.md) object from the tenant. A **fileStorageContainerType** can only be deleted if no [registrations](../resources/filestoragecontainertyperegistration.md) are associated with it in any tenant.

>**Note**: Currently, only trial **fileStorageContainerType** objects can be deleted.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "filestorage-delete-containertypes-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/filestorage-delete-containertypes-permissions.md)]

>**Note:**
> Either the SharePoint Embedded admin role or the Global admin role is required to call this API.

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

The following example shows how to delete a **fileStorageContainerType**.

>**Note**: Currently, only trial **fileStorageContainerType** objects can be deleted. If you attempt to delete any other type of container, the request results in a `400 Bad Request`.

<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainertype"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/storage/fileStorage/containerTypes/de988700-d700-020e-0a00-0831f3042f00

```

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
