---
title: "emergencyCallEvent resource type"
description: "Contains information about an emergency call event."
author: "garchiro7"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
ms.date: 08/10/2025
doc_type: resourcePageType
---

# emergencyCallEvent resource type

Namespace: microsoft.graph

Contains information about an emergency call event.

Inherits from [callEvent](../resources/callevent.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
| callerInfo | [emergencyCallerInfo](../resources/emergencycallerinfo.md)| The information of the emergency caller. |
| callEventType | callEventType| The event type of the call. Possible values are: `callStarted`, `callEnded`, `unknownFutureValue`, `rosterUpdated`. Use the `Prefer: include-unknown-enum-members` request header to get the following value in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `rosterUpdated`.|
| emergencyNumberDialed | String | The emergency number dialed. |
| eventDateTime | DateTimeOffset | The time of when event occurred. |
| id | String | The entity ID. |
| policyName | String | The policy name for emergency call event. |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| participants | [participant](../resources/participant.md) collection| Participants aren't defined for emergency call events. Inherited from [microsoft.graph.callEvent](../resources/callevent.md). |

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
  "id": "String (identifier)",
  "callEventType": "String",
  "eventDateTime": "String (timestamp)",
  "policyName": "String",
  "emergencyNumberDialed": "String",
  "callerInfo": {
    "@odata.type": "microsoft.graph.emergencyCallerInfo"
  }
}
```

## Related content

[Change notification for emergency call events](/graph/changenotifications-for-emergencycalls)
