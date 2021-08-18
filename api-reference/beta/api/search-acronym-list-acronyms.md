---
title: "List acronyms"
description: "Get a list of the acronym objects and their properties."
author: "jakeost-msft"
localization_priority: Normal
ms.prod: "search"
doc_type: apiPageType
---

# List acronyms
Namespace: microsoft.graph.search

Get a list of the [acronym](../resources/acronym.md) objects and their properties.

## Permissions
One of the following permissions is required to call this api. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)| Global administrator, global reader, search administrator, search editor. |
|Delegated (personal Microsoft account)| Not supported. |
|Application| Not supported. |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /acronyms
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [acronym](../resources/acronym.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_acronym"
}
-->
``` http
GET https://graph.microsoft.com/beta/search/acronyms
```


### Response
**Note:** The response object shown here might be shortened for readability.
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

