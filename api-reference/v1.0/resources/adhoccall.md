---
title: "adhocCall resource type"
description: "Represents an ad hoc call, including PSTN calls, one-to-one calls, and group calls."
author: "kanchm"
ms.reviewer: v-sukanyadas
ms.date: 02/27/2026
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
toc.title: "Ad hoc call"
---

# adhocCall resource type

Namespace: microsoft.graph

Represents an ad hoc call, including PSTN calls, one-to-one calls, and group calls. Use this resource to manage call recordings and transcripts through the Microsoft Graph communications API.

This resource supports subscribing to [change notifications](/graph/change-notifications-overview).

## Methods

| Method | Return Type |Description |
| :------ | :----------- | :---------- |
|[Get all recordings](../api/adhoccall-getallrecordings.md)|[callRecording](callrecording.md) collection|Get the [callRecording](callrecording.md) objects from [ad hoc call](../resources/adhoccall.md) instances that a specific user initiates. |
|[Get all transcripts](../api/adhoccall-getalltranscripts.md)|[callTranscript](calltranscript.md) collection|Get all [callTranscript](calltranscript.md) objects from [ad hoc call](../resources/adhoccall.md) instances that a specific user initiates.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
| endDateTime | DateTime | The meeting end time in UTC. Required when an ad hoc call is ended. |
| id | String | The unique identifier for the call, including PSTN, 1:1, and group calls. Read-only. |
| startDateTime | DateTime | The meeting start time in UTC. Required when the call is started. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|recordings|[callRecording](../resources/callrecording.md) collection | The recordings of a call. Read-only. |
|transcripts|[callTranscript](../resources/calltranscript.md) collection | The transcripts of a call. Read-only. |

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.adhocCall",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.adhocCall",
  "id": "String (identifier)"
}
```

## Related content

* [Change notifications for Microsoft Teams resources](/graph/teams-change-notification-in-microsoft-teams-overview)
* [Get change notifications for transcripts and recordings using Microsoft Graph](/graph/teams-changenotifications-callrecording-and-calltranscript)
* [callRecording resource type](../resources/callrecording.md)
* [callTranscript resource type](../resources/calltranscript.md)
