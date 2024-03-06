---
title: "List acronyms"
description: "Get a list of the acronym objects and their properties."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# List acronyms

Namespace: microsoft.graph.search

Get a list of the [acronym](../resources/search-acronym.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "search_searchentity_list_acronyms" } -->
[!INCLUDE [permissions-table](../includes/permissions/search-searchentity-list-acronyms-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /search/acronyms
```

## Optional query parameters

This method supports the `select`, `expand`, `filter`, `orderBy`, `maxTop`, and `count` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.search.acronym](../resources/search-acronym.md) objects in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_acronym"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/search/acronyms
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.search.acronym)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

[
  {
    "id": "733b26d5-af76-4eea-ac69-1a0ce8716897",
    "displayName": "DNN",
    "standsFor": "Deep Neural Network",
    "description": "A deep neural network is a neural network with a certain level of complexity, a neural network with more than two layers.",
    "webUrl": "http://microsoft.com/deep-neural-network",
    "state": "published",
    "lastModifiedDateTime": "2016-03-21T20:01:37Z",
    "lastModifiedBy": {
      "user": {
          "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
          "displayName": "Amalie Larsen"
      }
    }
  }
]
```
