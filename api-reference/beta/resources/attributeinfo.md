---
title: "attributeInfo resource type"
description: "Represents an attribute name-value pair used to identify or match an identity during correlation."
author: "tolian"
ms.date: 05/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# attributeInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attribute name-value pair used as an anchor or matching property during [identity correlation](../resources/identityinfo.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|name|String|The name of the attribute.|
|value|String|The value of the attribute.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attributeInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeInfo",
  "name": "String",
  "value": "String"
}
```
