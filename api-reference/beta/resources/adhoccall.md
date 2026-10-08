---
title: "adhocCall resource type"
description: "Represents an ad hoc call, including PSTN calls, one-to-one calls, and group calls."
author: "kanchm"
ms.date: 10/16/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
toc.title: "Ad hoc call"
---

# adhocCall resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an ad hoc call, including PSTN calls, one-to-one calls, and group calls.

> [!NOTE]
> For ad hoc calls:
>
> - To obtain the call ID while the call is still ongoing, have the app get called through [App-hosted/service-hosted Calls](/graph/api/resources/call?view=graph-rest-1.0&preserve-view=true) and use the `callChainId`.
> - `getAll` variant is available to get all ad hoc calls for a user.
> - Enumeration of artifacts for a particular call isn't available.

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
  "endDateTime": "DateTime (timestamp)",
  "id": "String (identifier)",
  "startDateTime": "DateTime (timestamp)"
}
```

## Related content

* [Change notifications for Microsoft Teams resources](/graph/teams-change-notification-in-microsoft-teams-overview)
* [Get change notifications for transcripts and recordings using Microsoft Graph](/graph/teams-changenotifications-callrecording-and-calltranscript)
