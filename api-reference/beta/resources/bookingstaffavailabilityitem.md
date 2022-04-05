---
title: "staffAvailabilityItem resource type"
description: "Returns available and busy slots of a staff member."
author: "kwekua"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# staffAvailabilityItem resource type

Namespace: microsoft.graph

Returns the available and busy slots of staff members.

## Properties

| Property  | Type |Description|
|:---------------|:--------|:----------|
|staffId |String |The ID of the staff member.|
|availabilityItems |[availabilityItem](bookingavailability.md) |Collection of availabilityItem. Each item indicates a slot and the status of the staff member.|

## JSON representation

The following is a JSON representation of the resource.

``` json
{
  "staffId": "String",
  "availabilityItems": "availabilityItem"
}
```
