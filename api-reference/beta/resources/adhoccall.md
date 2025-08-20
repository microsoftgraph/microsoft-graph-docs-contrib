---
title: "adhocCall resource type"
description: "Contains information about an ad hoc call, including PSTN, 1:1, and group calls."
author: "kanchm"
ms.date: 07/04/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
toc.title: "Ad hoc call (preview)"
---

# adhocCall resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about an ad hoc call, including PSTN, 1:1, and group calls.

This resource supports subscribing to [change notifications](/graph/change-notifications-overview).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the ad hoc call, including PSTN, 1:1, and group calls. Read-only.|

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
