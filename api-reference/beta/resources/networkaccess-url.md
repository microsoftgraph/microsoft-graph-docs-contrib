---
title: url resource type"
description: "Contains a Uniform Resource Locator (URL), including the protocol, domain, path, and parameters."
author: "Moti-ba"
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: resourcePageType
---

# url resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains a Uniform Resource Locator (URL), including the protocol, domain, path, and parameters.

Inherits from [ruleDestination](../resources/networkaccess-ruledestination.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|value|String|URL Address|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

