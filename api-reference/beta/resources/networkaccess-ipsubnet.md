---
title: "ipSubnet resource type"
description: "An IP subnet is a portion of an IP network that shares a common network prefix. "
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# ipSubnet resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An IP subnet is a portion of an IP network that shares a common network prefix. It is a logical subdivision of an IP network created by grouping IP addresses together based on a shared network mask. The subnet mask determines the size of the subnet and helps identify the network and host portions of an IP address.

Inherits from [microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|Defines the IP address of the subset used in a destination for a rule.    |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.ipSubnet"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.ipSubnet",
  "value": "String"
}
```

