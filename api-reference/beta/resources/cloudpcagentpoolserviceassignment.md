---
title: "cloudPcAgentPoolServiceAssignment resource type"
description: "Represents an assignment of a service principal to a Cloud PC agent pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcAgentPoolServiceAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an assignment of a service principal to a Cloud PC agent pool.

Inherits from [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudpcpool-list-assignments.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) collection|List the assignments of a [cloudPcPool](../resources/cloudpcpool.md).|
|[Get](../api/cloudpcpoolassignment-get.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md)|Read the properties of a [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) object.|
|[Create](../api/cloudpcpool-post-assignments.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md)|Create a new [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) object.|
|[Delete](../api/cloudpcpoolassignment-delete.md)|None|Delete a [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the assignment. Read-only. Inherited from [entity](../resources/entity.md).|
|servicePrincipalId|String|The unique identifier of the service principal.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcAgentPoolServiceAssignment",
  "baseType": "microsoft.graph.cloudPcPoolAssignment",
  "openType": false
} -->
```json
{
  "@odata.type": "#microsoft.graph.cloudPcAgentPoolServiceAssignment",
  "id": "String (identifier)",
  "servicePrincipalId": "String"
}
```
