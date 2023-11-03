---
title: dayNote resource typ
description: A piece of text that communicates a note relavent for a specific day on a teams schedule.
author: fmcgurrenw
ms.localizationpriority: medium
ms.prod: microsoft-teams
doc_type: resourcePageType
---

# dayNote resource type (preview)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A piece of text that communicates a note relavent for a specific day on a teams schedule.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dayNotes](../api/daynote-list.md)|[dayNote](../resources/daynote.md) collection|Get a list of the [dayNote](../resources/daynote.md) objects and their properties.|
|[Create dayNote](../api/daynote-create.md)|[dayNote](../resources/daynote.md)|Create a new [dayNote](../resources/daynote.md) object.|
|[Get dayNote](../api/daynote-get.md)|[dayNote](../resources/daynote.md)|Read the properties and relationships of a [dayNote](../resources/daynote.md) object.|
|[Update dayNote](../api/daynote-update.md)|[dayNote](../resources/daynote.md)|Update the properties of a [dayNote](../resources/daynote.md) object.|
|[Delete dayNote](../api/daynote-delete.md)|None|Delete a [dayNote](../resources/daynote.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the dayNote.|
|dayNoteDate|Date|The date the dayNote is relevent to.|
|draftDayNote|[itemBody](../resources/itembody.md)|The draft version of this dayNote that is viewable by managers. Only contentType text is supported.|
|sharedDayNote|[itemBody](../resources/itembody.md)|The shared version of this dayNote that is viewable by both employees and managers. Only contentType text is supported.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dayNote",
  "baseType": "microsoft.graph.changeTrackedEntity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dayNote",
  "id": "String (identifier)",
  "dayNoteDate": "Date",
  "sharedDayNote": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "draftDayNote": {
    "@odata.type": "microsoft.graph.itemBody"
  }
}
```

