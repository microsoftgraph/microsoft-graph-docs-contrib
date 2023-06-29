---
title: "timeOffReason resource type"
description: "Represents a valid reason to take time off in a schedule."
author: "aaku"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# timeOffReason resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a valid reason to take [time off](timeoff.md) in a [schedule](schedule.md).

## Methods

| Method                                           | Return type                                  | Description                                      |
| :----------------------------------------------- | :------------------------------------------- | :----------------------------------------------- |
| [Create](../api/schedule-post-timeoffreasons.md) | [timeOffReason](timeoffreason.md)            | Create a new **timeOffReason**.                  |
| [List](../api/schedule-list-timeoffreasons.md)   | [timeOffReason](timeoffreason.md) collection | Get the list of **timeOffReason** in a schedule. |
| [Get](../api/timeoffreason-get.md)               | [timeOffReason](timeoffreason.md)            | Get a **timeOffReason** by ID.                   |
| [Replace](../api/timeoffreason-put.md)           | [timeOffReason](timeoffreason.md)            | Replace a **timeOffReason**.                     |
| [Delete](../api/timeoffreason-delete.md)         | None                                         | Mark a **timeOffReason** as inactive.            |

## Properties

|Property          |Type           |Description                                                                                 |
|--------------|---------------|--------------------------------------------------------------------------------------------|
| createdDateTime		| DateTimeOffset        |The time stamp on which this **timeOffReason** was first created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| displayName               | String                  | The name of the **timeOffReason**. Required. |
| iconType | timeOffReasonIconType   | Supported icon types are: `none`, `car`, `calendar,` `running`, `plane`, `firstAid`, `doctor`, `notWorking`, `clock`, `juryDuty`, `globe`, `cup`, `phone`, `weather`, `umbrella`, `piggyBank`, `dog`, `cake`, `trafficCone`, `pin`, `sunny`. Required. |
| id			| String      |Unique identifier for the time-off reason.|
| isActive 			| Boolean      | Indicates whether the **timeOffReason** can be used when creating new entities or updating existing ones. Required. |
| lastModifiedBy		| [identitySet](identityset.md)        |The identity that last updated this **timeOffReason**.|
| lastModifiedDateTime		| DateTimeOffset         |The time stamp on which this **timeOffReason** was last updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOffReason",
  "baseType":"microsoft.graph.changeTrackedEntity"
}-->

```json
{
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "iconType": "String",
  "id": "String (identifier)",
  "isActive": "Boolean",
  "lastModifiedBy": { "@odata.type":"microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "timeOffReason resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
