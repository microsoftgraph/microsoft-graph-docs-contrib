---
title: "tlsInspectionRule resource type"
description: "Defines a specific rule within a TLS inspection policy that determines whether certain network traffic should be inspected or bypassed based on matching conditions."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# tlsInspectionRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a specific rule within a TLS inspection policy that determines whether certain network traffic should be inspected or bypassed based on matching conditions. Rules allow administrators to create granular controls over which traffic patterns should undergo TLS inspection and how.

Rules are evaluated in order of priority, with the first matching rule's action being applied. If no rules match, the policy's default action is used.

Inherits from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-tlsinspectionpolicy-list-policyrules.md)|[microsoft.graph.networkaccess.tlsInspectionRule](networkaccess-tlsinspectionrule.md) collection|Get a list of the tlsInspectionRule objects and their properties.|
|[Get](../api/networkaccess-tlsinspectionrule-get.md)|[microsoft.graph.networkaccess.tlsInspectionRule](networkaccess-tlsinspectionrule.md)|Get a single tlsInspectionRule object.|
|[Update](../api/networkaccess-tlsinspectionrule-update.md)|None|Update the properties of a tlsInspectionRule object.|
|[Delete](../api/networkaccess-tlsinspectionrule-delete.md)|None|Delete a tlsInspectionRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md). Inherits from [entity](../resources/entity.md).|
|name|String|The display name of the rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|description|String|Optional description explaining the purpose of the rule.|
|action|microsoft.graph.networkaccess.tlsInspectionAction|The action to take when traffic matches this rule. The possible values are: `bypass`, `inspect`.|
|priority|Int64|The priority of the rule. Rules are evaluated in ascending order of priority. Lower numbers indicate higher priority.|
|settings|[microsoft.graph.networkaccess.tlsInspectionRuleSettings](../resources/networkaccess-tlsinspectionrulesettings.md)|Additional settings that configure the rule's behavior.|
|matchingConditions|[microsoft.graph.networkaccess.tlsInspectionMatchingConditions](../resources/networkaccess-tlsinspectionmatchingconditions.md)|The conditions that determine when this rule should be applied to traffic.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.tlsInspectionRule",
  "baseType": "microsoft.graph.networkaccess.policyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.tlsInspectionRule",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "action": "String",
  "priority": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.tlsInspectionRuleSettings"
  },
  "matchingConditions": {
    "@odata.type": "microsoft.graph.networkaccess.tlsInspectionMatchingConditions"
  }
}
```