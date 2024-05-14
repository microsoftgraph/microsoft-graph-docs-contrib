---
title: "workplace resource type"
description: "Represents a workplace in a tenant."
author: "ms-amakumar"
ms.localizationpriority: medium
ms.prod: "outlook"
doc_type: resourcePageType
---

# workplace resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a workplace in a tenant.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List sensorDevices](../api/workplace-list-sensordevices.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md) collection|Get a list of all workplace sensor devices created for a tenant.|
|[Create workplaceSensorDevice](../api/workplace-post-sensordevices.md)|[workplaceSensorDevice](../resources/workplacesensordevice.md)|Create a new sensor device.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|sensorDevices|[workplaceSensorDevice](../resources/workplacesensordevice.md) collection|A collection of sensor devices.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.workplace",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.workplace"
}
```
