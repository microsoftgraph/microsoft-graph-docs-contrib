---
title: "urlDestinationFilteringRule resource type"
description: "Defines a URL filtering rule, enabling administrators to manage granular access to specific destinations on the internet."
author: "fgomulka"
ms.date: 10/15/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
toc.title: "URL filtering rule"
doc_type: resourcePageType
---

# urlDestinationFilteringRule resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a URL filtering rule, enabling administrators to manage granular access to specific destinations on the internet.

Inherits from [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md).


## Methods
None. 

For the list of API operations for managing this resource type, see [filteringRule](../resources/networkaccess-filteringrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|destinations|[microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md) collection|The list of potential destinations and destination types that the user may access, including fully qualified domain names (FQDNs), uniform resource locators (URLs), and web categories, within the context of a network filtering policy. Inherited from [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md).|
|id|String|The unique identifier for the **urlDestinationFilteringRule**. Inherited from [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md).|
|name|String|Display name. Inherited from [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md).|
|ruleType|microsoft.graph.networkaccess.networkDestinationType|The network destination type used by a filtering rule. Supports a subset of the values for **networkDestinationType**. The possible values are: `url`, `fqdn`, `webCategory`, `unknownFutureValue`. Inherited from [microsoft.graph.networkaccess.filteringRule](../resources/networkaccess-filteringrule.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.networkaccess.urlDestinationFilteringRule",
  "baseType": "microsoft.graph.networkaccess.filteringRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.urlDestinationFilteringRule",
  "destinations": [{"@odata.type": "microsoft.graph.networkaccess.ruleDestination"}],
  "id": "String (identifier)",
  "name": "String",
  "ruleType": "String"
}
```

