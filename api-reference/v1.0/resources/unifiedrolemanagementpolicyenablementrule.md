---
title: "unifiedRoleManagementPolicyEnablementRule resource type"
description: "A type derived from the unifiedRoleManagementPolicyRule resource type that defines the rules to enable the assignment, for example, enable MFA, justification on assignments or ticketing information."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyEnablementRule resource type

Namespace: microsoft.graph

A type derived from the [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) resource type that defines the rules to enable the assignment, for example, enable MFA, justification on assignments or ticketing information.

## Methods

None.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|enabledRules|String collection|The collection of rules that are enabled for this policy rule. For example, `MultiFactorAuthentication`, `Ticketing`, and `Justification`.|
|id|String|Identifier for the rule. Inherited from [entity](../resources/entity.md).|
|target|[unifiedRoleManagementPolicyRuleTarget](../resources/unifiedrolemanagementpolicyruletarget.md)|Defines details of the scope that's targeted by the enablement rule. The details can include the principal type, the role assignment type, and actions affecting a role. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md). Supports `$filter` (`eq`, `ne`).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
  "baseType": "microsoft.graph.unifiedRoleManagementPolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyEnablementRule",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
  },
  "enabledRules": [
    "String"
  ]
}
```

