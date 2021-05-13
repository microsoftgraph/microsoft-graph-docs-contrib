---
title: "serviceAnnouncementBase resource type"
description: "A base type for serviceHealthIssue and serviceUpdateMessage."
author: "payi (GitHub name payiAzure)"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# serviceAnnouncementBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A base type for serviceHealthIssue and serviceUpdateMessage.

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|details|[keyValuePair](../resources/keyvaluepair.md) collection|More details about service issue/message that don't need to be filter based properties are put in this key value pair collection|
|endDateTime|DateTimeOffset|The end time of the service issue/message|
|id|String|The id of the service issue/message|
|lastModifiedDateTime|DateTimeOffset|The last modified time of the serivce issue/message|
|startDateTime|DateTimeOffset|The start time of the service issue/message|
|title|String|The title of the service issue/message|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.serviceAnnouncementBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.serviceAnnouncementBase",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "title": "String",
  "details": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "id": "String (identifier)"
}
```

