---
title: "enumeratedInboundPorts resource type"
description: "Allows incoming traffic from certain ports."
author: "ashyasingh"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 07/22/2024
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
The following JSON representation shows the resource type.
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
