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
|[List](../api/virtualendpoint-list-cloudpcpools.md)|[cloudPcPool](../resources/cloudpcpool.md) collection|List the properties and relationships of the [cloudPcPool](../resources/cloudpcpool.md) objects.|
|[Get](../api/cloudpcpool-get.md)|[cloudPcPool](../resources/cloudpcpool.md)|Read the properties and relationships of a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Create](../api/virtualendpoint-post-cloudpcpools.md)|[cloudPcPool](../resources/cloudpcpool.md)|Create a new [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Update](../api/cloudpcpool-update.md)|None|Update the properties of a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Delete](../api/cloudpcpool-delete.md)|None|Delete a [cloudPcPool](../resources/cloudpcpool.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|billingConfiguration|[cloudPcAgentPoolBillingConfiguration](../resources/cloudpcagentpoolbillingconfiguration.md)|The billing configuration for the agent pool.|
|capabilities|[cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md)|The capabilities configuration including SSO settings. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|cloudPcConfiguration|[cloudPcConfiguration](../resources/cloudpcconfiguration.md)|The Cloud PC specification including image and OS locale settings. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|createdDateTime|DateTimeOffset|The date and time when the pool was created. For example, midnight UTC on Jan 1, 2026 is `2026-01-01T00:00:00Z`. Read-only. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|description|String|The description of the pool. Maximum length is 512. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|displayName|String|The display name of the pool. The name is unique across Cloud PC Pools in an organization. Maximum length is 60. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|id|String|The unique identifier for the pool. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedByPrincipalId|String|The principal ID of the user or service that last modified the pool. Read-only. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the pool was last modified. For example, midnight UTC on Jan 1, 2026 is `2026-01-01T00:00:00Z`. Read-only. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|managedByService|[cloudPcManagementServiceType](../resources/enums.md#cloudpcmanagementservicetype-values)|The identifier of Windows 365 or partner that manages the pool. The possible values are: `windows365`, `microsoft365BizChat`, `unknownFutureValue`. Read-only. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|networkConfiguration|[cloudPcNetworkConfiguration](../resources/cloudpcnetworkconfiguration.md)|The network configuration for the pool. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|poolStatus|[cloudPcPoolStatus](../resources/enums.md#cloudpcpoolstatus-values)|The current status of the pool. The possible values are: `created`, `provisioning`, `active`, `failed`, `deleting`, `provisioningPaused`, `unknownFutureValue`. The default value is `created`. Read-only. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
|poolUrl|String|The URL of the agent pool to check out/in. It's ready when the pool is provisioned. Read-only.|
|scalingPolicy|[cloudPcAgentPoolScalingPolicy](../resources/cloudpcagentpoolscalingpolicy.md)|The scaling policy defining minimum and maximum counts.|
|scopeIds|String collection|The scope tag IDs associated with the pool. Inherited from [cloudPcPool](../resources/cloudpcpool.md).|
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
  "lastModifiedByPrincipalId": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "managedByService": "String",
  "networkConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcNetworkConfiguration"
  },
  "poolStatus": "String",
  "poolUrl": "String",
  "scalingPolicy": {
    "@odata.type": "microsoft.graph.cloudPcAgentPoolScalingPolicy"
  },
  "scopeIds": ["String"],
  "sessionUsage": {
    "@odata.type": "microsoft.graph.cloudPcAgentPoolSessionUsage"
  }
}
```
