---
title: "emergencyCallEvent resource type"
description: "Contains information about an emergency call event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 12/03/2024
doc_type: resourcePageType
---

# emergencyCallEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains information about an emergency call event.

Inherits from [callEvent](../resources/callevent.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| callerInfo | [emergencyCallerInfo](../resources/emergencycallerinfo.md)| The information of the emergency caller. |
| callEventType | callEventType| The event type of the call. The possible values are: `callStarted`, `callEnded`, `unknownFutureValue`, `rosterUpdated`. Use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `rosterUpdated`. Inherited from [callEvent](../resources/callevent.md). |
| emergencyNumberDialed | String | The emergency number dialed. |
| eventDateTime | DateTimeOffset | The date and time when the event occurred. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [callEvent](../resources/callevent.md). |
| id | String | The unique identifier of the **emergencyCallEvent** object. Inherited from [callEvent](../resources/callevent.md). |
| policyName | String | The policy name for the emergency call event. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| participants | [participant](../resources/participant.md) collection| This navigation property exists for consistency with the base type, but isn't defined for emergency call events. Inherited from [microsoft.graph.callEvent](../resources/callevent.md). |

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.emergencyCallEvent",
  "baseType": "microsoft.graph.callEvent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emergencyCallEvent",
  "callerInfo": {"@odata.type": "microsoft.graph.emergencyCallerInfo"},
  "callEventType": "String",
  "emergencyNumberDialed": "String",
  "eventDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "policyName": "String"
}
```

## Related content

[Change notification for emergency call events](/graph/changenotifications-for-emergencycalls).
