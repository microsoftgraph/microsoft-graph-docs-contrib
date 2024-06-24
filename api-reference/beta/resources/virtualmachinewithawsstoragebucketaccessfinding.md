---
title: "virtualMachineWithAwsStorageBucketAccessFinding resource type"
description: "View EC2 instances with S3 Bucket access."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# virtualMachineWithAwsStorageBucketAccessFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

View EC2 instances with S3 Bucket access.

Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List virtualMachineWithAwsStorageBucketAccessFinding objects](../api/virtualmachinewithawsstoragebucketaccessfinding-list.md)|[virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) collection|Get a list of the [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) objects and their properties.|
|[Get virtualMachineWithAwsStorageBucketAccessFinding](../api/virtualmachinewithawsstoragebucketaccessfinding-get.md)|[virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md)|Read the properties and relationships of a [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) object.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibleCount|Int32|The total number of storage buckets that the EC2 instance can access using the role.|
|bucketCount|Int32|The total number of storage buckets in the authorization system that hosts the EC2 instance.|
|createdDateTime|DateTimeOffset|Defines when the finding was created. Inherited from [finding](../resources/finding.md).|
|id|String|Identifier for the finding. Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|A score for an identity's excessive permissions that is classified into three buckets: 0-33: low, 34-66: medium, 67-100: high. This property and its values are a snapshot as of when the finding was created and might not reflect the current score for the identity. Supports `$filter` (`gt`) and `$orderby`. |


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|ec2Instance|[authorizationSystemResource](../resources/authorizationsystemresource.md)|The AWS EC2 instance that is assigned using the role.|
|role|[awsRole](../resources/awsrole.md)|Represents an AWS role. Supports `$filter` as follows: `$filter=role/authorizationSystem/authorizationSystemId IN ('authorizationSystemIds')`.|



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

