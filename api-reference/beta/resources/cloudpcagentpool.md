---
title: "cloudPcAgentPool resource type"
description: "Represents an agent pool for Cloud PC provisioning with additional agent-pool-specific configurations."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcAgentPool resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an agent pool for Cloud PC provisioning with additional agent-pool-specific configurations.

Inherits from [cloudPcPool](../resources/cloudpcpool.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudpcpool-list.md)|[cloudPcPool](../resources/cloudpcpool.md) collection|List the properties and relationships of the [cloudPcPool](../resources/cloudpcpool.md) objects.|
|[Create](../api/virtualendpoint-post-cloudpcpools.md)|[cloudPcPool](../resources/cloudpcpool.md)|Create a new [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Get](../api/cloudpcpool-get.md)|[cloudPcPool](../resources/cloudpcpool.md)|Read the properties and relationships of a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Update](../api/cloudpcpool-update.md)|None|Update the properties of a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Delete](../api/cloudpcpool-delete.md)|None|Delete a [cloudPcPool](../resources/cloudpcpool.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|billingConfiguration|[cloudPcAgentPoolBillingConfiguration](../resources/cloudpcagentpoolbillingconfiguration.md)|The billing configuration for the agent pool.|
|capabilities|[cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md)|The capabilities configuration for the pool, including single sign-on settings. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|cloudPcConfiguration|[cloudPcConfiguration](../resources/cloudpcconfiguration.md)|The Cloud PC specification, including image and operating system locale settings. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|createdDateTime|DateTimeOffset|The date and time when the pool was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2026 is `2026-01-01T00:00:00Z`. Read-only. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|description|String|The description of the pool. The maximum length is 512 characters. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|displayName|String|The display name of the pool. The name is unique across Cloud PC pools in an organization. The maximum length is 60 characters. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|id|String|The unique identifier for the pool. Read-only. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the pool was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2026 is `2026-01-01T00:00:00Z`. Read-only. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|networkConfiguration|[cloudPcNetworkConfiguration](../resources/cloudpcnetworkconfiguration.md)|The network configuration for the pool. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|poolUrl|String|The endpoint URL used to check out and check in agent sessions. This value becomes available after the pool reaches the active status. Read-only.|
|scalingPolicy|[cloudPcAgentPoolScalingPolicy](../resources/cloudpcagentpoolscalingpolicy.md)|The scaling policy defining minimum and maximum counts.|
|sessionUsage|[cloudPcAgentPoolSessionUsage](../resources/cloudpcagentpoolsessionusage.md)|The current session usage of the agent pool. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcAgentPool",
  "baseType": "microsoft.graph.cloudPcPool",
  "openType": false
} -->
```json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentPool",
  "billingConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcAgentPoolBillingConfiguration"
  },
  "capabilities": {
    "@odata.type": "microsoft.graph.cloudPcPoolCapabilityConfiguration"
  },
  "cloudPcConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcConfiguration"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "id": "String (identifier)",
  "lastModifiedDateTime": "String (timestamp)",
  "networkConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcNetworkConfiguration"
  },
  "poolUrl": "String",
  "scalingPolicy": {
    "@odata.type": "microsoft.graph.cloudPcAgentPoolScalingPolicy"
  },
  "sessionUsage": {
    "@odata.type": "microsoft.graph.cloudPcAgentPoolSessionUsage"
  }
}
```
