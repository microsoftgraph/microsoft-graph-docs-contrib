---
title: "cloudFlareRulesetModel resource type"
description: "Represents a Cloudflare ruleset used by a Cloudflare WAF integration. "
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# cloudFlareRulesetModel resource type

Namespace: microsoft.graph



Represents a Cloudflare-managed ruleset or collection of WAF rules that can be applied to traffic, as defined in the **enabledRecommendedRulesets** property of the [cloudFlareVerifiedDetailsModel object](../resources/cloudflareverifieddetailsmodel.md). This resource captures ruleset metadata such as a friendly name, the ruleset identifier, and the execution phase where the rules are evaluated (for example, HTTP request phase).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|Friendly name for the ruleset, used in UIs and logs to help administrators identify the ruleset.|
|phaseName|String|Name of the phase during which the ruleset is evaluated (for example, `http_request_firewall_managed`, `http_request_firewall_custom`, or provider-specific phase names). This indicates when in the request/response lifecycle the rules apply.|
|rulesetId|String|Unique identifier assigned to the ruleset by Cloudflare or the integration.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudFlareRulesetModel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudFlareRulesetModel",
  "rulesetId": "String",
  "name": "String",
  "phaseName": "String"
}
```

