---
title: "workplaceSensorDeviceTelemetry resource type"
description: "Sensor device telemetry represents the data collected and reported by a sensor on a device, such as occupancy, people count, inferred occupancy, temperature, and more."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# workplaceSensorDeviceTelemetry resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Sensor device telemetry represents the data collected and reported by a sensor on a device, such as occupancy, people count, inferred occupancy, temperature, and more.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|boolValue|Boolean|The sensor’s value as a true or false statement. Use it for sensors that report binary values, such as occupancy or heartbeat.|
|deviceId|String|The user-defined unique identifier for the device provided at the time of creation. Do not use the system generated device's identifier.|
|intValue|Int32|The sensor’s value as an integer number. Use it for sensors that report numerical values, such as people count. |
|sensorId|String|The unique identifier of the sensor on the device. Optional. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has unique sensor types, the property can be omitted. The default value is the sensor type.|
|sensorType|workplaceSensorType| The type of sensor.The possible values are: `occupancy`, `peopleCount`, `inferredOccupancy`, `heartbeat`.|
|timestamp|DateTimeOffset|The date and time when the sensor measured and reported its value. The value must be a valid date and time in ISO 8601 format, such as 2023-09-25T08:11:05Z. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workplaceSensorDeviceTelemetry"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workplaceSensorDeviceTelemetry",
  "deviceId": "String",
  "sensorId": "String",
  "sensorType": "String",
  "boolValue": "Boolean",
  "intValue": "Integer",
  "timestamp": "String (timestamp)"
}
```

