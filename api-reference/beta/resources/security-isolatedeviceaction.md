---
title: "isolateDeviceAction resource type"
description: "Represents an automated action that isolates a device returned by a custom detection rule query."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# isolateDeviceAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [deviceAction](../resources/security-deviceaction.md) that isolates a device returned by a [detectionRule](../resources/security-detectionrule.md) hunting query. The action uses the device ID column from the query output to identify the device to isolate.

Inherits from [deviceAction](../resources/security-deviceaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deviceIdColumn|String|Name of the hunting-query result column that contains the device ID for the targeted device. Inherited from [deviceAction](../resources/security-deviceaction.md).|
|isolationType|microsoft.graph.security.isolationType|Type of isolation to apply to the device. The possible values are: `full`, `selective`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.isolateDeviceAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.isolateDeviceAction",
  "deviceIdColumn": "String",
  "isolationType": "String"
}
```