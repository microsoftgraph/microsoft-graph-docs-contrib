---
title: "forwardingRule resource type"
description: "**TODO: Add Description**"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# forwardingRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.


Inherits from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List forwardingRules](../api/networkaccess-forwardingrule-list.md)|[microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md) collection|Get a list of the [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md) objects and their properties.|
|[Get forwardingRule](../api/networkaccess-forwardingrule-get.md)|[microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md) object.|
|[Update forwardingRule](../api/networkaccess-forwardingrule-update.md)|[microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md)|Update the properties of a [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md) object.|
|[Delete forwardingRule](../api/networkaccess-forwardingrule-delete.md)|None|Delete a [microsoft.graph.networkaccess.forwardingRule](../resources/networkaccess-forwardingrule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.forwardingRuleAction|**TODO: Add Description**.The possible values are: `bypass`, `forward`, `unknownFutureValue`.|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|**TODO: Add Description** Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|**TODO: Add Description**.The possible values are: `url`, `fqdn`, `ipAddress`, `ipRange`, `ipSubnet`, `webCategory`, `unknownFutureValue`.|

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

