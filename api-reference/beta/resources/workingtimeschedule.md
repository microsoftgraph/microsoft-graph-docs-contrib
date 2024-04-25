---
title: "workingTimeSchedule resource type"
description: "Represents a user's scheduled working hours."
author: "galalalym"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# workingTimeSchedule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a user's scheduled working hours.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get workingTimeSchedule](../api/workingtimeschedule-get.md)|[workingTimeSchedule](../resources/workingtimeschedule.md)|Read the properties and relationships of a [workingTimeSchedule](../resources/workingtimeschedule.md) object.|
|[startWorkingTime](../api/workingtimeschedule-startworkingtime.md)|None|Trigger the policies associated with the start of working hours for a specific user.|
|[endWorkingTime](../api/workingtimeschedule-endworkingtime.md)|None|Trigger the policies associated with the end of working hours for a specific user.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|A unique programmatic identifier for the entity. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workingTimeSchedule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workingTimeSchedule",
  "id": "String (identifier)"
}
```
