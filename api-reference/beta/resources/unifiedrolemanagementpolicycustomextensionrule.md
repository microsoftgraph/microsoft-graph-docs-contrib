---
title: "unifiedRoleManagementPolicyCustomExtensionRule resource type"
description: "Defines a rule that associates a PIM custom extension with a role management policy."
author: "amanswaika"
ms.date: 10/16/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# unifiedRoleManagementPolicyCustomExtensionRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a rule that associates a Privileged Identity Management (PIM) custom extension with a role management policy. The rule controls whether the custom extension is invoked for role assignment operations targeted by the policy.

Objects of this type belong to the **rules** relationship of [unifiedRoleManagementPolicy](../resources/unifiedrolemanagementpolicy.md).

Inherits from [unifiedRoleManagementPolicyRule](../resources/unifiedrolemanagementpolicyrule.md).

## Methods

This resource is part of a polymorphic collection managed by the [unifiedRoleManagementPolicyRule resource](../resources/unifiedrolemanagementpolicyrule.md) base type. Operations are performed through the base type endpoints.

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
  "target": {
    "@odata.type": "microsoft.graph.unifiedRoleManagementPolicyRuleTarget"
  },
  "isEnabled": "Boolean",
  "customExtensionId": "String",
  "displayName": "String",
  "customAttributes": [
    "String"
  ]
}
```
