---
title: "unifiedRoleManagementPolicy resource type"
description: "Specifies the various policies associated with scopes and roles."
author: "japere"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicy resource type

Namespace: microsoft.graph

Specifies the various policies associated with scopes and roles. For policies that apply to Azure RBAC, use the [Azure REST PIM API for role management policies](/rest/api/authorization/role-management-policies).

Currently, all policies and associated rules are read-only.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementPolicies](../api/policyroot-list-rolemanagementpolicies.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection|Get role management policies and their details.|
|[Get unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-get.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md)|Retrieve the details of a role management policy.|
|[List rules](../api/unifiedrolemanagementpolicy-list-rules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|Get the rules defined for a role management policy.|
|[Get unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicyrule-get.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|Retrieve a rule defined for a role management policy.|



<!--
|[List effectiveRules](../api/unifiedrolemanagementpolicy-list-effectiverules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|Get the unifiedRoleManagementPolicyRule resources from the effectiveRules navigation property.|
|[Create unifiedRoleManagementPolicy](../api/policyroot-post-rolemanagementpolicies.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md)|Create a new [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) object.|
|[Update unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-update.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md)|Update the properties of an [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) object.|
|[Delete unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-delete.md)|None|Deletes an [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) object.|
|[Create unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicy-post-effectiverules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|Create a new unifiedRoleManagementPolicyRule object.|
|[Create unifiedRoleManagementPolicyRule](../api/unifiedrolemanagementpolicy-post-rules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|Create a new unifiedRoleManagementPolicyRule object.|
-->

## Properties

|Property|Type|Description|
|:---|:---|:---|
|description|String|Description for the policy.|
|displayName|String|Display name for the policy.|
|id|String|Unique identifier for the policy.|
|isOrganizationDefault|Boolean|This can only be set to `true` for a single tenant-wide policy which will apply to all scopes and roles. Set the scopeId to `/` and scopeType to `Directory`. Supports `$filter` (`eq`, `ne`).|
|lastModifiedBy|[identity](../resources/identity.md)|The identity who last modified the role setting.|
|lastModifiedDateTime|DateTimeOffset|The time when the role setting was last modified.|
|scopeId|String|The identifier of the scope where the policy is created. Can be `/` for the tenant or a group ID. Required.|
|scopeType|String|The type of the scope where the policy is created. One of `Directory`, `DirectoryRole`. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|effectiveRules|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|**Not implemented.** The list of effective rules like approval rules and expiration rules evaluated based on inherited referenced rules. For example, if there is a tenant-wide policy to enforce enabling an approval rule, the effective rule will be to enable approval even if the policy has a rule to disable approval. Supports `$expand`. The effectiveRules object can only be retrieved when you expand a single policy. For example, `/policies/roleManagementPolicies/{unifiedRoleManagementPolicyId}?$expand=effectiveRules`.|
|rules|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|The collection of rules like approval rules and expiration rules. Supports `$expand`.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicy",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicy",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "isOrganizationDefault": "Boolean",
  "scopeId": "String",
  "scopeType": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identity"
  }
}
```

