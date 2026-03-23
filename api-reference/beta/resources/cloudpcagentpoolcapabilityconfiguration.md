---
title: "cloudPcAgentPoolCapabilityConfiguration resource type"
description: "Represents the capabilities configuration for a Cloud PC agent pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcAgentPoolCapabilityConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the capabilities configuration for a Cloud PC agent pool. Inherits from [cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|autopilotConfiguration|[cloudPcPoolAutopilotConfiguration](../resources/cloudpcpoolautopilotconfiguration.md)|The autopilot configuration for the pool. When `null`, autopilot isn't applied. Inherited from [cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md).|
|deviceGroupingConfiguration|[cloudPcPoolDeviceGroupingConfiguration](../resources/cloudpcpooldevicegroupingconfiguration.md)|The device grouping configuration for the pool. Inherited from [cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md).|
|enableSingleSignOn|Boolean|When `true`, the provisioned Cloud PC can be accessed by single sign-on. When `false`, the provisioned Cloud PC doesn't support this feature. The default value is `false`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.cloudPcPoolCapabilityConfiguration",
  "@odata.type": "microsoft.graph.cloudPcAgentPoolCapabilityConfiguration"
} -->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentPoolCapabilityConfiguration",
  "autopilotConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcPoolAutopilotConfiguration"
  },
  "deviceGroupingConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcPoolDeviceGroupingConfiguration"
  },
  "enableSingleSignOn": "Boolean"
}
```
