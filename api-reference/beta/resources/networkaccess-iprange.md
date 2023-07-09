---
title: "Global Secure Access ipRange resource type"
description: "An IP address range represents either a specific IP address or a range of IP addresses. It is used to define a set of network addresses or a single network endpoint within a specified range."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# Global Secure Access ipRange resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An IP address range represents either a specific IP address or a range of IP addresses. It is used to define a set of network addresses or a single network endpoint within a specified range.

Inherits from [microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|beginAddress|String|Specifies the starting IP address of the IP range.|
|endAddress|String|Specifies the ending IP address of the IP range.|

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

