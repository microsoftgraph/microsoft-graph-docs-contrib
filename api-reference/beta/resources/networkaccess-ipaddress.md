---
title: "ipAddress resource type"
description: "IP address"
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# ipAddress resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

IP address

Inherits from [microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|Defines the IP address used in a destination for a rule.	|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.ipAddress"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.ipAddress",
  "value": "String"
}
```

