---
title: "unifiedRoleManagementPolicy resource type"
description: "A unifiedRoleManagementPolicy specifies the various policies associated with a scope and role definition. It is derived from microsoft.graph.policyBase."
author: "carolinetempleton"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicy resource type

Namespace: microsoft.graph

A unifiedRoleManagementPolicy specifies the various policies associated with a Azure AD scope and role definition. It is derived from [entity](entity.md). For policies that apply to Azure RBAC, use the [Azure REST PIM API for role management policies](/rest/api/authorization/role-management-policies).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementPolicies](../api/unifiedrolemanagementpolicy-list.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) collection|Get a list of the [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) objects and their properties.|
|[Get unifiedRoleManagementPolicy](../api/unifiedrolemanagementpolicy-get.md)|[unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md)|Read the properties and relationships of an [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md) object given the scope.|
|[List rules](../api/unifiedrolemanagementpolicy-list-rules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|Get the unifiedRoleManagementPolicyRule resources from the rules navigation property.|
|[Get rules](../api/unifiedrolemanagementpolicyrule-get.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|Get the rules for a unifiedRoleManagementPolicyRule object.|
|[Update rules](../api/unifiedrolemanagementpolicyrule-update.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|Update the rules for a unifiedRoleManagementPolicyRule object.|
<!--unsurface effectiveRules because it hasn't been implemented
|[List effectiveRules](../api/unifiedrolemanagementpolicy-list-effectiverules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|Get the unifiedRoleManagementPolicyRule resources from the effectiveRules navigation property.|
-->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|description|String|Description for the policy.|
|displayName|String|Display name for the policy.|
|id|String|Unique identifier for the policy.|
|isOrganizationDefault|Boolean|This can only be set to true for a single tenant wide policy which will apply to all scopes and roles. Set the scopeId to "/" and scopeType to Directory.|
|lastModifiedBy|[identity](../resources/identity.md)|The identity who last modified the role setting.|
|lastModifiedDateTime|DateTimeOffset|The time when the role setting was last modified.|
|scopeId|String|The id of the scope where the policy is created. Can be `/` for the tenant or a group ID. Required.|
|scopeType|String|The type of the scope where the policy is created. One of `Directory`, `DirectoryRole`. Required.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|effectiveRules|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|**Not implemented.** The list of effective rules like approval rules and expiration rules evaluated based on inherited referenced rules. For example, if there is a tenant-wide policy to enforce enabling an approval rule, the effective rule will be to enable approval even if the policy has a rule to disable approval.|
|rules|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|The collection of rules like approval rules and expiration rules.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicy",
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

