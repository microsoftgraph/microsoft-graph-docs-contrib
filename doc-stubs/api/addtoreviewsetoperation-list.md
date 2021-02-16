---
title: "List addToReviewSetOperations"
description: "Get a list of the addToReviewSetOperation objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List addToReviewSetOperations
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [addToReviewSetOperation](../resources/addtoreviewsetoperation.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET ** Collection URI for microsoft.graph.ediscovery.addToReviewSetOperation not found
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

If successful, this method returns a `200 OK` response code and a collection of [addToReviewSetOperation](../resources/addtoreviewsetoperation.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_addtoreviewsetoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta** Collection URI for microsoft.graph.ediscovery.addToReviewSetOperation not found
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.ediscovery.addToReviewSetOperation)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.ediscovery.addToReviewSetOperation",
      "id": "07ef20b0-20b0-07ef-b020-ef07b020ef07",
      "createdDateTime": "String (timestamp)",
      "completedDateTime": "String (timestamp)",
      "percentProgress": "Integer",
      "status": "String",
      "action": "String",
      "createdBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "resultInfo": {
        "@odata.type": "microsoft.graph.resultInfo"
      }
    }
  ]
}
```

