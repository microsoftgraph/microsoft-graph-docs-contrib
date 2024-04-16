---
title: "availabilityItem resource type"
description: "Indicates the status of a staff member for a given time slot."
author: "kwekua"
ms.localizationpriority: medium
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
---

# availabilityItem resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Indicates the status of a [staff member](bookingstaffmember.md) for a given time slot.

## Properties

| Property  | Type |Description|
|:---------------|:--------|:----------|
|endDateTime |dateTimeTimeZone |The end time of the time slot.|
|serviceId |String |Indicates the service ID for 1:n appointments. If the appointment is of type 1:n, this field is present, otherwise, `null`.|
|status |bookingsAvailabilityStatus |The status of the staff member. Possible values are: `available`, `busy`, `slotsAvailable`, `outOfOffice`, `unknownFutureValue`.|
|startDateTime |dateTimeTimeZone |The start time of the time slot.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.availabilityItem"
}-->

``` json
{
  "endDateTime": "DateTimeInfo",
  "serviceId": "String",
  "status": "String",
  "startDateTime": "DateTimeInfo"
}
```
