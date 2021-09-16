---
title: "Create bookmark"
description: "Create a new bookmark object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create bookmark
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [bookmark](../resources/bookmark.md) object.

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
POST /bookmarks
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [bookmark](../resources/bookmark.md) object.

The following table shows the properties that are required when you create the [bookmark](../resources/bookmark.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|displayName|String|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md)|
|description|String|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md)|
|webUrl|String|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md)|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md)|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md)|
|categories|String collection|**TODO: Add Description**|
|availabilityStartDateTime|DateTimeOffset|**TODO: Add Description**|
|availabilityEndDateTime|DateTimeOffset|**TODO: Add Description**|
|languageTags|String collection|**TODO: Add Description**|
|platforms|devicePlatformType collection|**TODO: Add Description**. The possible values are: `android`, `androidForWork`, `iOS`, `macOS`, `windowsPhone81`, `windows81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidAOSP`.|
|targetedVariations|[answerVariant](../resources/answervariant.md) collection|**TODO: Add Description**|
|powerAppIds|String collection|**TODO: Add Description**|
|keywords|[answerKeyword](../resources/answerkeyword.md)|**TODO: Add Description**|
|state|answerState|**TODO: Add Description**. The possible values are: `published`, `draft`, `excluded`.|
|isSuggested|Boolean|**TODO: Add Description**|
|groupIds|String collection|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [bookmark](../resources/bookmark.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_bookmark_from_bookmarks"
}
-->
``` http
POST https://graph.microsoft.com/beta/bookmarks
Content-Type: application/json
Content-length: 657

{
  "@odata.type": "#microsoft.graph.bookmark",
  "displayName": "String",
  "description": "String",
  "webUrl": "String",
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
HTTP/1.1 201 Created
Content-Type: application/json

{
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
```

