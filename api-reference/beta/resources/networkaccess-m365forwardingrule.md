---
title: "m365ForwardingRule resource type"
description: "**TODO: Add Description**"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# m365ForwardingRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List m365ForwardingRule](../api/networkaccess-m365forwardingrule-list.md)|[microsoft.graph.networkaccess.m365ForwardingRule](../resources/networkaccess-m365forwardingrule.md) collection|Get a list of the [microsoft.graph.networkaccess.m365ForwardingRule](../resources/networkaccess-m365forwardingrule.md) objects and their properties.|
|[Get m365ForwardingRule](../api/networkaccess-m365forwardingrule-get.md)|[microsoft.graph.networkaccess.m365ForwardingRule](../resources/networkaccess-m365forwardingrule.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.m365ForwardingRule](../resources/networkaccess-m365forwardingrule.md) object.|
|[Update m365ForwardingRule](../api/networkaccess-m365forwardingrule-update.md)|[microsoft.graph.networkaccess.m365ForwardingRule](../resources/networkaccess-m365forwardingrule.md)|Update the properties of a [microsoft.graph.networkaccess.m365ForwardingRule](../resources/networkaccess-m365forwardingrule.md) object.|
|[Delete m365ForwardingRule](../api/networkaccess-m365forwardingrule-delete.md)|None|Delete a [microsoft.graph.networkaccess.m365ForwardingRule](../resources/networkaccess-m365forwardingrule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.forwardingRuleAction|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).The possible values are: `bypass`, `forward`, `unknownFutureValue`.|
|category|microsoft.graph.networkaccess.forwardingCategory|**TODO: Add Description**.The possible values are: `default`, `optimized`, `allow`, `unknownFutureValue`.|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|ports|String collection|**TODO: Add Description**|
|protocol|microsoft.graph.networkaccess.networkingProtocol|**TODO: Add Description**.The possible values are: `ip`, `icmp`, `igmp`, `ggp`, `ipv4`, `tcp`, `pup`, `udp`, `idp`, `ipv6`, `ipv6RoutingHeader`, `ipv6FragmentHeader`, `ipSecEncapsulatingSecurityPayload`, `ipSecAuthenticationHeader`, `icmpV6`, `ipv6NoNextHeader`, `ipv6DestinationOptions`, `nd`, `raw`, `ipx`, `spx`, `spxII`, `unknownFutureValue`.|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).The possible values are: `url`, `fqdn`, `ipAddress`, `ipRange`, `ipSubnet`, `webCategory`, `unknownFutureValue`.|

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

