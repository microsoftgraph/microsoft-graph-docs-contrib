---
title: "callEvent resource type"
description: "Contains information about a call event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# callEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a call event. The call can be a one-on-one or group adhoc, PSTN, VOIP or scheduled active online meeting. 

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| callEventType | callEventType| Depicts call event type. The possible values are: `callStarted`, `callEnded`, `unknownFutureValue`, `rosterUpdated`.|
| eventDateTime | DateTimeOffset | The time of when event occurred. |
| id | String | Entity id. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| participants | [participant](../resources/participant.md) collection| Participants collection for the call event. |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.callEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callEvent",
  "id": "String (identifier)",
  "callEventType": "String",
  "eventDateTime": "String (timestamp)",
}
```

## Related content

[Change notification for active meeting call events](/graph/changenotifications-for-onlinemeeting)
