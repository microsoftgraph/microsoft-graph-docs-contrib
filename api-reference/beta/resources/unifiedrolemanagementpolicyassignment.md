---
title: "unifiedRoleManagementPolicyAssignment resource type"
description: "A unifiedRoleManagementPolicyAssignment assigns the policy to a specific scope and role definition."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
toc.title: Policy assignment
ms.date: 07/22/2024
---

# unifiedRoleManagementPolicyAssignment resource type

Namespace: microsoft.graph

The assignment of a role management policy to a [role definition](../resources/unifiedroledefinition.md) object.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/policyroot-list-rolemanagementpolicyassignments.md)|[unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) collection|Get the details of all role management policy assignments including the policies and rules associated with the Microsoft Entra role.|
|[Get](../api/unifiedrolemanagementpolicyassignment-get.md)|[unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md)|Read the properties and relationships of an [unifiedRoleManagementPolicyAssignment](../resources/unifiedrolemanagementpolicyassignment.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier for the policy assignment. The ID is typically a concatenation of the unifiedRoleManagementPolicy ID and the roleDefinitionId separated by an underscore.|
|policyId|String|The id of the policy. Inherited from [entity](../resources/entity.md).|
|roleDefinitionId|String|For Microsoft Entra roles policy, it's the identifier of the [role definition](unifiedroledefinition.md) object where the policy applies. For PIM for Groups membership and ownership, it's either `member` or `owner`. Supports $filter (`eq`).|
|scopeId|String|The identifier of the scope where the policy is assigned. Can be `/` for the tenant or a group ID. Required.|
|scopeType|String|The type of the scope where the policy is assigned. One of `Directory`, `DirectoryRole`, `Group`. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policy|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md)|The policy that's associated with a policy assignment. Supports $expand and a nested $expand of the rules and effectiveRules relationships for the policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyAssignment",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAssignment",
  "id": "String (identifier)",
  "policyId": "String",
  "scopeId": "String",
  "scopeType": "String",
  "roleDefinitionId": "String"
}
```
