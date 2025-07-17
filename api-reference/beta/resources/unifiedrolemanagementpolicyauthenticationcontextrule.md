---
title: "unifiedRoleManagementPolicyAuthenticationContextRule resource type"
description: "A type derived from the unifiedRoleManagementPolicyRule resource type that defines the authentication context rule for the conditional access policy associated with a role management policy."
author: "rkarim-ms"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# unifiedRoleManagementPolicyAuthenticationContextRule resource type

Namespace: microsoft.graph

A type derived from the [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) resource type that defines the authentication context rule for the conditional access policy associated with a role management policy.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|claimValue|String|The value of the authentication context claim.|
|id|String|Identifier for the rule. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean| Whether this rule is enabled.|
|target|[unifiedRoleManagementPolicyRuleTarget](../resources/unifiedrolemanagementpolicyruletarget.md)|Defines details of the scope that by the enablement rule targets. The details can include the principal type, the role assignment type, and actions affecting a role. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md). Supports `$filter` (`eq`, `ne`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
  "baseType": "microsoft.graph.unifiedRoleManagementPolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyAuthenticationContextRule",
  "id": "String (identifier)",
  "target": {
    "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
  },
  "isEnabled": "Boolean",
  "claimValue": "String"
}
```

