---
title: "enumeratedInboundPorts resource type"
description: "Allows incoming traffic from certain ports."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# enumeratedInboundPorts resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Allows incoming traffic from certain ports.

Inherits from [inboundPorts](../resources/inboundports.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ports|String collection|Collection of ports that allow inbound traffic.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enumeratedInboundPorts"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enumeratedInboundPorts",
  "ports": [
    "String"
  ]
}
```
