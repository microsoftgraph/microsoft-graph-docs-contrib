---
author: "vanshisingh"
title: "List recycleBinItems"
description: "Get a list of recycleBinItems under the specified site or storageContainer."
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---

# List recycleBinItems

Get a list of [recycleBinItems](../resources/recyclebinitem.md) under the specified site or storageContainer.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                                                          |
|:---------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------|
| Delegated (work or school account)     | Files.Read, Files.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All, FileStorageContainer.Selected |
| Delegated (personal Microsoft account) | FileStorageContainer.Selected                                                                                                        |
| Application                            | FileStorageContainer.Selected                                                                                                        |

> **Note:** The `FileStorageContainer.Selected` permission is required for operations with storageContainer recycle bins.

## HTTP request

<!-- { "blockType": "ignored" } -->

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

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [recycleBinItem](../resources/recyclebinitem.md) objects in the response body.

## Examples

### Example 1: List recycleBinItems under a specific site

The following example shows a request that lists recycleBin items under a specific site.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_recycleBinItems_site"
}-->

``` http
GET https://graph.microsoft.com/beta/sites/6fefbdf8-e04b-4b66-93df-5ca2d3d4d7ec/recycleBin/items
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.recycleBinItem)"
} -->
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

### Example 2: List recycleBinItems under a specific storageContainer

The following example shows a request that lists recycleBin items under a specific storageContainer.

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_recycleBinItems_storageContainer",
  "sampleKeys": ["b!6XpSztFy9E2yOmBRc6UvE17Un8QjGtVKlBDSEvy3yq2qLiqRB1RCQKYj3Omp9ReH"]
}-->

``` http
GET https://graph.microsoft.com/beta/storageContainers/b!6XpSztFy9E2yOmBRc6UvE17Un8QjGtVKlBDSEvy3yq2qLiqRB1RCQKYj3Omp9ReH/recycleBin/items
```

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.recycleBinItem)"
} -->
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
