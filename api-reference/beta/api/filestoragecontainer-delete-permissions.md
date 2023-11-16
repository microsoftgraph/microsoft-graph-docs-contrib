---
title: "Delete permissions from a fileStorageContainer"
description: "Delete permissions from a fileStorageContainer"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Delete permissions from a fileStorageContainer

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove permissions from a fileStorageContainer.

The application calling this API must have permission to delete permissions from fileStorageContainers for the respective container type.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Application|FileStorageContainer.Selected|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /storage/fileStorage/containers/{containerId}/permissions/{permissionId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|


## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.delete-permissions"
}
-->
``` http
DELETE /storage/fileStorage/containers/{containerId}/permissions/{permissionId}
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

