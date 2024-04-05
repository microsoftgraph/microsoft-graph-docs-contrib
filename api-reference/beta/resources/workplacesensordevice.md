---
title: "workplaceSensorDevice resource type"
description: "Represents hardware capable of hosting multiple sensors that collect and report data on physical or environmental conditions, including occupancy, headcount, inferred occupancy, temperature, and more."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# workplaceSensorDevice resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents hardware capable of hosting multiple sensors that collect and report data on physical or environmental conditions, including occupancy, headcount, inferred occupancy, temperature, and more.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List sensorDevices](../api/workplace-list-sensordevices.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md) collection|Get a list of all workplace sensor devices created for a tenant.|
|[Create workplaceSensorDevice](../api/workplace-post-sensordevices.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md)|Create a new workplace sensor device.|
|[Get workplaceSensorDevice](../api/workplacesensordevice-get.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md)|Get the properties of a workplace sensor device, including tags, MAC address, sensors, and more.|
|[Update workplaceSensorDevice](../api/workplacesensordevice-update.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md)|Update the properties of a workplace sensor device.|
|[Delete workplaceSensorDevice](../api/workplacesensordevice-delete.md)|None|Delete a workplace sensor device.|
|[ingestTelemetry](../api/workplacesensordevice-ingesttelemetry.md)|None|Ingest sensor telemetry for a workplace sensor device.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String| The description of the device. |
|deviceId|String| The user-defined unique identifier of the device provided at the time of creation. |
|displayName|String| The display name of the device. |
|id|String| The unique identifier of the device. It's system generated and a user can't change it. Inherited from [entity](../resources/entity.md).|
|ipV4Address|String| The IPv4 address of the device. |
|ipV6Address|String| The IPv6 address of the device. |
|macAddress|String| The MAC address of the device. |
|manufacturer|String| The manufacturer of the device. |
|placeId|String| The unique identifier of the place where the device is located. If the device is installed in a room equipped with a mailbox, this property should match the **ExternalDirectoryObjectId** or Microsoft Entra object ID of the room mailbox. |
|sensors|[workplaceSensor](../resources/workplacesensor.md) collection| A list of sensors associated with the device that collect and report data about physical or environmental conditions, such as occupancy, people count, inferred occupancy, temperature, and more. |
|tags|String collection| A list of custom tags associated with the device. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

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
  "description": "String",
  "deviceId": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "ipV4Address": "String",
  "ipV6Address": "String",
  "macAddress": "String",
  "manufacturer": "String",
  "placeId": "String",
  "sensors": [{"@odata.type": "microsoft.graph.workplaceSensor"}],
  "tags": ["String"]
}
```
