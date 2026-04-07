---
title: "cloudPcPoolAssignment resource type"
description: "An abstract type that represents a base assignment of a principal to a Cloud PC pool."
author: "yityu"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/23/2026
---

# cloudPcPoolAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a base assignment of a principal to a Cloud PC pool.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/cloudpcpool-list-assignments.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) collection|List the assignments of a [cloudPcPool](../resources/cloudpcpool.md).|
|[Create](../api/cloudpcpool-post-assignments.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md)|Create a new [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) object.|
|[Get](../api/cloudpcpoolassignment-get.md)|[cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md)|Read the properties of a [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) object.|
|[Delete](../api/cloudpcpoolassignment-delete.md)|None|Delete a [cloudPcPoolAssignment](../resources/cloudpcpoolassignment.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the assignment. Read-only. Inherited from [entity](../resources/entity.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcPoolAssignment",
  "baseType": "microsoft.graph.entity",
  "openType": false
} -->
```json
{
  "@odata.type": "#microsoft.graph.cloudPcPoolAssignment",
  "id": "String (identifier)"
}
```
