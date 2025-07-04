---
title: "workbookPivotTable resource type"
description: "Represents an Excel PivotTable."
author: "lumine2008"
ms.localizationpriority: medium
ms.subservice: "excel"
doc_type: resourcePageType
toc.title: Pivot table
ms.date: 07/30/2024
---

# workbookPivotTable resource type

Namespace: microsoft.graph

Represents an Excel PivotTable.

## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get](../api/workbookpivottable-get.md) | [workbookPivotTable](workbookpivottable.md) |Read the properties and relationships of a workbookPivotTable object.|
|[Refresh a pivot table](../api/workbookpivottable-refresh.md)|None|Refresh the pivot table.	|
|[Refresh all pivot tables](../api/workbookpivottable-refreshall.md)|None|Refresh all pivot tables within a specified worksheet. This action is available only on the pivot table collection.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ID|String| The identifier for the pivot table. Read-only.|
|name|String|The name of the pivot table.	|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|worksheet|[workbookWorksheet](workbookworksheet.md)| The worksheet that contains the current pivot table. Read-only. |

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookPivotTable"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String"
}

```

