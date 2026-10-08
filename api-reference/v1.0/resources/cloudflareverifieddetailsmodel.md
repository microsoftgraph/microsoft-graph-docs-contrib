---
title: "cloudFlareVerifiedDetailsModel resource type"
description: "Represents Cloudflare-specific verification findings for a domain or host after a verification operation with a Cloudflare WAF provider."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# cloudFlareVerifiedDetailsModel resource type

Namespace: microsoft.graph



Represents the details discovered when verifying a host or domain using a Cloudflare web application firewall (WAF) provider.


Inherits from [webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|dnsConfiguration|[webApplicationFirewallDnsConfiguration](../resources/webapplicationfirewalldnsconfiguration.md)|DNS-related evidence discovered during verification. Inherited from [webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md).|
|enabledCustomRules|[cloudFlareRuleModel](../resources/cloudflarerulemodel.md) collection|Collection of Cloudflare custom rules that are currently enabled for the zone or host.|
|enabledRecommendedRulesets|[cloudFlareRulesetModel](../resources/cloudflarerulesetmodel.md) collection|Collection of Cloudflare recommended rulesets that are enabled for the zone or host.|
|zoneId|String|Cloudflare-assigned identifier for the DNS zone associated with the verified host (for example, the Cloudflare Zone ID). This ID is used to correlate verification details with the Cloudflare account and to perform configuration operations via the provider's API.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudFlareVerifiedDetailsModel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudFlareVerifiedDetailsModel",
  "dnsConfiguration": {
    "@odata.type": "microsoft.graph.webApplicationFirewallDnsConfiguration"
  },
  "zoneId": "String",
  "enabledRecommendedRulesets": [
    {
      "@odata.type": "microsoft.graph.cloudFlareRulesetModel"
    }
  ],
  "enabledCustomRules": [
    {
      "@odata.type": "microsoft.graph.cloudFlareRuleModel"
    }
  ]
}
```

