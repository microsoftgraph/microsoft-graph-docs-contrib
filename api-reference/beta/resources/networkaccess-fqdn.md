---
title: "fqdn resource type"
description: "A fully qualified domain name (FQDN) refers to the complete address of an internet host or computer. It includes the hostname and the domain name, providing a specific and unique identification for the device on the internet."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# fqdn resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A fully qualified domain name (FQDN) refers to the complete address of an internet host or computer. It includes the hostname and the domain name, providing a specific and unique identification for the device on the internet.

Inherits from [microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|Defines the FQDN used in a destination for a rule.	|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.fqdn"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.fqdn",
  "value": "String"
}
```

