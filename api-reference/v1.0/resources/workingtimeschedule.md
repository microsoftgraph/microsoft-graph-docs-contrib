---
title: "workingTimeSchedule resource type"
description: "Contains triggers for policies associated with the start and end of working hours for users."
author: "galalalym"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 09/13/2024
---

# workingTimeSchedule resource type

Namespace: microsoft.graph

Contains triggers for policies associated with the start and end of working hours for users.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/workingtimeschedule-get.md)|[workingTimeSchedule](../resources/workingtimeschedule.md)|Read the properties and relationships of a [workingTimeSchedule](../resources/workingtimeschedule.md) object.|
|[Start working time](../api/workingtimeschedule-startworkingtime.md)|None|Trigger the policies associated with the start of working hours for a specific user.|
|[End working time](../api/workingtimeschedule-endworkingtime.md)|None|Trigger the policies associated with the end of working hours for a specific user.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the working time schedule. Read-only.|

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
