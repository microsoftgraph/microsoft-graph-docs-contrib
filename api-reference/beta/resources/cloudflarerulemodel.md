---
title: "cloudFlareRuleModel resource type"
description: "Represents a Cloudflare-managed rule used by a Cloudflare WAF integration."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# cloudFlareRuleModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Cloudflare WAF rule configuration or mapping that is known to the integration, as defined in the **enabledCustomRules** property of the [cloudFlareVerifiedDetailsModel object](../resources/cloudflareverifieddetailsmodel.md). This resource captures metadata about the rule and the action Cloudflare takes when the rule matches traffic.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|String|The action Cloudflare applies when the rule matches traffic. Common values include `Managed Challenge`, `Interactive Challenge`, `Log`, `Block`, `JS Challenge`, or `Skip`.|
|name|String|Friendly name for the rule, used in UIs or logs to help administrators identify the rule.|
|ruleId|String|Unique identifier assigned to the rule by Cloudflare or the integration.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudFlareRuleModel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudFlareRuleModel",
  "ruleId": "String",
  "name": "String",
  "action": "String"
}
```

