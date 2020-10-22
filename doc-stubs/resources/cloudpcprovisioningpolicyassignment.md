---
title: "cloudPcProvisioningPolicyAssignment resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# cloudPcProvisioningPolicyAssignment resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List assignments](../api/cloudpcprovisioningpolicy-list-assignments.md)|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) collection|Get the cloudPcProvisioningPolicyAssignment resources from the assignments navigation property.|
|[Add assignments](../api/cloudpcprovisioningpolicy-post-assignments.md)|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md)|Add assignments by posting to the assignments collection.|
|[Remove assignments](../api/cloudpcprovisioningpolicy-delete-assignments.md)|None|Remove a [cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) object.|
|[List cloudPcProvisioningPolicyAssignments](../api/cloudpcprovisioningpolicyassignment-list.md)|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) collection|Get a list of the [cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) objects and their properties.|
|[Create cloudPcProvisioningPolicyAssignment](../api/cloudpcprovisioningpolicyassignment-create.md)|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md)|Create a new [cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) object.|
|[Get cloudPcProvisioningPolicyAssignment](../api/cloudpcprovisioningpolicyassignment-get.md)|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md)|Read the properties and relationships of a [cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) object.|
|[Update cloudPcProvisioningPolicyAssignment](../api/cloudpcprovisioningpolicyassignment-update.md)|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md)|Update the properties of a [cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) object.|
|[Delete cloudPcProvisioningPolicyAssignment](../api/cloudpcprovisioningpolicyassignment-delete.md)|None|Deletes a [cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description**|
|target|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcProvisioningPolicyAssignment",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcProvisioningPolicyAssignment",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.cloudPcManagementAssignmentTarget"
  }
}
```

