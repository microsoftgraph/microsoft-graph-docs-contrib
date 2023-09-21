---
author: "vanshisingh"
title: "List recycleBinItems"
description: "Get a list of recycleBinItems under the specified site or storageContainer."
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---

# List recycleBinItems

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Get a list of [recycleBinItems](../resources/recyclebinitem.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                                                          |
|:---------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------|
| Delegated (work or school account)     | Files.Read, Files.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |


## HTTP request

<!-- { "blockType": "ignored" } -->

``` http
GET /sites/{siteId}/recycleBin/items
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name          |Description              |
|:-------------|:------------------------|
|Authorization |Bearer {token}. Required.|

## Request Body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [recycleBinItem](../resources/recyclebinitem.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_recyclebinitem"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/{sitesId}/recycleBin/items
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.recycleBinItem)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.recycleBinItem",
      "id": "dd933af6-2ec8-31cb-876d-2ce30211a898",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "createdDateTime": "String (timestamp)",
      "description": "String",
      "eTag": "String",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "name": "String",
      "parentReference": {
        "@odata.type": "microsoft.graph.itemReference"
      },
      "webUrl": "String",
      "size": "Integer",
      "deletedDateTime": "String (timestamp)",
      "deletedFromLocation": "String"
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
