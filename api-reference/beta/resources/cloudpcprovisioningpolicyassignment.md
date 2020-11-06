---
title: "cloudPcProvisioningPolicyAssignment resource type"
description: "CloudPC provisioning policy assignments"
author: "jiajyang"
localization_priority: Normal
ms.prod: ""
doc_type: resourcePageType
---

# cloudPcProvisioningPolicyAssignment resource type

Namespace: microsoft.graph

Represents a defined collection of provisioning policy assignments.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Assign cloudPcProvisioningPolicy](../api/cloudpcprovisioningpolicy-assign.md)|[cloudPcProvisioningPolicyAssignment](../resources/cloudpcprovisioningpolicyassignment.md)|Assign [cloudPcProvisioningPolicy](../resources/cloudpcprovisioningpolicy.md) to user groups.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the provisioning policy assignment. Read-only. If `target` is a user group, then the ID is shown as {policyId}_{groupId}.|
|target|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md)|The assignment target for the provisioning policy. Currently, the only target supported for this policy is a user group.|

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
