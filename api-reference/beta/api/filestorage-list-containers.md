---
title: "List containers"
description: "Get a list of fileStorageContainers and their properties."
author: "tonchan-msft"
ms.localizationpriority: medium
ms.prod: "files"
doc_type: apiPageType
---

# List containers


Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [fileStorageContainer](../resources/filestoragecontainer.md) objects that are visible to the caller. The `containerTypeId` filter parameter is required.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see the [permissions reference](/graph/permissions-reference).
The application that calls this API must have write permissions to a fileStorageContainer for the respective container type.

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
GET /storage/fileStorage/containers?$filter=containerTypeId eq {containerTypeId}
GET /storage/fileStorage/containers?$filter=containerTypeId eq {containerTypeId} and viewpoint/effectiveRole eq 'principalOwner'
```

## Query parameters

This method required the `containerTypeId` parameter. It supports the `$expand` OData query parameter except for on the for **drive**, **permissions**, and **customProperties** properties. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [fileStorageContainer](../resources/filestoragecontainer.md) objects in the response body. Only a limited subset of properties is returned for each **fileStorageContainer**.

## Examples

### Request

The following example enumerates all containers of a given container type.


<!-- {
  "blockType": "request",
  "name": "list_filestoragecontainer"
}
-->
``` http
GET https://graph.microsoft.com/beta/storage/fileStorage/containers?$filter=containerTypeId eq {containerTypeId}
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

