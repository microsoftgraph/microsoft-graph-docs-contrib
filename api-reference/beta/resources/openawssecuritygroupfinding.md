---
title: "openAwsSecurityGroupFinding resource type"
description: "View AWS open security groups."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 07/25/2024
---

# openAwsSecurityGroupFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

View AWS open security groups.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/openawssecuritygroupfinding-list.md)|[openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) collection|Get a list of the [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) objects and their properties.|
|[Get](../api/openawssecuritygroupfinding-get.md)|[openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md)|Read the properties and relationships of an [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) object.|
|[List assignedComputeInstanceDetails](../api/openawssecuritygroupfinding-list-assignedcomputeinstancesdetails.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) collection|Retrieve a list of compute instances for an AWS open security group finding.|
|[Get assignedComputeInstanceDetails](../api/assignedcomputeinstancedetails-get.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md)|Get the details of a compute instance for an AWS open security group finding.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Unique identifier for the finding. Inherited from [entity](../resources/entity.md).|
|inboundPorts|[inboundPorts](../resources/inboundports.md)|Contains information on inbound ports related to an open security group. Supports `$filter` (`eq`) `$select`.|
|totalStorageBucketCount|Int32|The number of storage buckets accessed by the assigned compute instances.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignedComputeInstancesDetails|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) collection|A set of AWS EC2 compute instances related to this open security group.|
|securityGroup|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Represents a resource in an AWS authorization system.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.openAwsSecurityGroupFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.openAwsSecurityGroupFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "totalStorageBucketCount": "Integer",
  "inboundPorts": {
    "@odata.type": "microsoft.graph.inboundPorts"
  }
}
```


