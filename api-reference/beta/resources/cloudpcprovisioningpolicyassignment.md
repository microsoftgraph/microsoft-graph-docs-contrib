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

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Add assignments](../api/cloudpcprovisioningpolicy-post-assignments.md)|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md)|Add assignments by posting to the assignments collection.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The provisioning policy assignment id. If the target is a group, the id is in the format of {policyId}_{groupId}|
|target|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md)|The assignment target for the provisioning policy.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.cloudPcProvisioningPolicyAssignment",
  "baseType": "microsoft.graph.entity",
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
