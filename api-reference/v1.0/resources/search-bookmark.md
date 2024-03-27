---
title: "bookmark resource type"
description: "Represents a bookmark that is an administrative answer in Microsoft Search results for common search queries in an organization."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
---

# bookmark resource type

Namespace: microsoft.graph.search

Represents a bookmark that is an administrative answer in Microsoft Search results for common search queries in an organization. A bookmark has many properties that allow administrators to make common resources more accessible in their organization.

Inherits from [searchAnswer](../resources/search-searchanswer.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List bookmarks](../api/search-searchentity-list-bookmarks.md)|[microsoft.graph.search.bookmark](../resources/search-bookmark.md) collection|Get a list of the [bookmark](../resources/search-bookmark.md) objects and their properties.|
|[Create bookmark](../api/search-searchentity-post-bookmarks.md)|[microsoft.graph.search.bookmark](../resources/search-bookmark.md)|Create a new [bookmark](../resources/search-bookmark.md) object.|
|[Get bookmark](../api/search-bookmark-get.md)|[microsoft.graph.search.bookmark](../resources/search-bookmark.md)|Read the properties and relationships of a [bookmark](../resources/search-bookmark.md) object.|
|[Update bookmark](../api/search-bookmark-update.md)|[microsoft.graph.search.bookmark](../resources/search-bookmark.md)|Update the properties of a [bookmark](../resources/search-bookmark.md) object.|
|[Delete bookmark](../api/search-bookmark-delete.md)|None|Delete a [bookmark](../resources/search-bookmark.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|availabilityEndDateTime|DateTimeOffset|Date and time when the bookmark stops appearing as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|availabilityStartDateTime|DateTimeOffset|Date and time when the bookmark starts to appear as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|categories|String collection|Categories commonly used to describe this bookmark. For example, `IT` and `HR`.|
|description|String|The bookmark description that is shown on the search results page. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|displayName|String|The bookmark name that is displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|groupIds|String collection|The list of security groups that are able to view this bookmark.|
|isSuggested|Boolean|`True` if this bookmark was suggested to the admin, by a user, or was mined and suggested by Microsoft. Read-only.|
|id|String|The unique identifier (GUID) for the bookmark. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerKeyword.md)|Keywords that trigger this bookmark to appear in search results.|
|languageTags|String collection|A list of geographically specific language names in which this bookmark can be viewed. Each language tag value follows the pattern {language}-{region}. For example, `en-us` is English as used in the United States. For the list of possible values, see [Supported language tags](../resources/search-api-answers-overview.md#supported-language-tags).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|Details of the user who created or last modified the bookmark. Inherited from [searchAnswer](../resources/search-searchanswer.md). Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time when the bookmark was created or last edited. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [searchAnswer](../resources/search-searchanswer.md). Read-only. |
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems that are able to view this bookmark. Possible values are: `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidASOP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`.|
|powerAppIds|String collection|List of Power Apps associated with this bookmark. If users add existing Power Apps to a bookmark, they can complete tasks directly on the search results page, such as entering vacation time or reporting expenses.|
|state|microsoft.graph.search.answerState|State of the bookmark. Possible values are: `published`, `draft`, `excluded`, `unknownFutureValue`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answervariant.md) collection|Variations of a bookmark for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings apply to all variations.|
|webUrl|String|The URL link for the bookmark. When users select this bookmark from the search results, they're directed to the specified URL. Inherited from [searchAnswer](../resources/search-searchanswer.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
  "availabilityEndDateTime": "String (timestamp)",
  "availabilityStartDateTime": "String (timestamp)",
  "categories": ["String"],
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
  "powerAppIds": ["String"],
  "state": "String",
  "targetedVariations": [{"@odata.type": "microsoft.graph.search.answerVariant"}],
  "webUrl": "String"
}
```
