---
title: "openShiftItem resource type"
description: "Represents the details of an open shift."
ms.localizationpriority: medium
author: "akumar39"
ms.subservice: "teams"
doc_type: "resourcePageType"
---

# openShiftItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of an [open shift](../resources/openshift.md).

Inherits from [shiftItem](../resources/shiftitem.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| activities 	| [shiftActivity](shiftactivity.md) collection   | An incremental part of a shift that can cover details of when and where an employee is during their shift. For example, an assignment, a scheduled break, or lunch. Required. Inherited from [shiftItem](../resources/shiftitem.md). |
| displayName               | String                  | The shift label of the **openShift**. Inherited from [shiftItem](../resources/shiftitem.md). |
| endDateTime               | DateTimeOffset                 | The end date and time for the **openShift**. Required. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [shiftItem](../resources/shiftitem.md). |
| notes               | String                  | The shift notes for the **openShift**. Inherited from [shiftItem](../resources/shiftitem.md). |
|openSlotCount|Int32| Count of the number of slots for the given open shift.|
| startDateTime               | DateTimeOffset                  | The start date and time for the **openShift**. Required. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [shiftItem](../resources/shiftitem.md). |
| theme | scheduleEntityTheme   |  The color of the open shift. Possible values are: `white`, `blue`, `green`, `purple`, `pink`, `yellow`, `gray`, `darkBlue`, `darkGreen`, `darkPurple`, `darkPink`, `darkYellow`, `unknownFutureValue`. Inherited from [shiftItem](../resources/shiftitem.md). |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.openShiftItem",
  "baseType": "microsoft.graph.shiftItem"
}-->

```json
{
  "activities": [{"@odata.type": "microsoft.graph.shiftActivity"}],
  "displayName": "String",
  "endDateTime": "String (timestamp)",
  "notes": "String",
  "openSlotCount": "Int32",
  "startDateTime": "String (timestamp)",
  "theme": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "openShiftItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


