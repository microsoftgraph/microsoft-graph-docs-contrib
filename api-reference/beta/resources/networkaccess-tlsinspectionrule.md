---
title: "tlsInspectionRule resource type"
description: "Defines a specific rule within a Global Secure Access TLS inspection policy that determines whether certain network traffic should be inspected or bypassed based on matching conditions."
author: "sisharm"
ms.date: 05/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
toc.title: Policy rule
---

# tlsInspectionRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a specific rule within a Global Secure Access [TLS inspection policy](../resources/networkaccess-tlsinspectionpolicy.md) that determines whether certain network traffic should be inspected or bypassed based on matching conditions. 

Rules are evaluated in order of priority, with the first matching rule's action being applied. If no rules match, the [policy's default action](../resources/networkaccess-tlsinspectionpolicysettings.md) is used.

Inherits from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-tlsinspectionpolicy-list-policyrules.md)|[microsoft.graph.networkaccess.tlsInspectionRule](networkaccess-tlsinspectionrule.md) collection|Get a list of the tlsInspectionRule objects and their properties.|
|[Create](../api/networkaccess-tlsinspectionpolicy-post-policyrules.md)|[microsoft.graph.networkaccess.tlsInspectionRule](networkaccess-tlsinspectionrule.md)|Create a new tlsInspectionRule object and add it to a policy.|
|[Get](../api/networkaccess-tlsinspectionrule-get.md)|[microsoft.graph.networkaccess.tlsInspectionRule](networkaccess-tlsinspectionrule.md)|Get a single tlsInspectionRule object.|
|[Update](../api/networkaccess-tlsinspectionrule-update.md)|None|Update the properties of a tlsInspectionRule object.|
|[Delete](../api/networkaccess-tlsinspectionrule-delete.md)|None|Delete a tlsInspectionRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.tlsInspectionAction|The action to take when traffic matches this rule. The possible values are: `bypass`, `inspect`, `unknownFutureAction`.|
|description|String|Optional description explaining the purpose of the rule.|
|id|String|The unique identifier for the rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md). Inherits from [entity](../resources/entity.md).|
|matchingConditions|[microsoft.graph.networkaccess.tlsInspectionMatchingConditions](../resources/networkaccess-tlsinspectionmatchingconditions.md)|The conditions that determine when this rule should be applied to traffic.|
|name|String|The display name of the rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md). Supports `$filter` (`eq`, `ne`, `startsWith`).|
|priority|Int64|The priority of the rule. Rules are evaluated in ascending order of priority. Lower numbers indicate higher priority. Supports `$filter` (`eq`, `ne`, `not`, `ge`, `le`, `in`) and `$orderby`.|
|settings|[microsoft.graph.networkaccess.tlsInspectionRuleSettings](../resources/networkaccess-tlsinspectionrulesettings.md)|Additional settings that configure the rule's behavior.|

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
