---
title: "unifiedRoleManagementPolicyAuthenticationContextRule resource type"
description: "A type derived from the unifiedRoleManagementPolicyRule resource type that defines the enablement rule associated with a role management policy."
author: "japere"
ms.localizationpriority: medium
ms.prod: "directory-management"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyAuthenticationContextRule resource type

Namespace: microsoft.graph

A type derived from the [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) resource type that defines the enablement rule associated with a role management policy.

## Methods

None. 

<!--
|Method|Return type|Description|
|:---|:---|:---|
|[List unifiedRoleManagementPolicyAuthenticationContextRules](../api/unifiedrolemanagementpolicyauthenticationcontextrule-list.md)|[unifiedRoleManagementPolicyAuthenticationContextRule](../resources/unifiedrolemanagementpolicyauthenticationcontextrule.md) collection|Get a list of the [unifiedRoleManagementPolicyAuthenticationContextRule](../resources/unifiedrolemanagementpolicyauthenticationcontextrule.md) objects and their properties.|
|[Get unifiedRoleManagementPolicyAuthenticationContextRule](../api/unifiedrolemanagementpolicyauthenticationcontextrule-get.md)|[unifiedRoleManagementPolicyAuthenticationContextRule](../resources/unifiedrolemanagementpolicyauthenticationcontextrule.md)|Read the properties and relationships of an [unifiedRoleManagementPolicyAuthenticationContextRule](../resources/unifiedrolemanagementpolicyauthenticationcontextrule.md) object.|
|[Update unifiedRoleManagementPolicyAuthenticationContextRule](../api/unifiedrolemanagementpolicyauthenticationcontextrule-update.md)|[unifiedRoleManagementPolicyAuthenticationContextRule](../resources/unifiedrolemanagementpolicyauthenticationcontextrule.md)|Update the properties of an [unifiedRoleManagementPolicyAuthenticationContextRule](../resources/unifiedrolemanagementpolicyauthenticationcontextrule.md) object.|
|[Delete unifiedRoleManagementPolicyAuthenticationContextRule](../api/unifiedrolemanagementpolicyauthenticationcontextrule-delete.md)|None|Deletes an [unifiedRoleManagementPolicyAuthenticationContextRule](../resources/unifiedrolemanagementpolicyauthenticationcontextrule.md) object.|
-->

## Properties
|Property|Type|Description|
|:---|:---|:---|
|claimValue|String|The value of the authentication context claim.|
|id|String|Identifier for the rule. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean| Whether this rule is enabled.|
|target|[unifiedRoleManagementPolicyRuleTarget](../resources/unifiedrolemanagementpolicyruletarget.md)|Defines details of the scope that's targeted by the enablement rule. The details can include the principal type, the role assignment type, and actions affecting a role. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

