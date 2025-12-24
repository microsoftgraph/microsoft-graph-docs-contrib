---
title: "staffAvailabilityItem resource type"
description: "Represents the available and busy time slots of a Bookings staff member."
author: "kwekua"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 08/08/2024
---

# staffAvailabilityItem resource type

Namespace: microsoft.graph

Represents the available and busy time slots of a Microsoft Bookings [staff member](bookingstaffmember.md).

## Properties

| Property  | Type |Description|
|:---------------|:--------|:----------|
|availabilityItems |[availabilityItem](availabilityitem.md) collection |Each item in this collection indicates a slot and the status of the staff member.|
|staffId |String |The ID of the staff member.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.staffAvailabilityItem"
}-->

``` json
{
  "availabilityItems": [{"@odata.type": "microsoft.graph.availabilityItem"}],
  "staffId": "String"
}
```
