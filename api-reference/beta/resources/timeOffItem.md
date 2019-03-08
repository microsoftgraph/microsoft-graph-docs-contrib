---
title: "timeOffItem resource type"
description: "A timeOffItem represents a version of the timeOff."
author: "zivk"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# timeOffItem resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A timeOffItem represents a version of the timeOff.

## Properties
| Name                         | Type                    | Req. | R.O. | Nav. | Description                                                                                                                                                                        |
|------------------------------|-------------------------|------|------|------|---------------------------------------------------------------------------------------------|
| timeOffReasonId               | `string`                  | ✓     |      |      | Id of the `timeOffReason` for this `timeOffItem`.      |
| startDateTime               | `DateTimeOffset`                  | ✓    |      |      | The start date and time for the `timeOffItem`.     |
| endDateTime               | `DateTimeOffset`                  | ✓    |      |      | The end date and time for the `timeOffItem`.     |
| theme | `enum`   |    |  |  | Supported colors: white; blue; green; purple; pink; yellow; gray; darkBlue; darkGreen; darkPurple; darkPink; darkYellow. |

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOffItem"
}-->
```json
{
  "timeOffReasonId": "string",
  "startDateTime": "2018-10-04T00:58:45.340Z",
  "endDateTime": "2018-10-04T00:58:45.340Z",
  "theme": "white"
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
  "suppressions": [
    "Error: /api-reference/beta/resources/timeOffItem.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
