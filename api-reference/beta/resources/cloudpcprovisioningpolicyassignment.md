---
title: "cloudPcProvisioningPolicyAssignment resource type"
description: "CloudPC provisioning policy assignments"
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/06/2024
---

# cloudPcProvisioningPolicyAssignment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a defined collection of provisioning policy assignments.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique Identifier for the provisioning policy assignment. Read-only. If `target` is a user group, then the ID is shown as {policyId_groupId}.|
|target|[cloudPcManagementAssignmentTarget](../resources/cloudpcmanagementassignmenttarget.md)|The assignment target for the provisioning policy. Currently, the only target supported for this policy is a user group. For details, see [cloudPcManagementGroupAssignmentTarget](cloudpcmanagementgroupassignmenttarget.md). |

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|assignedUsers|[user](../resources/user.md) collection|The assignment targeted users for the provisioning policy. This list of users is computed based on assignments, licenses, group memberships, and policies. This property is read-only. Supports` $expand`.|

## JSON representation

The following JSON representation shows the resource type.
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
