---
title: "unifiedRoleManagementPolicyRuleTarget resource type"
description: "Defines details of the scope that's targeted by role management policy rule. The details can include the principal type, the role assignment type, and actions affecting a role."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyRuleTarget resource type

Namespace: microsoft.graph

Defines details of the scope that's targeted by role management policy rule. The details can include the principal type, the role assignment type, and actions affecting a role.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|caller|String|The type of caller that's the target of the policy rule. Allowed values are: `None`, `Admin`, `EndUser`.|
|enforcedSettings|String collection|The list of role settings that are enforced and cannot be overridden by child scopes. Use `All` for all settings.|
|inheritableSettings|String collection|The list of role settings that can be inherited by child scopes. Use `All` for all settings.|
|level|String|The role assignment type that's the target of policy rule. Allowed values are: `Eligibility`, `Assignment`.	|
|operations|String collection|The role management operations that are the target of the policy rule. Allowed values are: `All`, `Activate`, `Deactivate`, `Assign`, `Update`, `Remove`, `Extend`, `Renew`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|targetObjects|[directoryObject](../resources/directoryobject.md) collection| The collection of users, groups, and service principals that are in scope of the policy. If not specified, all objects are in scope of the policy.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyRuleTarget",
  "caller": "String",
  "operations": [
    "String"
  ],
  "level": "String",
  "inheritableSettings": [
    "String"
  ],
  "enforcedSettings": [
    "String"
  ]
}
```