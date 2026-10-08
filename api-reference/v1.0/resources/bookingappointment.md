---
title: "bookingAppointment resource type"
description: "Represents a customer appointment for a bookingService, performed by a set of staff members, provided by a Microsoft Bookings business."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/30/2024
---

# bookingAppointment resource type

Namespace: microsoft.graph

Represents a customer appointment for a [bookingService](bookingservice.md), performed by a set of staff members, provided by a Microsoft Bookings business.


## Methods

| Method   | Return Type |Description|
|:---------------|:--------|:----------|
|[List](../api/bookingbusiness-list-appointments.md) |  [bookingAppointment](bookingappointment.md) collection | Get a list of **bookingAppointment** objects in the specified [bookingBusiness](../resources/bookingbusiness.md). |
|[Create](../api/bookingbusiness-post-appointments.md) |  [bookingAppointment](bookingappointment.md) | Create a new **bookingAppointment** for the specified [bookingBusiness](../resources/bookingbusiness.md). |
|[Get](../api/bookingappointment-get.md) | [bookingAppointment](bookingappointment.md) |Read the properties and relationships of **bookingAppointment** object.|
|[Update](../api/bookingappointment-update.md) | [bookingAppointment](bookingappointment.md)	|Update a **bookingAppointment** object. |
|[Delete](../api/bookingappointment-delete.md) | None |Delete a **bookingAppointment** object. |
|[Cancel appointment](../api/bookingappointment-cancel.md)|None| Cancel a **bookingAppointment** object.|

## Properties

| Property     | Type |Description|
|:---------------|:--------|:----------|
|additionalInformation|String|Additional information that is sent to the customer when an appointment is confirmed.|
|anonymousJoinWebUrl|String|The URL of the meeting to join anonymously.|
|appointmentLabel|String|The custom label that can be stamped on this appointment by users.|
|createdDateTime|DateTimeOffset|The date, time, and time zone when the appointment was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.	|
|customerEmailAddress|String|The SMTP address of the [bookingCustomer](bookingcustomer.md) who books the appointment.|
|customerName|String|The customer's name.|
|customerNotes|String|Notes from the customer associated with this appointment. You can get the value only when you read this **bookingAppointment** by its ID. You can set this property only when you initially create an appointment with a new customer.|
|customerPhone|String|The customer's phone number.|
|customers|[bookingCustomerInformation](../resources/bookingcustomerinformation.md) collection|A collection of customer properties for an appointment. An appointment contains a list of customer information and each unit will indicate the properties of a customer who is part of that appointment. Optional.|
|customerTimeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](datetimetimezone.md).|
|duration|Duration|The length of the appointment, denoted in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|end|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone when the appointment ends.|
|filledAttendeesCount|Int32|The current number of customers in the appointment.|
|id|String| The ID of the **bookingAppointment**. Read-only.|
|isCustomerAllowedToManageBooking|Boolean|Indicates that the customer can manage bookings created by the staff. The default value is `false`.|
|isLocationOnline|Boolean|Indicates that the appointment is held online. The default value is `false`.|
|joinWebUrl|String|The URL of the online meeting for the appointment.|
|lastUpdatedDateTime|DateTimeOffset|The date, time, and time zone when the booking business was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|maximumAttendeesCount|Int32|The maximum number of customers allowed in an appointment. If **maximumAttendeesCount** of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the [Create bookingCustomer](../api/bookingbusiness-post-customers.md) operation.|
|optOutOfCustomerEmail|Boolean|If `true` indicates that the [bookingCustomer](bookingcustomer.md) for this appointment doesn't wish to receive a confirmation for this appointment.|
|postBuffer|Duration|The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|preBuffer|Duration|The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|price|Double|The regular price for an appointment for the specified [bookingService](bookingservice.md).|
|priceType|bookingPriceType| A setting to provide flexibility for the pricing structure of services. The possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`, `unknownFutureValue`.|
|reminders|[bookingReminder](bookingreminder.md) collection|The collection of customer reminders sent for this appointment. The value of this property is available only when reading this **bookingAppointment** by its ID.|
|selfServiceAppointmentId|String|Another tracking ID for the appointment, if the appointment was created directly by the customer on the scheduling page, as opposed to by a staff member on behalf of the customer.|
|serviceId|String|The ID of the [bookingService](bookingservice.md) associated with this appointment.|
|serviceLocation|[location](location.md)|The location where the service is delivered.|
|serviceName|String|The name of the **bookingService** associated with this appointment.<br>This property is optional when creating a new appointment. If not specified, it's computed from the service associated with the appointment by the **serviceId** property.|
|serviceNotes|String|Notes from a [bookingStaffMember](bookingstaffmember.md). The value of this property is available only when reading this **bookingAppointment** by its ID.|
|smsNotificationsEnabled|Boolean|If `true`, indicates SMS notifications will be sent to the customers for the appointment. Default value is `false`.|
|staffMemberIds|String collection|The ID of each [bookingStaffMember](bookingstaffmember.md) who is scheduled in this appointment.|
|start|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone when the appointment begins.|

## Relationships

None.


## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingAppointment"
}-->

``` json
{
  "@odata.type": "#microsoft.graph.bookingAppointment",
  "additionalInformation": "String",
  "anonymousJoinWebUrl": "String",
  "appointmentLabel": "String",
  "createdDateTime": "String (timestamp)",
  "customerEmailAddress": "String",
  "customerName": "String",
  "customerNotes": "String",
  "customerPhone": "String",
  "customers": [{"@odata.type": "microsoft.graph.bookingCustomerInformation"}],
  "customerTimeZone": "String",
  "duration": "String (duration)",
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "filledAttendeesCount": "Int32",
  "id": "String (identifier)",
  "isCustomerAllowedToManageBooking": "Boolean",
  "isLocationOnline": "Boolean",
  "joinWebUrl": "String",
  "lastUpdatedDateTime": "String (timestamp)",
  "maximumAttendeesCount": "Int32",
  "optOutOfCustomerEmail": "Boolean",
  "postBuffer": "String (duration)",
  "preBuffer": "String (duration)",
  "price": "Double",
  "priceType": "String",
  "reminders": [{"@odata.type": "microsoft.graph.bookingReminder"}],
  "selfServiceAppointmentId": "String",
  "serviceId": "String",
  "serviceLocation": {"@odata.type": "microsoft.graph.location"},
  "serviceName": "String",
  "serviceNotes": "String",
  "smsNotificationsEnabled": "Boolean",
  "staffMemberIds": ["String"],
  "start": {"@odata.type": "microsoft.graph.dateTimeTimeZone"}
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "bookingAppointment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
