---
title: "assignedComputeInstanceDetails resource type"
description: "Represents the details of a list of S3 buckets associated with this EC2 instance"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# assignedComputeInstanceDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of a list of S3 buckets associated with this EC2 instance

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List assignedComputeInstanceDetails](../api/openawssecuritygroupfinding-list-assignedcomputeinstancesdetails.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) collection|Get a list of the [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) objects and their properties.|
|[Create assignedComputeInstanceDetails](../api/openawssecuritygroupfinding-post-assignedcomputeinstancesdetails.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md)|Create a new [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.|
|[Get assignedComputeInstanceDetails](../api/assignedcomputeinstancedetails-get.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md)|Read the properties and relationships of an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for this EntityType Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessedStorageBuckets|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Represents a set of S3 buckets accessed by this EC2 instance|
|assignedComputeInstance|[authorizationSystemResource](../resources/authorizationsystemresource.md)|assigned EC2 instance|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.assignedComputeInstanceDetails",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.assignedComputeInstanceDetails",
  "id": "String (identifier)"
}
```

