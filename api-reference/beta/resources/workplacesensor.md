---
title: "workplaceSensor resource type"
description: "Represents a sensor on hardware that collects and reports data on physical or environmental conditions, including occupancy, people count, inferred occupancy, temperature, Wi-Fi, and more."
author: "akwasiakosah101"
ms.localizationpriority: medium
ms.subservice: "outlook"
doc_type: resourcePageType
ms.date: 10/21/2025
---

# workplaceSensor resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a sensor on hardware that collects and reports data on physical or environmental conditions, including occupancy, people count, inferred occupancy, temperature, Wi-Fi, and more.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the sensor. Optional.|
|placeId|String| The unique identifier of the place that the sensor detects. If the device is installed in a room equipped with a mailbox, this property should match the **ExternalDirectoryObjectId** or Microsoft Entra object ID of the room mailbox. If the sensor detects the same place as the location of the device, the property can be omitted. The default value is the place identifier of the device. Optional. |
|sensorId|String| The user-defined unique identifier of the sensor on the device. If the device has multiple sensors of the same type, the property must be provided to identify each sensor. If the device has only one sensor of a type, the property can be omitted. The default value is the sensor type. Optional. |
|sensorType|[workplaceSensorType](../resources/workplacesensor.md#workplacesensortype-values)|The type of sensor. The possible values are: `occupancy`, `peopleCount`, `inferredOccupancy`, `heartbeat`, `badge`, `unknownFutureValue`, `wifi`. You must use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `wifi`. Required. |

### workplaceSensorType values

| Member             | Description                                                                                                                                                                                        |
|:-------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| occupancy          | The sensor detects if the place is occupied or not. Use it for motion sensors or other binary sensors that measure the occupancy of a place.                                                           |
| peopleCount        | The sensor counts the number of people in the place. Use it for sensors that report people count as a number.                                                                                      |
| inferredOccupancy  | The sensor estimates the occupancy status of the place based on other clues, such as the presence of a laptop or a backpack. Use it for sensors that don't directly detect motion or people count. |
| heartbeat          | The sensor reports the heartbeat of the device. It indicates if the device is online or not. Use it for sensors that monitor the status of the device.                                             |
| badge | The sensor reports badge-swiping events of the people. Use it for sensors that accept active user interactions. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |
| wifi  | The sensor to upload Wi-Fi devices for automatic location detection. |

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.workplaceSensor"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workplaceSensor",
  "displayName": "String",
  "placeId": "String",
  "sensorId": "String",
  "sensorType": "String"
}
```

