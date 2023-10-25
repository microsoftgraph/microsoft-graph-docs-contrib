---
title: "openAwsSecurityGroupFinding resource type"
description: "View AWS open security groups."
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# openAwsSecurityGroupFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View AWS open security groups.


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List openAwsSecurityGroupFindings](../api/openawssecuritygroupfinding-list.md)|[openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) collection|Get a list of the [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) objects and their properties.|
|[Get openAwsSecurityGroupFinding](../api/openawssecuritygroupfinding-get.md)|[openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md)|Read the properties and relationships of an [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|Inherited from [finding](../resources/finding.md).|
|id|String|Inherited from [entity](../resources/entity.md).|
|inboundPorts|[inboundPorts](../resources/inboundports.md)|Contains information on inbound ports related to an open security group|
|totalStorageBucketCount|Int32|The number of storage buckets accessed by the assigned compute instances|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignedComputeInstancesDetails|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) collection|a set of AWS EC2 compute instances related to this open security group|
|securityGroup|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Represents a resource in an authorization system|

## JSON representation
The following is a JSON representation of the resource.
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

