---
title: "forwardingRule resource type"
description: "A forwarding rule is utilized to selectively forward traffic to the Global Secure Access services based on specific requirements or preferences."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A forwarding rule is utilized to selectively forward traffic to the Global Secure Access services based on specific requirements or preferences.

This is an abstract type from which the [m365ForwardingRule](networkaccess-m365forwardingrule.md) and [privateAccessForwardingRule](networkaccess-privateaccessforwardingrule.md) resource types are derived.

Inherits from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.forwardingRuleAction|The action to apply to traffic. The possible values are: `bypass`, `forward`, `unknownFutureValue`.|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|Destinations maintain a list of potential destinations and destination types that the user may access within the context of a network filtering policy. This includes IP addresses and fully qualified domain names (FQDNs)/URLs.|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Name. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|The network destination type used by a URL filtering policy is defined, which can include types such as IP (Internet Protocol) or FQDN (Fully Qualified Domain Name). The possible values are: `url`, `fqdn`, `ipAddress`, `ipRange`, `ipSubnet`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.forwardingRule",
  "baseType": "microsoft.graph.networkaccess.policyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.forwardingRule",
  "id": "String (identifier)",
  "name": "String",
  "ruleType": "String",
  "action": "String",
  "destinations": [
    {
      "@odata.type": "microsoft.graph.networkaccess.webCategory"
    }
  ]
}
```

