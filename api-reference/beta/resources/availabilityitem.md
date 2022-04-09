---
title: "availabilityItem resource type"
description: "Indicates the status of the staff member for a given time slot."
author: "kwekua"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# availabilityItem resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the status of the staff member for a given time slot.

## Properties

| Property  | Type |Description|
|:---------------|:--------|:----------|
|endDateTime |dateTimeTimeZone |The end time of the time slot.|
|serviceId |String |Indicates the service ID in case of 1:n appointments. If the appointment is of type 1:n, this field will be present, otherwise, `null`.|
|status |[bookingAvailabilityStatus](bookingavailabilitystatus.md) |The status of the staff member.|
|startDateTime |dateTimeTimeZone |The start time of the time slot.|

## JSON representation

The following is a JSON representation of the resource.

``` json
{
  "endDateTime": "DateTimeInfo",
  "serviceId": "String",
  "status": "bookingAvailabilityStatus",
  "startDateTime": "DateTimeInfo"
}
```
