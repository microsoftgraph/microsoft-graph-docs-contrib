---
title: "broadcastSettings resource type"
description: "Settings related to a live event"
author: "frankpeng7"
localization_priority: Normal
ms.prod: "cloud-communications"
doc_type: resourcePageType
---

# broadcastSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings related to a live event.

> [!IMPORTANT]
> Creating a live event with the **broadcastSettings** property is only in private preview. The major limitation is those live event settings that are managed 
> by [policy](https://docs.microsoft.com/microsoftteams/teams-live-events/set-teams-live-events-policies-using-powershell) will not be validated
> in Graph online meeting API. For example, if the admin has set a live event policy using `Set-CsTeamsMeetingBroadcastPolicy -Identity Global -BroadcastAttendeeVisibility EveryoneInCompany`, 
> users will not be able to set "live event permissions" to "public" in Teams client, but can still create a live event via Graph
> and set **allowedAudience** to `everyone`. The request will go through and take effect.

## Properties

| Property                   | Type                     | Description                                                                     |
| -------------------------- | ------------------------ | ------------------------------------------------------------------------------- |
| allowedAudience            | broadcastMeetingAudience | Who can join the live event. Possible values are listed in the following table. |
| isRecordingEnabled         | Boolean                  | If recording is enabled for this live event. Default value is `false`.          |
| isAttendeeReportEnabled    | Boolean                  | If attendee report is enabled for this live event. Default value is `false`.    |
| isQuestionAndAnswerEnabled | Boolean                  | If Q&A is enabled for this live event. Default value is `false`.                |
| isVideoOnDemandEnabled     | Boolean                  | If video on demand is enabled for this live event. Default value is `false`.    |

### broadcastMeetingAudience values

| Value              | Description                                                       |
| ------------------ | ----------------------------------------------------------------- |
| everyone           | The live event will be open to anyone. This is the default value. |
| organization       | Everyone in your org can join the live event.                     |
| roleIsAttendee     | Only the specified people can join the live event.                |
| unknownFutureValue | Unknown future value.                                             |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [],
  "@odata.type": "microsoft.graph.broadcastSettings"
}-->
```json
{
  "allowedAudience": "everyone | organization | roleIsAttendee | unknownFutureValue",
  "isRecordingEnabled": "Boolean",
  "isAttendeeReportEnabled": "Boolean",
  "isQuestionAndAnswerEnabled": "Boolean",
  "isVideoOnDemandEnabled": "Boolean"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "broadcastSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
