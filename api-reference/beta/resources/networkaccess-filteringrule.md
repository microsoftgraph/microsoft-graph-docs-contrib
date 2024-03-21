---
title: "filteringRule resource type"
description: "A rule that is used to filter traffic in Global Secure Access."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
---

# filteringRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A rule that is used to filter traffic in Global Secure Access.
Inherits from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List filteringRules](../api/networkaccess-filteringrule-list.md)|[microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) collection|Get a list of the [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) objects and their properties.|
|[Get filteringRule](../api/networkaccess-filteringrule-get.md)|[microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md)|Get a [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) object.|
|[Update filteringRule](../api/networkaccess-filteringrule-update.md)|[microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md)|Update the properties of a [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) object.|
|[Delete filteringRule](../api/networkaccess-filteringrule-delete.md)|None|Delete a [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|Possible destinations and types of destinations accessed by the user in accordance with the network filtering policy, such as IP addresses and FQDNs/URLs.|
|id|String|A unique ID for the rule. Inherited from [microsoft.graph.entity](../resources/entity.md).|
|name|String|The display name of the rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|The rule types that specify the basis for filtering. The possible values are `url`, `fqdn`, `ipAddress`, `ipRange`, `ipSubnet`, and `webCategory`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.filteringRule",
  "baseType": "microsoft.graph.networkaccess.policyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.filteringRule",
  "id": "String (identifier)",
  "name": "String",
  "ruleType": "String",
  "destinations": [
    {
      "@odata.type": "microsoft.graph.networkaccess.webCategory"
    }
  ]
}
```

