---
title: "cloudPcPoolCapabilityConfiguration resource type"
description: "Represents the base capabilities configuration for a Cloud PC pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcPoolCapabilityConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the base capabilities configuration for a Cloud PC pool.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|autopilotConfiguration|[cloudPcPoolAutopilotConfiguration](../resources/cloudpcpoolautopilotconfiguration.md)|The autopilot configuration for the pool. When `null`, autopilot isn't applied.|
|deviceGroupingConfiguration|[cloudPcPoolDeviceGroupingConfiguration](../resources/cloudpcpooldevicegroupingconfiguration.md)|The device grouping configuration for the pool.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcPoolCapabilityConfiguration"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcPoolCapabilityConfiguration",
  "autopilotConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcPoolAutopilotConfiguration"
  },
  "deviceGroupingConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcPoolDeviceGroupingConfiguration"
  }
}
```
