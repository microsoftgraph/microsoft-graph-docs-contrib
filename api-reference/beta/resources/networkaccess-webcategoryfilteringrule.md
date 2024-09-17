---
title: "webCategoryFilteringRule resource type"
description: "Defines a network filtering rule for web categories, enabling administrators to manage access to specific categories of websites."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# webCategoryFilteringRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a network filtering rule for web categories, enabling administrators to manage access to specific categories of websites.

Inherits from [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/networkaccess-filteringrule-post.md)|[microsoft.graph.networkaccess.webCategoryFilteringRule](../resources/networkaccess-webcategoryfilteringrule.md) collection|Create a [microsoft.graph.networkaccess.webCategoryFilteringRule](../resources/networkaccess-webcategoryfilteringrule.md) objects and their properties.|
|[List](../api/networkaccess-filteringrule-list.md)|[microsoft.graph.networkaccess.webCategoryFilteringRule](../resources/networkaccess-webcategoryfilteringrule.md) collection|Get a list of the [microsoft.graph.networkaccess.webCategoryFilteringRule](../resources/networkaccess-webcategoryfilteringrule.md) objects and their properties.|
|[Get](../api/networkaccess-filteringrule-get.md)|[microsoft.graph.networkaccess.webCategoryFilteringRule](../resources/networkaccess-webcategoryfilteringrule.md)|Read the properties and relationships of a [microsoft.graph.networkaccess.webCategoryFilteringRule](../resources/networkaccess-webcategoryfilteringrule.md) object.|
|[Update](../api/networkaccess-filteringrule-update.md)|[microsoft.graph.networkaccess.webCategoryFilteringRule](../resources/networkaccess-webcategoryfilteringrule.md)|Update the properties of a [microsoft.graph.networkaccess.webCategoryFilteringRule](../resources/networkaccess-webcategoryfilteringrule.md) object.|
|[Delete](../api/networkaccess-filteringrule-delete.md)|None|Delete a [microsoft.graph.networkaccess.webCategoryFilteringRule](../resources/networkaccess-webcategoryfilteringrule.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|Destinations maintain a list of potential destinations and destination types that the user may access within the context of a network filtering policy. This includes FQDNs and web categories. Inherited from [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md).|
|id|String|Identifier. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|name|String|Display Name. Inherited from [microsoft.graph.networkaccess.policyRule](../resources/networkaccess-policyrule.md).|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|The network destination type used by a filtering rule. Inherited from [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md).The possible values are: `fqdn`, `webCategory`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.webCategoryFilteringRule",
  "baseType": "microsoft.graph.networkaccess.filteringRule",
  "openType": false
}
-->
``` json
{
"@odata.type": "#microsoft.graph.networkaccess.webCategoryFilteringRule",
	"name": "Block Gambling Sites",
	"ruleType": "webCategory",
	"destinations": [
		{
			"@odata.type": "#microsoft.graph.networkaccess.webCategory",
			"name": "Gambling"
		}
	]
}
```

