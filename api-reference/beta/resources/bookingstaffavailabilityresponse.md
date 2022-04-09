---
title: "staffAvailabilityResponse resource type"
description: "Returns the available and busy slots of staff members."
author: "kwekua"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# staffAvailabilityResponse resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns the available and busy slots of staff members.

## Properties

| Property  | Type |Description|
|:---------------|:--------|:----------|
|staffAvailabilityResponse|[staffAvailabilityItem](staffavailabilityitem.md) collection |Indicates the available and busy slots of staff members.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.staffAvailabilityResponse"
}-->

``` json
{
  "staffAvailabilityResponse": "staffAvailability"
}
```
