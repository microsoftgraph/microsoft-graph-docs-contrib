---
title: "timeOffItem resource type"
description: "Represents a version of the timeOff."
author: "aaku"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/25/2024
---

# timeOffItem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a version of the [timeOff](timeoff.md).

## Properties
| Property                         | Type                    | Description                                                                                                                                                                        |
|------------------------------|-------------------------|---------------------------------------------------------------------------------------------|
| timeOffReasonId               | string                  | ID of the `timeOffReason` for this **timeOffItem**. Required.     |
| startDateTime               | DateTimeOffset                  | The start date and time for the **timeOffItem**. Required. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| endDateTime               | DateTimeOffset                  | The end date and time for the **timeOffItem**. Required. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
| theme | scheduleEntityTheme   | Supported colors: white; blue; green; purple; pink; yellow; gray; darkBlue; darkGreen; darkPurple; darkPink; darkYellow. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.


<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOffItem"
}-->
```json
{
  "timeOffReasonId": "String",
  "startDateTime": "String (timestamp)",
  "endDateTime": "String (timestamp)",
  "theme": {"@odata.type": "microsoft.graph.scheduleEntityTheme"}
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeOffItem resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


