---
title: "Get bookmark"
description: "Read the properties and relationships of a bookmark object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get bookmark
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [bookmark](../resources/bookmark.md) object.

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
GET /bookmarks/{bookmarksId}
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

If successful, this method returns a `200 OK` response code and a [bookmark](../resources/bookmark.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_bookmark"
}
-->
``` http
GET https://graph.microsoft.com/beta/bookmarks/{bookmarksId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.bookmark"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.bookmark",
    "id": "4e743de1-3de1-4e74-e13d-744ee13d744e",
    "displayName": "String",
    "description": "String",
    "webUrl": "String",
    "lastModifiedBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "lastModifiedDateTime": "String (timestamp)",
    "categories": [
      "String"
    ],
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
    "powerAppIds": [
      "String"
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
}
```

