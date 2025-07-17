---
title: "timeConstraint resource type"
description: "Restricts meeting time suggestions to certain hours and days of the week according to the specified nature of activity and open time slots."
ms.localizationpriority: medium
author: "iamgirishck"
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# timeConstraint resource type

Namespace: microsoft.graph

Restricts meeting time suggestions to certain hours and days of the week according to the specified nature of activity and open time slots.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timeConstraint"
}-->

```json
{
  "activityDomain": "String",
  "timeslots": [{"@odata.type": "microsoft.graph.timeSlot"}]
}

```
## Properties
| Property       | Type    |Description|
|:---------------|:--------|:----------|
|activityDomain|activityDomain|The nature of the activity, optional. The possible values are: `work`, `personal`, `unrestricted`, or `unknown`.|
|timeslots|[timeSlot](timeslot.md) collection|An array of time periods.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "timeConstraint resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

