---
title: "cloudPcPool resource type"
description: "An abstract type that represents a pool for Cloud PC provisioning with common configurations and capabilities."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcPool resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a pool for Cloud PC provisioning with common configurations and capabilities.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/virtualendpoint-list-cloudpcpools.md)|[cloudPcPool](../resources/cloudpcpool.md) collection|List the properties and relationships of the [cloudPcPool](../resources/cloudpcpool.md) objects.|
|[Create](../api/virtualendpoint-post-cloudpcpools.md)|[cloudPcPool](../resources/cloudpcpool.md)|Create a new [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Get](../api/cloudpcpool-get.md)|[cloudPcPool](../resources/cloudpcpool.md)|Read the properties and relationships of a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Update](../api/cloudpcpool-update.md)|None|Update the properties of a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[Delete](../api/cloudpcpool-delete.md)|None|Delete a [cloudPcPool](../resources/cloudpcpool.md) object.|
|[List assignments](../api/cloudpcpool-list-assignments.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) collection|List the assignments of a [cloudPcPool](../resources/cloudpcpool.md).|
|[Create assignment](../api/cloudpcpool-post-assignments.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md)|Create a new [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) for a [cloudPcPool](../resources/cloudpcpool.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|capabilities|[cloudPcPoolCapabilityConfiguration](../resources/cloudpcpoolcapabilityconfiguration.md)|The capabilities configuration for the pool, including single sign-on settings.|
|cloudPcConfiguration|[cloudPcConfiguration](../resources/cloudpcconfiguration.md)|The Cloud PC specification, including image and operating system locale settings for provisioning.|
|createdDateTime|DateTimeOffset|The date and time when the pool was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2026 is `2026-01-01T00:00:00Z`. Read-only.|
|description|String|The description of the pool. The maximum length is 512 characters.|
|displayName|String|The display name of the pool. The name is unique across Cloud PC pools in an organization. The maximum length is 60 characters.||
|id|String|The unique identifier for the pool. Read-only. Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the pool was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2026 is `2026-01-01T00:00:00Z`. Read-only.|
|networkConfiguration|[cloudPcNetworkConfiguration](../resources/cloudpcnetworkconfiguration.md)|The network configuration for the pool.|


## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) collection|The collection of assignments that grant user or service principal identities access to this pool.|

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
  "lastModifiedDateTime": "String (timestamp)",
  "networkConfiguration": {
    "@odata.type": "microsoft.graph.cloudPcNetworkConfiguration"
  }
}
```
