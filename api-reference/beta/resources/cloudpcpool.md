---
title: "cloudPcPool resource type"
description: "Represents a pool for Cloud PC provisioning with common configurations and capabilities."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcPool resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a pool for Cloud PC provisioning with common configurations and capabilities.

This is an abstract type. Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudpcpool-list.md)|[cloudPcPool](../resources/cloudpcpool.md) collection|List the properties and relationships of the [cloudPcPool](../resources/cloudpcpool.md) objects.|
|[Get](../api/cloudpcpool-get.md)|[cloudPcPool](../resources/cloudpcpool.md)|Read the properties and relationships of a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Create](../api/cloudpcpool-create.md)|[cloudPcPool](../resources/cloudpcpool.md)|Create a new [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Update](../api/cloudpcpool-update.md)|None|Update the properties of a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Delete](../api/cloudpcpool-delete.md)|None|Delete a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[List assignments](../api/cloudpcpool-list-assignments.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) collection|List the assignments of a [cloudPcPool](../resources/cloudpcpool.md).|
|[Create assignment](../api/cloudpcpool-post-assignments.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md)|Create a new assignment for a [cloudPcPool](../resources/cloudpcpool.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|capabilities|[cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md)|The capabilities configuration including SSO settings.|
|cloudPcConfiguration|[cloudPcConfiguration](../resources/cloudpcconfiguration.md)|The Cloud PC specification including image and OS locale settings.|
|createdDateTime|DateTimeOffset|The date and time when the pool was created. For example, midnight UTC on Jan 1, 2026 is `2026-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the pool. Maximum length is 512.|
|displayName|String|The display name of the pool. The name is unique across Cloud PC Pools in an organization. Maximum length is 60.|
|id|String|The unique identifier for the pool. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedByPrincipalId|String|The principal ID of the user or service that last modified the pool. Read-only.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the pool was last modified. For example, midnight UTC on Jan 1, 2026 is `2026-01-01T00:00:00Z`. Read-only.|
|managedByService|[cloudPcManagementServiceType](../resources/enums.md#cloudpcmanagementservicetype-values)|The identifier of Windows 365 or partner that manages the pool. The possible values are: `windows365`, `microsoft365BizChat`, `unknownFutureValue`. Read-only.|
|networkConfiguration|[cloudPcNetworkConfiguration](../resources/cloudpcnetworkconfiguration.md)|The network configuration for the pool.|
|poolStatus|[cloudPcPoolStatus](../resources/enums.md#cloudpcpoolstatus-values)|The current status of the pool. The possible values are: `created`, `provisioning`, `active`, `failed`, `deleting`, `provisioningPaused`, `unknownFutureValue`. The default value is `created`. Read-only.|


## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) collection|The assignments that grant identities access to the pool.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcPool",
  "baseType": "microsoft.graph.entity",
  "openType": false
} -->
```json
{
  "@odata.type": "#microsoft.graph.cloudPcPool",
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
  "poolStatus": "String"
}
```
