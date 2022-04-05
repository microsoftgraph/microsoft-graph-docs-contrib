---
title: "BookingAvailabilityStatus resource type"
description: "Enum indicating the status of a staff member."
author: "kwekua"
ms.localizationpriority: medium
ms.prod: "bookings"
doc_type: resourcePageType
---

# BookingAvailabilityStatus resource type

Namespace: microsoft.graph

Enum indicating the status of a staff member.

## Properties

| Value  | Description |
|:---------------|:--------|
|0 |Available |
|1 |Busy |
|2 |slotsAvailable (applicable only for appointments which can have more than 1 customer. Indicates that some slots are free for that particular appointment). |
|3 |outOfOffice |
