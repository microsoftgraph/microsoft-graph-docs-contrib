---
title: "List fileStorageContainer custom properties"
description: "List the custom properties of a fileStorageContainer"
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# List fileStorageContainer custom properties

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the custom properties of a fileStorageContainer. The caller can retrieve all custom properties or get a specific property by name.

The application calling this API must have permission to read fileStorageContainers for the respective container type.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).

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
GET /storage/fileStorage/containers/{containerId}/customProperties
GET /storage/fileStorage/containers/{containerId}/customProperties/{propertyName}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request
The following example shows how to get a custom property named "clientUniquieId".
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.list-customproperty-1"
}
-->
``` http
GET /storage/fileStorage/containers/{containerId}/customProperties/clientUniqueId
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
Content-type: application/json

{
  "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
  "isSearchable": true
}

```
### Request
The following example shows how to get all the custom properties of a fileStorageContainer.
<!-- {
  "blockType": "request",
  "name": "filestoragecontainerthis.list-customproperty-2"
}
-->
``` http
GET /storage/fileStorage/containers/{containerId}/customProperties/
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
Content-type: application/json

{
  "clientUniqueId": {
    "value": "c5d88310-1fc7-49be-80ca-e7d7a11e638b",
    "isSearchable": true
  },
  "color": {
    "value": "purple"
  }
}
```
