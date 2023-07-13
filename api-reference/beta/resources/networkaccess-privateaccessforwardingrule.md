---
title: "privateAccessForwardingRule resource type"
description: "A private access forwarding rule is a rule within a network configuration that enables the forwarding or routing of network traffic for private access."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# privateAccessForwardingRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A private access forwarding rule is a rule within a network configuration that enables the forwarding or routing of network traffic for private access.

Inherits from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.forwardingRuleAction|The action applies to traffic. The possible values are: `bypass`, `forward`.|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|maintains the list of potential destinations and destination types that the user could be accessing in the context of a forwarding policy, including IPs and FQDNs/URLs Inherited from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).|
|id|String|Identifier. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Name. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|Destination Type. Inherited from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).The possible values are: `url`, `fqdn`, `ipAddress`, `ipRange`, `ipSubnet`|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.privateAccessForwardingRule",
  "baseType": "microsoft.graph.networkaccess.forwardingRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.privateAccessForwardingRule",
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

