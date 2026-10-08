---
title: "deviceAction resource type"
description: "Represents an automated action that targets a device returned by a custom detection rule query."
author: "mmekler"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
ms.date: 05/25/2026
---

# deviceAction resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [automatedAction](../resources/security-automatedaction.md) that targets a device returned by a [detectionRule](../resources/security-detectionrule.md) hunting query. The action uses a device ID column from the query output to identify the device.

Inherits from [automatedAction](../resources/security-automatedaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|deviceIdColumn|String|Name of the hunting-query result column that contains the device ID for the targeted device.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.deviceAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.deviceAction",
  "deviceIdColumn": "String"
}
```