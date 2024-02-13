---
title: "Delete custom properties from a fileStorageContainer"
description: "Delete custom properties from a fileStorageContainer"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Delete custom properties from a fileStorageContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete one or multiple custom properties from a [fileStorageContainer](../resources/filestoragecontainer.md) by assigning a **null** value to the properties.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "filestoragecontainer_delete_customproperty" } -->
[!INCLUDE [permissions-table](../includes/permissions/filestoragecontainer-delete-customproperty-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /storage/fileStorage/containers/{containerId}/customProperties
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-type}| application/json. Required.|

## Request body
In the request body, supply the custom properties for deletion by setting them to null.

## Response
If successful, this action returns a `200 OK` response code.

## Examples

### Request
The following example deletes multiple custom properties.
<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainer_customproperty"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/storage/fileStorage/containers/{containerId}/customProperties
Content-type: application/json

{
  "clientUniqueId": null,
  "color": null
}
```

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 Ok
```

