---
title: "m365ForwardingRule resource type"
description: "Defines the rule or criteria used to direct and route specific Microsoft 365 traffic through the Global Secure Access services."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# m365ForwardingRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the rule or criteria used to direct and route specific Microsoft 365 traffic through the Global Secure Access services.

Inherits from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.forwardingRuleAction|The action applies to traffic. The possible values are: `bypass`, `forward`.|
|category|microsoft.graph.networkaccess.forwardingCategory|Defines the category of Office 365 traffic used by a forwarding rule for M365 traffic (e.g., optimized traffic)    .The possible values are: `default`, `optimized`, `allow`.|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|destinations à Maintains the list of potential destinations and destination types that the user could be accessing in the context of a forwarding policy, including IPs and FQDNs/URLs     Inherited from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Name. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|ports|String collection|The port(s) used by a forwarding rule for M365 traffic are specified to determine the specific network port(s) through which the Microsoft 365 traffic is directed and forwarded.|
|protocol|microsoft.graph.networkaccess.networkingProtocol|Defines the networking protocol type used by a forwarding rule for M365 traffic    .The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|Destination Type. Inherited from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).The possible values are: `url`, `fqdn`, `ipAddress`, `ipRange`, `ipSubnet`, `webCategory`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.m365ForwardingRule",
  "baseType": "microsoft.graph.networkaccess.forwardingRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.m365ForwardingRule",
  "id": "String (identifier)",
  "name": "String",
  "ruleType": "String",
  "action": "String",
  "destinations": [
    {
      "@odata.type": "microsoft.graph.networkaccess.webCategory"
    }
  ],
  "protocol": "String",
  "ports": [
    "String"
  ],
  "category": "String"
}
```

