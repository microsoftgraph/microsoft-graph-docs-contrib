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
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference). The application calling this API must have write permissions to fileStorageContainers for the respective container type.

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|FileStorageContainer.Selected|
|Delegated (personal Microsoft account)|Not supported.|
|Application|FileStorageContainer.Selected|

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
|Authorization|Bearer {token}. Required.|
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

