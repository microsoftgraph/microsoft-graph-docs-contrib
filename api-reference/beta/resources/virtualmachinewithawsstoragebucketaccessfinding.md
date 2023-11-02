---
title: "virtualMachineWithAwsStorageBucketAccessFinding resource type"
description: "View EC2 instances with S3 Bucket access"
author: "ashyasingh"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# virtualMachineWithAwsStorageBucketAccessFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View EC2 instances with S3 Bucket access

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List virtualMachineWithAwsStorageBucketAccessFindings](../api/virtualmachinewithawsstoragebucketaccessfinding-list.md)|[virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) collection|Get a list of the [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) objects and their properties.|
|[Get virtualMachineWithAwsStorageBucketAccessFinding](../api/virtualmachinewithawsstoragebucketaccessfinding-get.md)|[virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md)|Read the properties and relationships of a [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibleCount|Int32|total number of storage buckets that the EC2 instance can access using the role|
|bucketCount|Int32|total number of storage buckets in the authorization system that hosts the EC2 instance|
|createdDateTime|DateTimeOffset|Inherited from [finding](../resources/finding.md).|
|id|String|Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|Assigns an index based on an identities excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and may not reflect the current values for the group identity|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|ec2Instance|[authorizationSystemResource](../resources/authorizationsystemresource.md)|AWS EC2 instance that is assigned using the role|
|role|[awsRole](../resources/awsrole.md)|Represents an AWS role|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding",
  "baseType": "microsoft.graph.finding",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.virtualMachineWithAwsStorageBucketAccessFinding",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "bucketCount": "Integer",
  "accessibleCount": "Integer",
  "permissionsCreepIndex": {
    "@odata.type": "microsoft.graph.permissionsCreepIndex"
  }
}
```

