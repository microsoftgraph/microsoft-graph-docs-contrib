---
title: "ipRange resource type"
description: "Represents a range of IP addresses or a specific IP address. It is used to define a set of network addresses or a single network endpoint within a specified range"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# ipRange resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a range of IP addresses or a specific IP address. It is used to define a set of network addresses or a single network endpoint within a specified range


Inherits from [microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|beginAddress|String|Specifies the starting IP address of the IP range|
|endAddress|String|Specifies the ending IP address of the IP range|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.ipRange"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.ipRange",
  "beginAddress": "String",
  "endAddress": "String"
}
```

