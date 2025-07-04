---
title: "workbookRangeFill resource type"
description: "Represents the background of a range object."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Range fill
ms.date: 07/30/2024
---

# workbookRangeFill resource type

Namespace: microsoft.graph

Represents the background of a range object.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/rangefill-get.md) | [workbookRangeFill](workbookrangefill.md) |Read the properties and relationships of a workbookRangeFill object.|
|[Update](../api/rangefill-update.md) | [workbookRangeFill](workbookrangefill.md)	|Update a workbookRangeFill object. |
|[Clear](../api/rangefill-clear.md)|None|Reset the range background.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|color|string|HTML color code representing the color of the border line. Can either be of the form #RRGGBB, for example "FFA500", or be a named HTML color, for example "orange".|

## Relationships
None


## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.workbookRangeFill"
}-->

```json
{
  "color": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "RangeFill resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

