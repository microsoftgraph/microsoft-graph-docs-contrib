---
title: "akamaiVerifiedDetailsModel resource type"
description: "Represents Akamai-specific verification findings for a domain or host after a verification operation with an Akamai web application firewall (WAF) provider."
author: "more-rasika"
ms.date: 10/10/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# akamaiVerifiedDetailsModel resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details discovered when verifying a host or domain using an Akamai web application firewall (WAF) provider. 

Inherits from [webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeAttackGroups|[akamaiAttackGroupActionModel](../resources/akamaiattackgroupactionmodel.md) collection|Collection of Akamai attack groups that are currently active for the zone or host, including the action applied to each group (for example, `deny`, `none` or `alert`).|
|activeCustomRules|[akamaiCustomRuleModel](../resources/akamaicustomrulemodel.md) collection|Collection of Akamai custom rules that are currently enabled for the zone or host. Each entry includes rule metadata such as the rule identifier, friendly name, and the action taken when the rule matches traffic.|
|dnsConfiguration|[webApplicationFirewallDnsConfiguration](../resources/webapplicationfirewalldnsconfiguration.md)|DNS-related evidence discovered during verification. Includes the record name, record type and value, whether the record is proxied through Akamai, and whether the domain is verified. Inherited from [webApplicationFirewallVerifiedDetails](../resources/webapplicationfirewallverifieddetails.md).|
|rapidRules|[akamaiRapidRulesModel](../resources/akamairapidrulesmodel.md)|Configuration for Akamai Rapid Rules, including whether Rapid Rules are enabled and the default action applied to matching traffic.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.akamaiVerifiedDetailsModel"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.akamaiVerifiedDetailsModel",
  "dnsConfiguration": {
    "@odata.type": "microsoft.graph.webApplicationFirewallDnsConfiguration"
  },
  "rapidRules": {
    "@odata.type": "microsoft.graph.akamaiRapidRulesModel"
  },
  "activeAttackGroups": [
    {
      "@odata.type": "microsoft.graph.akamaiAttackGroupActionModel"
    }
  ],
  "activeCustomRules": [
    {
      "@odata.type": "microsoft.graph.akamaiCustomRuleModel"
    }
  ]
}
```

