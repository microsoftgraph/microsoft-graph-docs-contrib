---
title: "workplaceSensor resource type"
description: "A sensor on a device is a resource that measures and reports various physical or environmental conditions, such as occupancy, people count, inferred occupancy, temperature, and more."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# workplaceSensor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A sensor on a device is a resource that measures and reports various physical or environmental conditions, such as occupancy, people count, inferred occupancy, temperature, and more.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name for the sensor.|
|placeId|String| The unique identifier of the place that the sensor detects. If the device is installed in a room featuring a mailbox, this property should match the ExternalDirectoryObjectId or Entra ID object Id of the room mailbox. If the sensor detects the same place as the device's location, the property can be omitted. The default value is device's place identifier. |
|sensorId|String| The unique identifier of the sensor on the device. Optional. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has only one sensor of a type, the property can be omitted. The default value is the sensor type. |
|sensorType|workplaceSensorType|The type of sensor.The possible values are: `occupancy`, `peopleCount`, `inferredOccupancy`, `heartbeat`.|

### workplaceSensorType values

| Member | Value| Description |
|:---------------|:--------|:----------|
|occupancy|0|The sensor detects if the place is occupied or not. Use it for motion sensors or other binary sensors that measure occupancy of a place.|
|peopleCount|1|The sensor counts the number of people in the place. Use it for sensors that report people count as a number.|
|inferredOccupancy|2|The sensor estimates the occupancy status of the place based on other clues, such as the presence of a laptop or a backpack. Use it for sensors that do not directly detect motion or people count.|
|unknownFutureValue|3|Evolvable enumeration sentinel value. Do not use.|
|heartbeat|4|The sensor reports the heartbeat of the device. It indicates if the device is online or not. Use it for sensors that monitor the device’s status.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workplaceSensor"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workplaceSensor",
  "sensorId": "String",
  "displayName": "String",
  "sensorType": "String",
  "placeId": "String"
}
```

