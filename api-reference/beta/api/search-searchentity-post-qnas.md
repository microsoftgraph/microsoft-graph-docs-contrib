---
title: "Create qna"
description: "Create a new qna object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.date: 09/21/2021
ms.prod: "search"
doc_type: apiPageType
---

# Create qna
Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [qna](../resources/search-qna.md) object.

## Permissions
One of the following permissions is required to call this api. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /qnas
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [qna](../resources/search-qna.md) object.

The following table shows the properties that are available when you create a [qna](../resources/search-qna.md).

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Question displayed in search results. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|description|String|Answer displayed in search results. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|webUrl|String|Qna URL link. When users click this qna in search results they will go to this URL. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|availabilityStartDateTime|DateTimeOffset|Date qna will start to appear as a search result. Set as `null` for always available.|
|availabilityEndDateTime|DateTimeOffset|Date qna will stop to appear as a search result. Set as `null` for always available.|
|languageTags|String collection|List of countries or regions able to view this qna.|
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems able to view this qna. Possible values are: `unknown`, `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`,`windows10AndLater`, `androidWorkProfile`, `androidASOP`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answerVariant.md) collection|Variations of a qna for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerKeyword.md)|Keywords that trigger this qna to appear in search results.|
|state|microsoft.graph.search.answerState|State of the qna. Possible values are: `published`, `draft`, `excluded`.|
|groupIds|String collection|List of security groups able to view this qna.|



## Response

If successful, this method returns a `201 Created` response code with the ID of the question and answer created.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_qna_from_qnas"
}-->
```http
POST https://graph.microsoft.com/beta/search/qnas
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.qna",
  "displayName": "String",
  "description": "String",
  "webUrl": "String",
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
      "@odata.type": "microsoft.graph.search.answerVariant"
    }
  ],
  "keywords": {
    "@odata.type": "microsoft.graph.search.answerKeyword"
  },
  "state": "String",
  "isSuggested": "Boolean",
  "groupIds": [
    "String"
  ]
}
```


### Response
Here is an example of the response.
**Note:** The response object shown here is truncated for brevity. All of the properties will be returned from an actual call.
<!--{
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.qna"
}-->
```http
HTTP/1.1 201 CREATED
Location: /733b26d5-af76-4eea-ac69-1a0ce8716897
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897"
}
```

