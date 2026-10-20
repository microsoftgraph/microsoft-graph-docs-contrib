---
title: "unifiedRoleManagementPolicyCustomExtensionRule resource type"
description: "Defines a rule that associates a PIM custom extension with a role management policy."
author: "amanswaika"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 09/16/2026
---

# unifiedRoleManagementPolicyCustomExtensionRule resource type

Namespace: microsoft.graph

Defines a rule that associates a PIM custom extension with a role management policy. The rule controls whether the custom extension is invoked for role assignment operations targeted by the policy.

Inherits from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/unifiedrolemanagementpolicy-list-rules.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md) collection|Get the rules defined for a role management policy.|
|[Get](../api/unifiedrolemanagementpolicyrule-get.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|Retrieve a rule defined for a role management policy.|
|[Update](../api/unifiedrolemanagementpolicyrule-update.md)|[unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md)|Update a rule defined for a role management policy.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|customAttributes|String collection|The custom attributes associated with the policy rule. Read-only.|
|customExtensionId|String|The unique identifier of the [roleManagementCustomCalloutExtension](../resources/rolemanagementcustomcalloutextension.md) associated with this rule.|
|displayName|String|The display name of the policy rule. Read-only.|
|id|String|The unique identifier for the rule. Inherited from [entity](../resources/entity.md). Read-only.|
|isEnabled|Boolean|Indicates whether the custom extension rule is enabled.|
|target|[unifiedRoleManagementPolicyRuleTarget](../resources/unifiedrolemanagementpolicyruletarget.md)|Defines the scope targeted by the role management policy rule. Inherited from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyCustomExtensionRule",
  "baseType": "microsoft.graph.unifiedRoleManagementPolicyRule",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.unifiedRoleManagementPolicyCustomExtensionRule",
  "id": "String (identifier)",
  "customAttributes": ["String"],
  "customExtensionId": "String",
  "displayName": "String",
  "isEnabled": "Boolean",
  "target": {
    "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
  }
}
```
