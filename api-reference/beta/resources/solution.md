---
title: "solution resource type"
description: "Represents a user's custom solution entity."
author: "galalalym"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# solution resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's custom solution entity.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get solution](../api/solution-get.md)|[solution](../resources/solution.md)|Read the properties and relationships of a [solution](../resources/solution.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique programmatic identifier for the entity. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|schedule|[workingTimeSchedule](../resources/workingtimeschedule.md)|The working time schedule entity associated with the solution.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.solution",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.solution",
  "id": "String (identifier)"
}
```
