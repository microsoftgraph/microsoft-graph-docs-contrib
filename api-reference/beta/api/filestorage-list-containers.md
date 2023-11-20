---
title: "List fileStorageContainers"
description: "Get a list of fileStorageContainers and their properties."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# List fileStorageContainers

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the list of [fileStorageContainer](../resources/filestoragecontainer.md) objects visible to the caller. The containerTypeId filter parameter is required. The application calling these APIs must have permissions to read fileStorageContainers for the respective container type.

> [!Note]
> Only a limited subset of properties is returned for each fileStorageContainer. The $expand operation isn't supported for drive, permissions, and customProperties properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](../../../concepts/permissions-reference.md).

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
GET /storage/fileStorage/containers?$filter=containerTypeId eq {containerTypeId}
GET /storage/fileStorage/containers?$filter=containerTypeId eq {containerTypeId} and viewpoint/effectiveRole eq 'principalOwner'
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [fileStorageContainer](../resources/filestoragecontainer.md) objects in the response body.

## Examples

### Request

The following example shows enumerates all tenant-owned containers of a given type.

<!-- {
  "blockType": "request",
  "name": "list_filestoragecontainer"
}
-->
``` http
GET /storage/fileStorage/containers?$filter=containerTypeId eq {containerTypeId}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.fileStorageContainer)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/storage/fileStorage/containers",
  "@odata.count": 1,
  "value": [
    {
      "@odata.type": "#microsoft.graph.fileStorageContainer",
      "id": "b!ISJs1WRro0y0EWgkUYcktDa0mE8zSlFEqFzqRn70Zwp1CEtDEBZgQICPkRbil_5Z",
      "displayName": "My File Storage Container",
      "containerTypeId": "e2756c4d-fa33-4452-9c36-2325686e1082",
      "createdDateTime": "2021-11-24T15:41:52.347Z"
    }
  ]
}
```

