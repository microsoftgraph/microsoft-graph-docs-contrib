---
title: "bookingSchedulingPolicy resource type"
description: "Represents the set of policies that determine how appointments should be created in a Microsoft Bookings calendar."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 08/13/2024
---

# bookingSchedulingPolicy resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Represents the set of policies that determine how appointments should be created in a Microsoft Bookings calendar.

> [!NOTE]
>
> If the Default Scheduling Policy is enabled at the service level, the values of this resource are limited to those defined in the policy in the [List services](/graph/api/bookingbusiness-list-services) API response. In this case, the client must fall back to the Default Scheduling Policy for the business.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowStaffSelection|Boolean|True if to allow customers to choose a specific person for the booking.|
|customAvailabilities|[bookingsAvailabilityWindow](../resources/bookingsavailabilitywindow.md) collection|Custom availability of the service in a given time frame of the service.|
|generalAvailability|[bookingsAvailability](../resources/bookingsavailability.md)|General availability of the service defined by the scheduling policy.|
|isMeetingInviteToCustomersEnabled|Boolean|Indicates if the meeting invite is sent to the customers. The default value is `false` |
|maximumAdvance|Duration|Maximum number of days in advance that a booking can be made. It follows the [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|minimumLeadTime|Duration|The minimum amount of time before which bookings and cancellations must be made. It follows the [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|sendConfirmationsToOwner|Boolean| True to notify the business via email when a booking is created or changed. Use the email address specified in the **email** property of the **bookingBusiness** entity for the business. |
|timeSlotInterval|Duration|Duration of each time slot, denoted in [ISO 8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingSchedulingPolicy"
}-->

```json
{
  "allowStaffSelection": true,
  "maximumAdvance": "String (timestamp)",
  "minimumLeadTime": "String (timestamp)",
  "sendConfirmationsToOwner": true,
  "timeSlotInterval": "String (timestamp)",
  "isMeetingInviteToCustomersEnabled": "Boolean",
  "generalAvailability": {
    "@odata.type": "microsoft.graph.bookingsAvailability"
  },
  "customAvailabilities": [
    {
      "@odata.type": "microsoft.graph.bookingsAvailabilityWindow"
    }
  ]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingSchedulingPolicy resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


