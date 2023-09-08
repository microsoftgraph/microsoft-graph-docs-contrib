---
title: "openAwsSecurityGroupFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# openAwsSecurityGroupFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List openAwsSecurityGroupFindings](../api/openawssecuritygroupfinding-list.md)|[openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) collection|Get a list of the [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) objects and their properties.|
|[Get openAwsSecurityGroupFinding](../api/openawssecuritygroupfinding-get.md)|[openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md)|Read the properties and relationships of an [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) object.|
|[Update openAwsSecurityGroupFinding](../api/openawssecuritygroupfinding-update.md)|[openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md)|Update the properties of an [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) object.|
|[Delete openAwsSecurityGroupFinding](../api/openawssecuritygroupfinding-delete.md)|None|Delete an [openAwsSecurityGroupFinding](../resources/openawssecuritygroupfinding.md) object.|
|[List assignedComputeInstancesDetails](../api/openawssecuritygroupfinding-list-assignedcomputeinstancesdetails.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) collection|Get the assignedComputeInstanceDetails resources from the assignedComputeInstancesDetails navigation property.|
|[Add assignedComputeInstanceDetails](../api/openawssecuritygroupfinding-post-assignedcomputeinstancesdetails.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md)|Add assignedComputeInstancesDetails by posting to the assignedComputeInstancesDetails collection.|
|[Remove assignedComputeInstancesDetails](../api/openawssecuritygroupfinding-delete-assignedcomputeinstancesdetails.md)|None|Remove an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.|
|[List awsAuthorizationSystemResource](../api/openawssecuritygroupfinding-list-securitygroup.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) collection|Get the awsAuthorizationSystemResource resources from the securityGroup navigation property.|
|[Add awsAuthorizationSystemResource](../api/openawssecuritygroupfinding-post-securitygroup.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Add securityGroup by posting to the securityGroup collection.|
|[Remove awsAuthorizationSystemResource](../api/openawssecuritygroupfinding-delete-securitygroup.md)|None|Remove an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|inboundPorts|[inboundPorts](../resources/inboundports.md)|**TODO: Add Description**|
|totalStorageBucketCount|Int32|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignedComputeInstancesDetails|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) collection|**TODO: Add Description**|
|securityGroup|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|**TODO: Add Description**|

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

