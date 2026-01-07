---
title: "workplaceSensorDeviceTelemetry resource type"
description: "Represents the data collected and reported by a sensor on a device, such as occupancy, people count, inferred occupancy, temperature, and more."
author: "akwasiakosah101"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 08/12/2024
---

# workplaceSensorDeviceTelemetry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the data collected and reported by a sensor on a device, such as occupancy, people count, inferred occupancy, temperature, and more.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|boolValue|Boolean|The value of the sensor can be `true` or `false`. Use it for sensors that report binary values, such as occupancy or heartbeat.|
|deviceId|String|The user-defined unique identifier of the device provided at the time of creation. Don't use the system generated identifier of the device.|
|intValue|Int32|The value of the sensor as an integer. Use it for sensors that report numerical values, such as people count. |
|sensorId|String|The user-defined unique identifier of the sensor on the device. Optional. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has unique sensor types, the property can be omitted. The default value is the sensor type.|
|sensorType|[workplaceSensorType](../resources/workplacesensor.md#workplacesensortype-values)| The type of sensor. The possible values are: `occupancy`, `peopleCount`, `inferredOccupancy`, `heartbeat`, `badge`, `unknownFutureValue`, `wifi`. You must use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `wifi`.|
|timestamp|DateTimeOffset|The date and time when the sensor measured and reported its value. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. |
|eventValue| [workplaceSensorEventValue](../resources/workplacesensoreventvalue.md)| The extra values associated with badge signals. |
|locationHint|String|The additional information to indicate the location of the device. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workplaceSensorDeviceTelemetry"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workplaceSensorDeviceTelemetry",
  "boolValue": "Boolean",
  "deviceId": "String",
  "intValue": "Int32",
  "sensorId": "String",
  "sensorType": "String",
  "timestamp": "String (timestamp)",
  "eventValue": {"@odata.type": "microsoft.graph.workplaceSensorEventValue"},
  "locationHint": "String"
}
```
