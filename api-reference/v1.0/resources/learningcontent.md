---
title: "learningContent resource type"
description: "Represents the metadata of content for employee learning."
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-learning"
doc_type: resourcePageType
---

# learningContent resource type

Namespace: microsoft.graph

Represents the metadata of content for employee learning.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List learningContents](../api/learningprovider-list-learningcontents.md)|[learningContent](../resources/learningcontent.md) collection|Get a list of the [learningContent](../resources/learningcontent.md) resources and their properties.|
|[Get learningContent](../api/learningcontent-get.md)|[learningContent](../resources/learningcontent.md)|Get the specified [learningContent](../resources/learningcontent.md) resource which represents the metadata of the specified provider's ingested content.|
|[Update learningContent](../api/learningcontent-update.md)|[learningContent](../resources/learningcontent.md)|Update the properties of a [learningContent](../resources/learningcontent.md) object.|
|[Delete learningContent](../api/learningprovider-delete-learningcontents.md)|None|Delete a [learningContent](../resources/learningcontent.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|additionalTags|String collection|Keywords, topics, and other tags associated with the learning content. Optional.|
|contentWebUrl|String|The content web URL for the learning content. Required.|
|contributors|String collection|The authors, creators, or contributors of the learning content. Optional.|
|createdDateTime|DateTimeOffset|The date and time when the learning content was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Optional.|
|description|String|The description or summary for the learning content. Optional.|
|duration|Duration|The duration of the learning content in seconds. The value is represented in ISO 8601 format for durations. Optional.|
|externalId|String|Unique external content ID for the learning content. Required.|
|format|String|The format of the learning content. For example, `Course`, `Video`, `Book`, `Book Summary`, `Audiobook Summary`. Optional.|
|id|String|The unique identifier for the learning content. Not nullable. Read-only. Inherited from [entity](../resources/entity.md).|
|isActive|Boolean|Indicates whether the content is active or not. Inactive content doesn't show up in the UI. The default value is `true`. Optional.|
|isPremium|Boolean|Indicates whether the learning content requires the user to sign-in on the learning provider platform or not. The default value is `false`. Optional.|
|isSearchable|Boolean|Indicates whether the learning content is searchable or not. The default value is `true`. Optional.|
|languageTag|String|The language of the learning content, for example, `en-us` or `fr-fr`. Required.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the learning content was last modified. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Optional.|
|numberOfPages|Int32|The number of pages of the learning content, for example, `9`. Optional.|
|skillTags|String collection|The skills tags associated with the learning content. Optional.|
|sourceName|String|The source name of the learning content, such as `LinkedIn Learning` or `Coursera`. Optional.|
|thumbnailWebUrl|String|The URL of learning content thumbnail image. Optional.|
|title|String|The title of the learning content. Required.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningContent",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.learningContent",
    "additionalTags": [
        "String"
    ],
    "contentWebUrl": "String",
    "contributors": [
        "String"
    ],
    "createdDateTime": "String (timestamp)",
    "description": "String",
    "duration": "String (duration)",
    "externalId": "String",
    "format": "String",
    "id": "String (identifier)",
    "isActive": "Boolean",
    "isPremium": "Boolean",
    "isSearchable": "Boolean",
    "languageTag": "String",
    "lastModifiedDateTime": "String (timestamp)",
    "numberOfPages": "Integer",
    "skillTags": [
        "String"
    ],
    "sourceName": "String",
    "thumbnailWebUrl": "String",
    "title": "String"
}
```
