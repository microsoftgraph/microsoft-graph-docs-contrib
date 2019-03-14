---
title: "timeOff resource type"
description: "A unit of non-work in the schedule."
author: "nkramer"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# timeOff resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A unit of non-work in the schedule.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Create timeOff](../api/schedule-post-timesoff.md) | [timeOff](timeOff.md) | Create a new `timeOff` object.|
|[List timeOffs](../api/schedule-list-timesoff.md) | [timeOff](timeOff.md) collection | Get the list of `timeOff` in this schedule.|
|[Get timeOff](../api/schedule-get-timesoff.md) | [timeOff](timeOff.md) | Get a `timeOff` by ID.|
|[Update timeOff](../api/schedule-put-timesoff.md) | [timeOff](timeOff.md) | Update a `timeOff`.|
|[Delete timeOff](../api/schedule-delete-timesoff.md) | None | Delete a `timeOff` from the schedule.|

## Properties
|Name          |Type           |Description                                                                                                                                      |
|--------------|---------------|-------------------------------------------------------------------------------------------------------------------------------------------------|
| id			|`string`      |Id of the `timeOff`.|
| userId 			|`string`      |Id of the user assigned to the `timeOff`.|
| sharedTimeOff 	|`timeOffItem`  |The shared version of this `timeOff` that is viewable by both employees and managers.|
| draftTimeOff		|`timeOffItem`        |The draft version of this `timeOff` that is viewable by managers.|
| createdDateTime		|`DateTimeOffset`        |The time stamp in which this `timeOff` was first created.|
| lastModifiedDateTime		|`DateTimeOffset`        |The time stamp in which this `timeOff` was last updated.|
| lastModifiedBy		|`microsoft.graph.identitySet`        |The identity that last updated this `timeOff`.|

## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeOff"
}-->

```json
{
    "userId": "c5d0c76b-80c4-481c-be50-923cd8d680a1",
    "createdDateTime": "2019-03-14T05:35:57.755Z",
    "lastModifiedDateTime": "2019-03-14T05:36:08.381Z",
    "userId": "b6120efa-0ddd-426b-99de-800e9b94a504",
    "lastModifiedBy": {
        "application": null,
        "device": null,
        "conversation": null,
        "user": {
            "id": "366c0b19-49b1-41b5-a03f-9f3887bd0ed8",
            "displayName": "John Doe"
        }
    },
    "sharedTimeOff": {
        "timeOffReasonId": "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
        "startDateTime": "2019-03-11T07:00:00Z",
        "endDateTime": "2019-03-12T07:00:00Z",
        "theme": "white"
    },
    "draftTimeOff": {
        "timeOffReasonId": "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
        "startDateTime": "2019-03-11T07:00:00Z",
        "endDateTime": "2019-03-12T07:00:00Z",
        "theme": "pink"
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
    "Error: /api-reference/beta/resources/timeoff.md:\r\n      Exception processing links.\r\n    System.ArgumentException: Link Definition was null. Link text: !INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)\r\n      at ApiDoctor.Validation.DocFile.get_LinkDestinations()\r\n      at ApiDoctor.Validation.DocSet.ValidateLinks(Boolean includeWarnings, String[] relativePathForFiles, IssueLogger issues, Boolean requireFilenameCaseMatch, Boolean printOrphanedFiles)"
  ]
}
-->
