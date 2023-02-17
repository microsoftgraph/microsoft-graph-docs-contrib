---
title: "bookmark resource type"
description: "A bookmark is an administrative answer in Microsoft Search results for common search queries in an organization. A bookmark has many properties which allow administrators to make common resources more accessible in their organization."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: resourcePageType
---

# bookmark resource type

Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A bookmark is an administrative answer in Microsoft Search results for common search queries in an organization. A bookmark has many properties which allow administrators to make common resources more accessible in their organization.

Inherits from [searchAnswer](../resources/search-searchAnswer.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bookmarks](../api/search-searchentity-list-bookmarks.md)|[microsoft.graph.search.bookmark](../resources/search-bookmark.md) collection|Get a list of the [bookmark](../resources/search-bookmark.md) objects and their properties.|
|[Create bookmark](../api/search-searchentity-post-bookmarks.md)|[microsoft.graph.search.bookmark](../resources/search-bookmark.md)|Create a new [bookmark](../resources/search-bookmark.md) object.|
|[Get bookmark](../api/search-bookmark-get.md)|[microsoft.graph.search.bookmark](../resources/search-bookmark.md)|Read the properties and relationships of a [bookmark](../resources/search-bookmark.md) object.|
|[Update bookmark](../api/search-bookmark-update.md)|[microsoft.graph.search.bookmark](../resources/search-bookmark.md)|Update the properties of a [bookmark](../resources/search-bookmark.md) object.|
|[Delete bookmark](../api/search-bookmark-delete.md)|None|Deletes a [bookmark](../resources/search-bookmark.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier (GUID) for the bookmark. Inherited from [entity](../resources/entity.md).|
|displayName|String|Bookmark name displayed in search results. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|description|String|Bookmark description shown on search results page. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|webUrl|String|Bookmark URL link. When users click this bookmark in search results, they will go to this URL. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user that created or last modified the bookmark. Inherited from [searchAnswer](../resources/search-searchAnswer.md). Read-only.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of when the bookmark is created or edited. Inherited from [searchAnswer](../resources/search-searchAnswer.md). Read-only. |
|categories|String collection|Categories commonly used to describe this bookmark. For example, IT and HR.|
|availabilityStartDateTime|DateTimeOffset|Timestamp of when the bookmark will start to appear as a search result. Set as `null` for always available.|
|availabilityEndDateTime|DateTimeOffset|Timestamp of when the bookmark will stop to appear as a search result. Set as `null` for always available.|
|languageTags|String collection|A list of language names that are geographically specific and that this bookmark can be viewed in. Each language tag value follows the pattern {language}-{region}. As an example, `en-us` is English as used in the United States. See [supported language tags](search-api-answers-overview.md#supported-language-tags) for the list of possible values.|
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems able to view this bookmark. Possible values are: `unknown`, `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `androidASOP`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answerVariant.md) collection|Variations of a bookmark for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.|
|powerAppIds|String collection|List of Power Apps associated with this bookmark. If users add existing Power Apps to a bookmark, they can complete tasks, such as to enter vacation time or to report expenses on the search results page.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerKeyword.md)|Keywords that trigger this bookmark to appear in search results.|
|state|microsoft.graph.search.answerState|State of the bookmark. Possible values are: `published`, `draft`, `excluded`, or `unknownFutureValue`.|
|isSuggested|Boolean|True if this bookmark was suggested to the admin by a user or was mined and suggested by Microsoft. Read-only.|
|groupIds|String collection|List of security groups able to view this bookmark.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.search.bookmark",
  "baseType": "microsoft.graph.search.searchAnswer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.search.bookmark",
  "id": "String (identifier)",
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
      "@odata.type": "microsoft.graph.search.answerVariant"
    }
  ],
  "powerAppIds": [
    "String"
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

