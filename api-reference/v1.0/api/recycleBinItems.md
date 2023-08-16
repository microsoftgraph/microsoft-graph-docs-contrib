---
author: vanshisingh
ms.date: 02/08/2023
title: Get recycleBinItem 
description: "Retrieve the list of recycleBinItem."
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---
# Get recycleBinItem

Retrieve the list of [recycleBinItem](../resources/recycleBinItem.md) resources under the specified site or storageContainer.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions.
The FileStorageContainer.Selected permission is required for operations with storageContainer recycle bins.

|Permission type                       | Permissions (from least to most privileged)|
|:-------------------------------------|:-----------------------------------------|
|Delegated (work or school account)    | Files.Read, Files.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All, FileStorageContainer.Selected |
|Delegated (personal Microsoft account) | FileStorageContainer.Selected                           |
|Application                           | FileStorageContainer.Selected                           |

<!-- {
"blockType": "ignored",
}-->

## HTTP request

``` http
GET /sites/{siteId}/recycleBin/items
```

``` http
GET /storageContainers/{containerId}/recycleBin/items
```

## Request headers

|Name          |Description              |
|:-------------|:------------------------|
|Authorization |Bearer {token}. Required.|

## Request Body

Do not supply a request body for this method

## Response

If successful, this method returns a `200 OK` response code and returns a collection of [microsoft.graph.recycleBinItem](../resources/recycleBinItem.md) in the response body.

## Examples

The following example requests the list of recycleBin items under a specific site.

### Request
<!-- {
"blockType": "ignored"
}-->

``` http
GET /sites/6fefbdf8-e04b-4b66-93df-5ca2d3d4d7ec/recycleBin/items
```

``` http
GET /storageContainers/b!6XpSztFy9E2yOmBRc6UvE17Un8QjGtVKlBDSEvy3yq2qLiqRB1RCQKYj3Omp9ReH/recycleBin/items
```

<!-- {
"blockType": "ignored"
}-->

### Response

``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": [
    {
      "id": "5d625d33-338c-4a77-a98a-3e287116440c",
      "name": "document.docx",
      "size": 1024,
      "deletedDateTime": "2022-04-25T20:11:51Z"
    }
  ]
}
```

<!-- {
"type": "#page.annotation",
"section": "documentation"
}-->
