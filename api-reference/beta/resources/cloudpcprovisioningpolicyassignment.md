---
title: "cloudPcProvisioningPolicyAssignment resource type"
description: "CloudPC provisioning policy assignments"
author: "jiajyang"
localization_priority: Normal
ms.prod: "microsoft_cloudpc"
doc_type: resourcePageType
---

# cloudPcProvisioningPolicyAssignment resource type

Namespace: microsoft.graph

CloudPC provisioning policy assignments.

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
    "@odata.type": "microsoft.graph.cloudPcManagementGroupAssignmentTarget",
    "groupId": "String"
  }
}
```
