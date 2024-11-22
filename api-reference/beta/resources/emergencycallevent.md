---
title: "emergencyCallEvent resource type"
description: "Contains information about an emergency call event."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
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
| callerInfo | [emergencyCallerInfo](../resources/emergencycallerinfo.md)| Emergency caller information. |
| callEventType | callEventType| Depicts call event type. The possible values are: `callStarted`, `callEnded`, `unknownFutureValue`, `rosterUpdated`.|
| emergencyNumberDialed | String | The emergency number dialed. |
| eventDateTime | DateTimeOffset | The time of when event occurred. |
| id | String | Entity id. |
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
