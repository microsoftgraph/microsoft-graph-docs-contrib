---
title: "threatIntelligenceRule resource type"
description: "Represents a rule that defines how to evaluate and respond to specific threat intelligence matches in network traffic."
author: "fgomulka"
ms.date: 06/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# threatIntelligenceRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a rule that defines how to evaluate and respond to specific threat intelligence matches in network traffic through Global Secure Access. These rules determine what action to take when traffic matches specified threat intelligence criteria.


Inherits from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-threatintelligencepolicy-list-policyrules.md)|[microsoft.graph.networkaccess.threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md) collection|Get a list of the threatIntelligencePolicyRule objects and their properties.|
|[Create](../api/networkaccess-threatintelligencepolicy-post-policyrules.md)|[microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md)|Create a new threatIntelligencePolicyRule object.|
|[Get](../api/networkaccess-threatintelligencerule-get.md)|[microsoft.graph.networkaccess.threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md)|Read the properties and relationships of a threatIntelligenceRule object.|
|[Update](../api/networkaccess-threatintelligencerule-update.md)|[microsoft.graph.networkaccess.threatIntelligenceRule](../resources/networkaccess-threatintelligencerule.md)|Update the properties of a threatIntelligenceRule object.|
|[Delete](../api/networkaccess-threatintelligencerule-delete.md)|None|Delete a threatIntelligenceRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.threatIntelligenceAction|The action to take when network traffic matches this rule's conditions. The possible values are: `allow`, `block`, `unknownFutureValue`. Supports `$filter` (`eq`).|
|description|String|A description of the threat intelligence rule. Supports `$filter` (`eq`).|
|id|String|The unique identifier for the threat intelligence rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md). Inherits from [entity](../resources/entity.md). Supports `$filter` (`eq`).|
|matchingConditions|[microsoft.graph.networkaccess.threatIntelligenceMatchingConditions](../resources/networkaccess-threatintelligencematchingconditions.md)|Conditions that define what network traffic should be evaluated by this rule.|
|name|String|The display name of the threat intelligence rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md). Supports `$filter` (`eq`).|
|priority|Int64|The priority of the rule which determines the order of rule evaluation. Lower values indicate higher priority. Supports `$filter` (`eq`).|
|settings|[microsoft.graph.networkaccess.threatIntelligenceRuleSettings](../resources/networkaccess-threatintelligencerulesettings.md)|Settings that define how the threat intelligence rule operates and is enforced.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceRule",
  "baseType": "microsoft.graph.networkaccess.policyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.threatIntelligenceRule",
  "id": "String (identifier)",
  "name": "String",
  "description": "String",
  "action": "String",
  "priority": "Integer",
  "settings": {
    "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceRuleSettings"
  },
  "matchingConditions": {
    "@odata.type": "microsoft.graph.networkaccess.threatIntelligenceMatchingConditions"
  }
}
```

