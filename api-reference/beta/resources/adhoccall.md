---
title: "adhocCall resource type"
description: "Contains information about an adhoc call."
author: "kanchm"
ms.date: 07/04/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# adhocCall resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about an ad hoc call.

This resource supports subscribing to [change notifications](/graph/webhooks).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List recordings](../api/adhoccall-list-recordings.md)|[callRecording](../resources/callrecording.md) collection | Retrieve the list of [callRecording](../resources/callrecording.md) objects associated with an **ad hoc call**. |
|[List transcripts](../api/adhoccall-list-transcripts.md)|[callTranscript](../resources/calltranscript.md) collection | Retrieve the list of [callTranscript](../resources/calltranscript.md) objects associated with an **ad hoc call**. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The default ID associated with the ad hoc call. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|recordings|[callRecording](../resources/callrecording.md) collection | The recordings of an ad hoc call. Read-only. |
|transcripts|[callTranscript](../resources/calltranscript.md) collection | The transcripts of an ad hoc call. Read-only. |

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

