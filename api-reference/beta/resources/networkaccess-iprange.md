---
title: ipRange resource type
description: "An IP address range represents either a specific IP address or a range of IP addresses. It is used to define a set of network addresses or a single network endpoint within a specified range."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
ms.date: 07/22/2024
---

# ipRange resource type

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
The following JSON representation shows the resource type.
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

