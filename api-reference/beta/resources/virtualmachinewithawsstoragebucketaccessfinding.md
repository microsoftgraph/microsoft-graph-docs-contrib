---
title: "virtualMachineWithAwsStorageBucketAccessFinding resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# virtualMachineWithAwsStorageBucketAccessFinding resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [finding](../resources/finding.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List virtualMachineWithAwsStorageBucketAccessFindings](../api/virtualmachinewithawsstoragebucketaccessfinding-list.md)|[virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) collection|Get a list of the [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) objects and their properties.|
|[Get virtualMachineWithAwsStorageBucketAccessFinding](../api/virtualmachinewithawsstoragebucketaccessfinding-get.md)|[virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md)|Read the properties and relationships of a [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) object.|
|[Update virtualMachineWithAwsStorageBucketAccessFinding](../api/virtualmachinewithawsstoragebucketaccessfinding-update.md)|[virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md)|Update the properties of a [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) object.|
|[Delete virtualMachineWithAwsStorageBucketAccessFinding](../api/virtualmachinewithawsstoragebucketaccessfinding-delete.md)|None|Delete a [virtualMachineWithAwsStorageBucketAccessFinding](../resources/virtualmachinewithawsstoragebucketaccessfinding.md) object.|
|[List authorizationSystemResource](../api/virtualmachinewithawsstoragebucketaccessfinding-list-ec2instance.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the ec2Instance navigation property.|
|[Add authorizationSystemResource](../api/virtualmachinewithawsstoragebucketaccessfinding-post-ec2instance.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add ec2Instance by posting to the ec2Instance collection.|
|[Remove authorizationSystemResource](../api/virtualmachinewithawsstoragebucketaccessfinding-delete-ec2instance.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|
|[List awsRole](../api/virtualmachinewithawsstoragebucketaccessfinding-list-role.md)|[awsRole](../resources/awsrole.md) collection|Get the awsRole resources from the role navigation property.|
|[Add awsRole](../api/virtualmachinewithawsstoragebucketaccessfinding-post-role.md)|[awsRole](../resources/awsrole.md)|Add role by posting to the role collection.|
|[Remove awsRole](../api/virtualmachinewithawsstoragebucketaccessfinding-delete-role.md)|None|Remove an [awsRole](../resources/awsrole.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessibleCount|Int32|**TODO: Add Description**|
|bucketCount|Int32|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [finding](../resources/finding.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|permissionsCreepIndex|[permissionsCreepIndex](../resources/permissionscreepindex.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|ec2Instance|[authorizationSystemResource](../resources/authorizationsystemresource.md)|**TODO: Add Description**|
|role|[awsRole](../resources/awsrole.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
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

