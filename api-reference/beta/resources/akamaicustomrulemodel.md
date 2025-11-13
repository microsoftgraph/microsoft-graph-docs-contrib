---
title: "akamaiCustomRuleModel resource type"
description: "Represents a custom rule configured in an Akamai web application firewall (WAF) integration."
author: "more-rasika"
ms.date: 10/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# akamaiCustomRuleModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a custom rule defined in an Akamai web application firewall (WAF) integration, as defined in the **activeCustomRules** property of the [akamaiVerifiedDetailsModel object](../resources/akamaiverifieddetailsmodel.md). This resource captures metadata about the rule and the action Akamai takes when the rule matches traffic.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|The action Akamai applies when the rule matches traffic. Common values include `deny`, `none` or `alert`.|
|name|String|Friendly name for the rule, used in UIs or logs to help administrators identify the rule (for example, `"Block suspicious user agents"`).|
|ruleId|String|Unique identifier assigned to the rule by Akamai or the integration. Use this identifier to reference, update, or remove the rule in API requests.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.akamaiCustomRuleModel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.akamaiCustomRuleModel",
  "ruleId": "String",
  "name": "String",
  "action": "String"
}
```

