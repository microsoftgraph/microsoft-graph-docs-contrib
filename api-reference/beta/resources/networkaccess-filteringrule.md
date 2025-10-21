---
title: "filteringRule resource type"
description: "An abstract type that represents a rule that filters traffic in Global Secure Access."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-id
doc_type: resourcePageType
ms.date: 09/23/2024
---

# filteringRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents a rule that filters traffic in Global Secure Access.

Base type of [fqdnFilteringRule](networkaccess-fqdnfilteringrule.md), [urlDestinationFilteringRule](networkaccess-urldestinationfilteringrule.md), and [webCategoryFilteringRule](networkaccess-webcategoryfilteringrule.md).

Inherits from [policyRule](../resources/networkaccess-policyrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/networkaccess-filteringrule-list.md)|[microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md) collection|Get a list of the object types that are derived from **filteringRule**.|
|[Create](../api/networkaccess-filteringrule-post.md)|[microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md)|Create a new object type that is derived from **filteringRule**.|
|[Get](../api/networkaccess-filteringrule-get.md)|[microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md)|Get the properties and relationships of an object type that is derived from **filteringRule**.|
|[Update](../api/networkaccess-filteringrule-update.md)|[microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md)|Update the properties of an object type that is derived from **filteringRule**.|
|[Delete](../api/networkaccess-filteringrule-delete.md)|None|Delete an object type that is derived from **filteringRule**.|
|[Get web category by URL](../api/networkaccess-connectivity-getwebcategorybyurl.md)|[microsoft.graph.networkaccess.webCategory](../resources/networkaccess-webcategory.md)|Check the web category of a given Uniform Resource Locator (URL).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|Possible destinations and types of destinations accessed by the user in accordance with the network filtering policy, such as IP addresses and FQDNs/URLs.|
|id|String|A unique ID for the rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|name|String|The display name of the rule. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|The rule types that specify the basis for filtering. The possible values are: `url`, `fqdn`, `ipAddress`, `ipRange`, `ipSubnet`, and `webCategory`.|

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
  "destinations": [{"@odata.type": "microsoft.graph.networkaccess.webCategory"}],
  "id": "String (identifier)",
  "name": "String",
  "ruleType": "String"
}
```

