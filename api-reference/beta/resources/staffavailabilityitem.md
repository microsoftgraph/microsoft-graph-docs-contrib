---
title: "staffAvailabilityItem resource type"
description: "Represents the available and busy time slots of a Microsoft Bookings staff member."
author: "kwekua"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# staffAvailabilityItem resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the available and busy time slots of a Microsoft Bookings [staff member](bookingstaffmember.md).

## Properties

| Property  | Type |Description|
|:---------------|:--------|:----------|
|availabilityItems |[availabilityItem](availabilityitem.md) collection |Each item in this collection indicates a slot and the status of the staff member.|
|staffId |String |The ID of the staff member.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.staffAvailabilityItem"
}-->

``` json
{
  "availabilityItems": "availabilityItem",
  "staffId": "String"
}
```
