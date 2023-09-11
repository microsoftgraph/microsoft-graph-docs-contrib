---
title: "qna resource type"
description: "Represents a question and answer (Q&A) in Microsoft Search."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# qna resource type

Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Q&As are administrative answer results in the search results page which provide answers for specific search keywords. Q&As allow administrators to answer the user's questions directly in search instead of providing a link to a webpage. A Q&A has many properties which allow administrators to make common resources more accessible in their organization.

Inherits from [searchAnswer](../resources/search-searchanswer.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List qnas](../api/search-searchentity-list-qnas.md)|[microsoft.graph.search.qna](../resources/search-qna.md) collection|Get a list of the [qna](../resources/search-qna.md) objects and their properties.|
|[Create qna](../api/search-searchentity-post-qnas.md)|[microsoft.graph.search.qna](../resources/search-qna.md)|Create a new [qna](../resources/search-qna.md) object.|
|[Get qna](../api/search-qna-get.md)|[microsoft.graph.search.qna](../resources/search-qna.md)|Read the properties and relationships of a [qna](../resources/search-qna.md) object.|
|[Update qna](../api/search-qna-update.md)|[microsoft.graph.search.qna](../resources/search-qna.md)|Update the properties of a [qna](../resources/search-qna.md) object.|
|[Delete qna](../api/search-qna-delete.md)|None|Delete a [qna](../resources/search-qna.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|availabilityEndDateTime|DateTimeOffset|Timestamp of when the qna will stop to appear as a search result. Set as `null` for always available.|
|availabilityStartDateTime|DateTimeOffset|Timestamp of when the qna will start to appear as a search result. Set as `null` for always available.|
|description|String|Answer displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|displayName|String|Question displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|groupIds|String collection|List of security groups able to view this qna.|
|id|String|The unique identifier (GUID) for the qna. Inherited from [entity](../resources/entity.md).|
|isSuggested|Boolean| True if this qna was suggested to the admin by a user or was mined and suggested by Microsoft. Read-only.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerkeyword.md)|Keywords that trigger this qna to appear in search results.|
|languageTags|String collection|A list of language names that are geographically specific and that this QnA can be viewed in. Each language tag value follows the pattern {language}-{region}. As an example, `en-us` is English as used in the United States. For the list of possible values, see [supported language tags](search-api-answers-overview.md#supported-language-tags). |
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user that created or last modified the qna. Inherited from [searchAnswer](../resources/search-searchanswer.md). Read-only. |
|lastModifiedDateTime|DateTimeOffset| Timestamp of when the qna is created or edited. Inherited from [searchAnswer](../resources/search-searchanswer.md). Read-only.|
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems able to view this qna. Possible values are: `unknown`, `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `androidASOP`.|
|state|microsoft.graph.search.answerState|State of the qna. Possible values are: `published`, `draft`, `excluded`, or `unknownFutureValue`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answervariant.md) collection|Variations of a qna for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.|
|webUrl|String|Qna URL link. When users click this qna in search results, they will go to this URL. Inherited from [searchAnswer](../resources/search-searchanswer.md).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.search.qna",
  "baseType": "microsoft.graph.search.searchAnswer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.qna",
  "availabilityEndDateTime": "String (timestamp)",
  "availabilityStartDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "groupIds": [
    "String"
  ],
  "id": "String (identifier)",
  "isSuggested": "Boolean",
  "keywords": {
    "@odata.type": "microsoft.graph.search.answerKeyword"
  },
  "languageTags": [
    "String"
  ],
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "platforms": [
    "String"
  ],
  "state": "String",
  "targetedVariations": [
    {
      "@odata.type": "microsoft.graph.search.answerVariant"
    }
  ],
  "webUrl": "String"
}
```

