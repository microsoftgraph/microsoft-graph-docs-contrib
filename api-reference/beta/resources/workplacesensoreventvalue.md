---
title: "workplaceSensorEventValue resource type"
description: "Represents the data collected and reported by wifi device or badge swiping device"
author: "Ailss"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
---

# workplaceSensorEventValue resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the data collected and reported by wifi device or badge swiping device

## Properties

| Property                   | Type    | Description                                                    |
|:---------------------------|:--------|:---------------------------------------------------------------|
| eventType | [workplaceSensorEventType](../resources/workplacesensoreventvalue.md#workplacesensoreventtype-values) | The type of possible sensor event value. The possible values are: `badgeIn`, `badgeOut`, `wifiConnect`, `wifiDisconnect`, `unknownFutureValue`.  |
| user | [emailIdentity](../resources/emailidentity.md) | The unique identifier of a user. It could be email or Microsoft Entra ID. |

### workplaceSensorEventType values
| Member             | Description                                                                                                                                                                                        |
|:-------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| badgeIn          | An event that a user enters a place by swiping the badge. |
| badgeOut        | An event that a user exits a place by swiping the badge. |
| wifiConnect  | An event that a user connects to the wifi device. |
| wifiDisconnect          | An event in which a user disconnects from the wifi device. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |
## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workplaceSensorEventValue"
}-->
```json
{
  "@odata.type": "#microsoft.graph.workplaceSensorEventValue",
  "eventType": "String",
  "user": {"@odata.type": "microsoft.graph.emailIdentity"}
}
```