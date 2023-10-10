---
title: "ipAddress resource type"
description: "An IP address is a unique numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# ipAddress resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An IP address (Internet Protocol address) is a unique numerical label assigned to each device connected to a computer network that uses the Internet Protocol for communication. It serves as an identifier for the device within the network and allows it to send and receive data over the internet. An IP address consists of a series of numbers, separated by periods, such as "192.168.0.1".

Inherits from [microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|Defines the IP address used in a destination for a rule.|

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

