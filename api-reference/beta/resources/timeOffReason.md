---
title: "timeOffReason resource type"
description: "A timeOffReason is a valid reason to take time-off in the schedule."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# timeOffReason resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A timeOffReason is a valid reason to take time-off in the schedule.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Post timeOffReason](../api/timeOffReason-post.md) | [timeOffReason](timeOffReason.md) | Creates a new timeOffReason.|
|[List timeOffReason](../api/timeOffReason-list.md) | [timeOffReason](timeOffReason.md) collection | Get the list of timeOffReason in this schedule.|
|[Get timeOffReason](../api/timeOffReason-get.md) | [timeOffReason](timeOffReason.md) | Get a timeOffReason by id.|
|[Put timeOffReason](../api/timeOffReason-put.md) | [timeOffReason](timeOffReason.md) | Updates a timeOffReason.|
|[Delete timeOffReason](../api/timeOffReason-delete.md) | None | Marks a timeOffReason as inactive.|

## Properties
|Name          |Type           |Req.|Nav.|computed|Description                                                                                 |
|--------------|---------------|:--:|:--:|:--:|--------------------------------------------------------------------------------------------|
| id			|`string`      |✓   |  |  |Id of the `timeOffReason`.|
| displayName               | `string`                  |      |      |  | The name of the `timeOffReason`.     |
| iconType | `enum`   | ✓   |   |   | Supported icon types: none; car; calendar; running; plane; firstAid; doctor; notWorking; clock; juryDuty; globe; cup; phone; weather; umbrella; piggyBank; dog; cake; trafficCone; pin; sunny. |
| isActive 			|`bool`      |✓   |  |   | Indicates if the `timeOffReason` can be used when creating new entities or updating existing ones.|
| createdDateTime		|`DateTimeOffset`        |   |   |✓  |The time stamp in which this `timeOffReason` was first created.|
| lastModifiedDateTime		|`DateTimeOffset`        |   |   |✓  |The time stamp in which this `timeOffReason` was last updated.|
| lastModifiedBy		|`microsoft.graph.identitySet`        |   |   |✓  |The identity that last updated this `timeOffReason`.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOffReason"
}-->

```json
{
  "id": "string",
  "displayName": "string",
  "iconType": "none",
  "isActive": true,
  "createdDateTime": "2018-10-04T00:58:45.340Z",
  "lastModifiedDateTime": "2018-10-04T00:58:45.340Z",
  "lastModifiedBy": {
    "user": {
      "id": "string",
      "displayName": "string"
    },
    "application": {
      "id": "string",
      "displayName": "string"
    },
    "device": {
      "id": "string",
      "displayName": "string"
    }
  }
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
  "suppressions": [
    "Error: /api-reference/beta/resources/timeoffreason.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
