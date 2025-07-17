---
title: "callEvent resource type"
description: "Contains information about a call event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 12/03/2024
doc_type: resourcePageType
---

# callEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about a call event. The call can be a one-on-one or group ad-hoc call, a PSTN or VOIP call, or a scheduled active online meeting. 

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| callEventType | callEventType| The event type of the call. Possible values are: `callStarted`, `callEnded`, `unknownFutureValue`, `rosterUpdated`. You must use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `rosterUpdated`.|
| eventDateTime | DateTimeOffset | The time when event occurred. |
| id | String | The unique identifier for the call event. |

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
