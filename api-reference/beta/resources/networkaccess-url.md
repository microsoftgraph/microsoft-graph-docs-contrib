---
title: "url resource type"
description: "Represents a Uniform Resource Locator (URL), which specifies the address of a web resource and includes the protocol, domain, path, and parameters."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# url resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Uniform Resource Locator (URL), which specifies the address of a web resource and includes the protocol, domain, path, and parameters.

Inherits from [microsoft.graph.networkaccess.ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|URL Address|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.url"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.url",
  "value": "String"
}
```

