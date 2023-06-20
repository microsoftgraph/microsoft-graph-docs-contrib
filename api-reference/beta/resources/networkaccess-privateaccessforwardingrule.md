---
title: "privateAccessForwardingRule resource type"
description: "private Access Forwarding Rule"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# privateAccessForwardingRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

private Access Forwarding Rule


Inherits from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List privateAccessForwardingRules](../api/networkaccess-forwardingrule-list.md)|[microsoft.graph.networkaccess.privateAccessForwardingRule](../resources/networkaccess-privateaccessforwardingrule.md) collection|Get a list of the [microsoft.graph.networkaccess.privateAccessForwardingRule](../resources/networkaccess-privateaccessforwardingrule.md) objects and their properties.|
|[Get privateAccessForwardingRule](../api/networkaccess-forwardingrule-get.md)|[microsoft.graph.networkaccess.privateAccessForwardingRule](../resources/networkaccess-privateaccessforwardingrule.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.privateAccessForwardingRule](../resources/networkaccess-privateaccessforwardingrule.md) object.|
|[Update privateAccessForwardingRule](../api/networkaccess-forwardingrule-update.md)|[microsoft.graph.networkaccess.privateAccessForwardingRule](../resources/networkaccess-privateaccessforwardingrule.md)|Update the properties of a [microsoft.graph.networkaccess.privateAccessForwardingRule](../resources/networkaccess-privateaccessforwardingrule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.forwardingRuleAction|The action applies to traffic. The possible values are: `bypass`, `forward`.|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|collection|destinations à Maintains the list of potential destinations and destination types that the user could be accessing in the context of a forwarding policy, including IPs and FQDNs/URLs Inherited from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).|
|id|String|id Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|Name Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|Destination Type Inherited from [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md).The possible values are: `url`, `fqdn`, `ipAddress`, `ipRange`, `ipSubnet`, `webCategory`, `unknownFutureValue`.|

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

