---
title: "unavailablePlaceMode resource type"
description: "Describes why a desk or a workspace was marked as unavailable for booking."
author: tiwarisakshi02
ms.date: 06/11/2025
ms.localizationpriority: medium
ms.subservice: outlook
doc_type: resourcePageType
---

# unavailablePlaceMode resource type

Namespace: microsoft.graph

Describes why a desk or a workspace was marked as unavailable for booking.

This mode is supported for [desk](./desk.md) and [workspace](./workspace.md) objects.

Inherits from [placeMode](./placemode.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|reason|String|Reason for marking a [place](./place.md) unavailable.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.unavailablePlaceMode"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.unavailablePlaceMode",
  "reason": "String"
}
```
