---
title: "qna resource type"
description: "Represents a question and answer (Q&A) in Microsoft Search."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
---

# qna resource type

Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a question and answer (Q&A) in Microsoft Search. Q&As are administrative answer results in the search results page that provide answers for specific search keywords. Q&As allow administrators to answer the user's questions directly in search instead of providing a link to a webpage. A Q&A has many properties that allow administrators to make common resources more accessible in their organization.

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
|availabilityEndDateTime|DateTimeOffset|Date and time when the QnA stops appearing as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|availabilityStartDateTime|DateTimeOffset|Date and time when the QnA starts to appear as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|Answer that is displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|displayName|String|Question that is displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|groupIds|String collection|The list of security groups that are able to view this QnA.|
|id|String|The unique identifier (GUID) for the QnA. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|isSuggested|Boolean| `True` if a user or Microsoft suggested this QnA to the admin. Read-only.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerkeyword.md)|Keywords that trigger this QnA to appear in search results.|
|languageTags|String collection|A list of geographically specific language names in which this QnA can be viewed. Each language tag value follows the pattern {language}-{region}. For example, `en-us` is English as used in the United States. For the list of possible values, see [Supported language tags](../resources/search-api-answers-overview.md#supported-language-tags). |
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user who created or last modified the QnA. Inherited from [searchAnswer](../resources/search-searchanswer.md). Read-only. |
|lastModifiedDateTime|DateTimeOffset| Date and time when the QnA was created or last edited. Inherited from [searchAnswer](../resources/search-searchanswer.md). Read-only.|
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems that are able to view this QnA. Possible values are: `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidASOP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`.|
|state|microsoft.graph.search.answerState|State of the QnA. Possible values are: `published`, `draft`, `excluded`, `unknownFutureValue`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answervariant.md) collection|Variations of a QnA for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings apply to all variations.|
|webUrl|String|The URL link for the QnA. When users select this QnA from the search results, they're directed to the specified URL. Inherited from [searchAnswer](../resources/search-searchanswer.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
  "groupIds": ["String"],
  "id": "String (identifier)",
  "isSuggested": "Boolean",
  "keywords": {"@odata.type": "microsoft.graph.search.answerKeyword"},
  "languageTags": ["String"],
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "platforms": ["String"],
  "state": "String",
  "targetedVariations": [{"@odata.type": "microsoft.graph.search.answerVariant"}],
  "webUrl": "String"
}
```
