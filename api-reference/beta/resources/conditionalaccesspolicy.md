---
title: "conditionalAccessPolicy resource type"
description: "Represents a Microsoft Entra Conditional Access policy. Conditional access policies are custom rules that define an access scenario."
author: "ashyasingh"
ms.date: 08/11/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# conditionalAccessPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra Conditional Access policy. Conditional access policies are custom rules that define an access scenario. For more information, see the [Conditional access documentation](/azure/active-directory/conditional-access/).


Inherits from [policyDeletableItem](../resources/policydeletableitem.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/conditionalaccessroot-list-policies.md)|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) collection|Get a list of the conditionalAccessPolicy objects and their properties.|
|[Create](../api/conditionalaccessroot-post-policies.md)|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)|Create a new conditionalAccessPolicy object.|
|[Get](../api/conditionalaccesspolicy-get.md)|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)|Read the properties and relationships of [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) object.|
|[Update](../api/conditionalaccesspolicy-update.md)|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)|Update the properties of a conditionalAccessPolicy object.|
|[Delete](../api/conditionalaccesspolicy-delete.md)|None|Delete a conditionalAccessPolicy object.|
| [List deleted policies](../api/policydeletableitem-list.md) | [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) collection | List all deleted conditionalAccessPolicy objects. |
| [Get deleted policy](../api/policydeletableitem-get.md) | [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md) | Get a single deleted conditionalAccessPolicy object. |
|[Restore](../api/conditionalaccesspolicy-restore.md)|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)|Restore a conditionalAccessPolicy object.|
| [Permanently delete a soft deleted policy](../api/policydeletableitem-delete.md) | None | Permanently delete a deleted conditionalAccessPolicy object. |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditions|[conditionalAccessConditionSet](conditionalaccessconditionset.md)| Specifies the rules that must be met for the policy to apply. Required. |
|createdDateTime|DateTimeOffset| The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Readonly. |
|description|String| Not used. |
|displayName|String| Specifies a display name for the conditionalAccessPolicy object. |
|grantControls|[conditionalAccessGrantControls](conditionalaccessgrantcontrols.md)| Specifies the grant controls that must be fulfilled to pass the policy. |
|id|String| Specifies the identifier of a conditionalAccessPolicy object. Read-only.|
|modifiedDateTime| DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Readonly. |
|sessionControls|[conditionalAccessSessionControls](conditionalaccesssessioncontrols.md)| Specifies the session controls that are enforced after sign-in. |
|state|conditionalAccessPolicyState| Specifies the state of the conditionalAccessPolicy object. Possible values are: `enabled`, `disabled`, `enabledForReportingButNotEnforced`. Required. |
|deletedDateTime|DateTimeOffset|Shows the last date and time the policy was deleted.Inherited from [policyDeletableItem](../resources/policydeletableitem.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conditionalAccessPolicy",
  "baseType": "microsoft.graph.policyDeletableItem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessPolicy",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "displayName": "String",
  "description": "String",
  "state": "String",
  "conditions": {
    "@odata.type": "microsoft.graph.conditionalAccessConditionSet"
  },
  "grantControls": {
    "@odata.type": "microsoft.graph.conditionalAccessGrantControls"
  },
  "sessionControls": {
    "@odata.type": "microsoft.graph.conditionalAccessSessionControls"
  }
}
```

