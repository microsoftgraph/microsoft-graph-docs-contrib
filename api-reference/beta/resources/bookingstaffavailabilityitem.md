---
title: "staffAvailabilityItem resource type"
description: "Returns the available and busy slots of a staff member."
author: "kwekua"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# staffAvailabilityItem resource type

Namespace: microsoft.graph

Returns the available and busy slots of a staff member.

## Properties

| Property  | Type |Description|
|:---------------|:--------|:----------|
|availabilityItems |[availabilityItem](bookingavailability.md) collection |Each item in this collection indicates a slot and the status of the staff member.|
|staffId |String |The ID of the staff member.|

## JSON representation

The following is a JSON representation of the resource.

``` json
{
  "availabilityItems": "availabilityItem",
  "staffId": "String"
}
```
