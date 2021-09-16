---
title: "List qnas"
description: "Get a list of the qna objects and their properties."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List qnas
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [qna](../resources/qna.md) objects and their properties.

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
GET /qnas
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

If successful, this method returns a `200 OK` response code and a collection of [qna](../resources/qna.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_qna"
}
-->
``` http
GET https://graph.microsoft.com/beta/qnas
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.qna)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.qna",
      "id": "dbc85a0d-5a0d-dbc8-0d5a-c8db0d5ac8db",
      "displayName": "String",
      "description": "String",
      "webUrl": "String",
      "lastModifiedBy": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "lastModifiedDateTime": "String (timestamp)",
      "availabilityStartDateTime": "String (timestamp)",
      "availabilityEndDateTime": "String (timestamp)",
      "languageTags": [
        "String"
      ],
      "platforms": [
        "String"
      ],
      "targetedVariations": [
        {
          "@odata.type": "microsoft.graph.answerVariant"
        }
      ],
      "keywords": {
        "@odata.type": "microsoft.graph.answerKeyword"
      },
      "state": "String",
      "isSuggested": "Boolean",
      "groupIds": [
        "String"
      ]
    }
  ]
}
```

