---
title: "timeOff resource type"
description: "A timeOff is a unit of time off in the schedule."
author: "zivk"
localization_priority: Priority
ms.prod: "microsoft-teams"
---

# timeOff resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A shift is a unit of scheduled work in the schedule. 

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Post shift](../api/shift-post.md) | [shift](shift.md) | Creates a new shift.|
|[List shift](../api/shift-list.md) | [shift](shift.md) collection | Get the list of shifts in this schedule.|
|[Get shift](../api/shift-get.md) | [shift](shift.md) | Get a shift by id.|
|[Put shift](../api/shift-put.md) | [shift](shift.md) | Updates a shift.|
|[Delete shift](../api/shift-delete.md) | None | Deletes a shift from the schedule.|

## Properties
|Name          |Type           |Req.|Nav.|computed|Description                                                                                                                                      |
|--------------|---------------|:--:|:--:|--------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| id			|`string`      |✓   |  |  |Id of the `timeOff`.|
| userId 			|`string`      |✓   |   |   |Id of the user assigned to the `timeOff`.|
| sharedTimeOff 	|`timeOffItem`  |   |   |  |The shared version of this `timeOff` that is viewable by both employees and managers.|
| draftTimeOff		|`timeOffItem`        |   |   |  |The draft version of this `timeOff` that is viewable by managers.|
| createdDateTime		|`DateTimeOffset`        |   |   |✓  |The time stamp in which this `timeOff` was first created.|
| lastModifiedDateTime		|`DateTimeOffset`        |   |   |✓  |The time stamp in which this `timeOff` was last updated.|
| lastModifiedBy		|`microsoft.graph.identitySet`        |   |   |✓  |The identity that last updated this `timeOff`.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOff"
}-->

```json
{
  "id": "string",
  "userId": "string",
  "sharedTimeOff": {
    "timeOffReasonId": "string",
    "startDateTime": "2018-10-04T00:58:45.340Z",
    "endDateTime": "2018-10-04T00:58:45.340Z",
    "theme": "white"
  },
  "draftTimeOff": {
    "timeOffReasonId": "string",
    "startDateTime": "2018-10-04T00:58:45.340Z",
    "endDateTime": "2018-10-04T00:58:45.340Z",
    "theme": "white"
  },
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
  "description": "timeOff resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: /api-reference/beta/resources/timeOff.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
