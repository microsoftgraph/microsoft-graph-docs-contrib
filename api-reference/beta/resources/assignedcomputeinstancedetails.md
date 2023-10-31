---
title: "assignedComputeInstanceDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# assignedComputeInstanceDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List assignedComputeInstanceDetails](../api/openawssecuritygroupfinding-list-assignedcomputeinstancesdetails.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) collection|Get a list of the [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) objects and their properties.|
|[Create assignedComputeInstanceDetails](../api/openawssecuritygroupfinding-post-assignedcomputeinstancesdetails.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md)|Create a new [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.|
|[Get assignedComputeInstanceDetails](../api/assignedcomputeinstancedetails-get.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md)|Read the properties and relationships of an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.|
|[Update assignedComputeInstanceDetails](../api/assignedcomputeinstancedetails-update.md)|[assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md)|Update the properties of an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.|
|[Delete assignedComputeInstanceDetails](../api/openawssecuritygroupfinding-delete-assignedcomputeinstancesdetails.md)|None|Delete an [assignedComputeInstanceDetails](../resources/assignedcomputeinstancedetails.md) object.|
|[List accessedStorageBuckets](../api/assignedcomputeinstancedetails-list-accessedstoragebuckets.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the accessedStorageBuckets navigation property.|
|[Add authorizationSystemResource](../api/assignedcomputeinstancedetails-post-accessedstoragebuckets.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add accessedStorageBuckets by posting to the accessedStorageBuckets collection.|
|[Remove accessedStorageBuckets](../api/assignedcomputeinstancedetails-delete-accessedstoragebuckets.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|
|[List authorizationSystemResource](../api/assignedcomputeinstancedetails-list-assignedcomputeinstance.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|Get the authorizationSystemResource resources from the assignedComputeInstance navigation property.|
|[Add authorizationSystemResource](../api/assignedcomputeinstancedetails-post-assignedcomputeinstance.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Add assignedComputeInstance by posting to the assignedComputeInstance collection.|
|[Remove authorizationSystemResource](../api/assignedcomputeinstancedetails-delete-assignedcomputeinstance.md)|None|Remove an [authorizationSystemResource](../resources/authorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|accessedStorageBuckets|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|**TODO: Add Description**|
|assignedComputeInstance|[authorizationSystemResource](../resources/authorizationsystemresource.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
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

