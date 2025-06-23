---
title: "offlinePlaceMode resource type"
description: "Describes why a desk has been marked as offline and unavailable for booking."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: 
doc_type: resourcePageType
---

# offlinePlaceMode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes why a desk has been marked as offline and unavailable for booking.

This mode is only supported for [desks](./desk.md).

Inherits from [placeMode](../resources/placemode.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reason|String|Reason for marking a [place](../resources/place.md) offline.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.offlinePlaceMode"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.offlinePlaceMode",
  "reason": "scheduled maintenance",
}
```

