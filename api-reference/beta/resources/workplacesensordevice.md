---
title: "workplaceSensorDevice resource type"
description: "Represents a hardware capable of hosting multiple sensors that collect and report data on physical or environmental conditions, including occupancy, headcount, inferred occupancy, temperature, and more."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# workplaceSensorDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a hardware capable of hosting multiple sensors that collect and report data on physical or environmental conditions, including occupancy, headcount, inferred occupancy, temperature, and more.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List workplaceSensorDevices](../api/workplace-list-sensordevices.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md) collection|Retrieve a list of all workplace sensor devices created for a tenant.|
|[Create workplaceSensorDevice](../api/workplace-post-sensordevices.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md)|Create a new workplace sensor device.|
|[Get workplaceSensorDevice](../api/workplacesensordevice-get.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md)|Read the properties of a workplace sensor device.|
|[Update workplaceSensorDevice](../api/workplacesensordevice-update.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md)|Update the properties of a workplace sensor device.|
|[Delete workplaceSensorDevice](../api/workplace-delete-sensordevices.md)|None|Delete a workplace sensor device.|
|[ingestTelemetry](../api/workplacesensordevice-ingesttelemetry.md)|None|Ingest sensor telemetry for a workplace sensor device.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String| The description of the device. |
|deviceId|String| The user-defined unique identifier of the device provided at the time of creation. |
|displayName|String| The display name of the device. |
|id|String| The unique identifier of the device. It is system generated and the user cannot change it. Inherited from [entity](../resources/entity.md).|
|ipV4Address|String| The IPv4 Address of the device. |
|ipV6Address|String| The IPv6 Address of the device. |
|macAddress|String| The MAC address of the device. |
|manufacturer|String| The manufacturer of the device. |
|placeId|String| The unique identifier of the place where the device is located. If the device is installed in a room featuring a mailbox, this property should match the ExternalDirectoryObjectId or Entra ID object Id of the room mailbox. |
|sensors|[workplaceSensor](../resources/workplacesensor.md) collection| A list of sensors associated with the device that collect and report data about physical or environmental conditions, such as occupancy, people count, inferred occupancy, temperature etc. |
|tags|String collection| A list of custom tags associated with the device. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workplaceSensorDevice",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workplaceSensorDevice",
  "id": "String (identifier)",
  "deviceId": "String",
  "displayName": "String",
  "description": "String",
  "macAddress": "String",
  "manufacturer": "String",
  "ipV4Address": "String",
  "ipV6Address": "String",
  "placeId": "String",
  "tags": [
    "String"
  ],
  "sensors": [
    {
      "@odata.type": "microsoft.graph.workplaceSensor"
    }
  ]
}
```

