---
title: "Delete fileStorageContainer"
description: "Delete a fileStorageContainer object."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# Delete fileStorageContainer
Namespace: microsoft.graph



Delete a [fileStorageContainer](../resources/filestoragecontainer.md) object. This is a non-restorable deletion. The application calling this API must have permissions to delete containers of the containerType the container belongs to.

For Delegated calls, if container has a principalOwner member then the fileStorageContainer can only be deleted by its principalOwner. A principalOwner member is always present for each container in the Consumer space.


## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Delegated (personal Microsoft account)|FileStorageContainer.Selected|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /storage/fileStorage/containers/{containerId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_filestoragecontainer"
}
-->
``` http
DELETE /storage/fileStorage/containers/{containerId}
```


### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

