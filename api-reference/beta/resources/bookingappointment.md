---
title: "bookingAppointment resource type"
description: "Represents a customer appointment for a bookingService, performed by a set of staff members, provided by a Microsoft Bookings business."
ms.localizationpriority: medium
author: "arvindmicrosoft"
ms.subservice: "microsoft-bookings"
doc_type: resourcePageType
ms.date: 07/08/2024
---

# bookingAppointment resource type

Namespace: microsoft.graph

 [!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
 
Represents a customer appointment for a [bookingService](bookingservice.md), performed by a set of staff members, provided by a Microsoft Bookings business.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[List](../api/bookingbusiness-list-appointments.md) |  [bookingAppointment](bookingappointment.md) collection | Get a list of **bookingAppointment** objects in the specified [bookingbusiness](../resources/bookingbusiness.md). |
|[Create](../api/bookingbusiness-post-appointments.md) |  [bookingAppointment](bookingappointment.md) | Create a new **bookingAppointment** for the specified [bookingbusiness](../resources/bookingbusiness.md). |
|[Get](../api/bookingappointment-get.md) | [bookingAppointment](bookingappointment.md) |Read the properties and relationships of **bookingAppointment** object.|
|[Update](../api/bookingappointment-update.md) | [bookingAppointment](bookingappointment.md)	|Update a **bookingAppointment** object. |
|[Delete](../api/bookingappointment-delete.md) | None |Delete a **bookingAppointment** object. |
|[Cancel appointment](../api/bookingappointment-cancel.md)|None| Cancel a **bookingAppointment** object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|additionalInformation|String|Additional information that is sent to the customer when an appointment is confirmed.|
|anonymousJoinWebUrl|String|The URL of the meeting to join anonymously.|
|appointmentLabel|String|The user can stamp a custom label on the appointment.|
|createdDateTime|DateTimeOffset|The date, time, and timezone when the appointment was created.	|
|customerEmailAddress|String|The SMTP address of the [bookingCustomer](bookingcustomer.md) who is booking the appointment.|
|customerId|String|The ID of the [bookingCustomer](bookingcustomer.md) for this appointment. If no ID is specified when an appointment is created, then a new **bookingCustomer** object is created. Once set, you should consider the **customerId** immutable.|
|customerLocation|[location](location.md)|Represents location information for the [bookingCustomer](bookingcustomer.md) who is booking the appointment.|
|customerName|String|The customer's name.|
|customerNotes|String|Notes from the customer associated with this appointment. You can get the value only when you read this **bookingAppointment** by its ID. You can set this property only when you initially create an appointment with a new customer.|
|customerPhone|String|The customer's phone number.|
|customers|[bookingCustomerInformation](../resources/bookingcustomerinformation.md) collection|A collection of the customer properties for an appointment. An appointment will contain a list of customer information and each unit will indicate the properties of a customer who is part of that appointment. Optional.|
|customerTimeZone|String|The time zone of the customer. For a list of possible values, see [dateTimeTimeZone](datetimetimezone.md).|
|duration|Duration|The length of the appointment, denoted in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|end|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the appointment ends.|
|filledAttendeesCount|Int32|The current number of customers in the appointment.|
|id|String| The ID of the **bookingAppointment**. Read-only.|
|invoiceAmount|Double|The billed amount on the invoice.|
|invoiceDate|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone of the invoice for this appointment.|
|invoiceId|String|The ID of the invoice.|
|invoiceStatus|string| The status of the invoice. Possible values are: `draft`, `reviewing`, `open`, `canceled`, `paid`, `corrective`.|
|invoiceUrl|String|The URL of the invoice in Microsoft Bookings.|
|isCustomerAllowedToManageBooking|Boolean|Indicates that the customer can manage bookings created by the staff. The default value is `false`.|
|isLocationOnline|Boolean|Indicates that the appointment is held online. The default value is `false`.|
|joinWebUrl|String|The URL of the online meeting for the appointment.|
|lastUpdatedDateTime|DateTimeOffset|The date, time and timezone when the booking business was last updated.|
|maximumAttendeesCount|Int32|The maximum number of customers allowed in an appointment. If **maximumAttendeesCount** of the service is greater than 1, pass valid customer IDs while creating or updating an appointment. To create a customer, use the [Create bookingCustomer](../api/bookingbusiness-post-customers.md) operation.|
|optOutOfCustomerEmail|Boolean|True indicates that the [bookingCustomer](bookingcustomer.md) for this appointment does not wish to receive a confirmation for this appointment.|
|postBuffer|Duration|The amount of time to reserve after the appointment ends, for cleaning up, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format. |
|preBuffer|Duration|The amount of time to reserve before the appointment begins, for preparation, as an example. The value is expressed in [ISO8601](https://www.iso.org/iso-8601-date-and-time-format.html) format.|
|price|Double|The regular price for an appointment for the specified [bookingService](bookingservice.md).|
|priceType|bookingPriceType| A setting to provide flexibility for the pricing structure of services. Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`, `unknownFutureValue`.|
|reminders|[bookingReminder](bookingreminder.md) collection|The collection of customer reminders sent for this appointment. The value of this property is available only when reading this **bookingAppointment** by its ID.|
|selfServiceAppointmentId|String|Another tracking ID for the appointment, if the appointment was created directly by the customer on the scheduling page, as opposed to by a staff member on behalf of customer.|
|serviceId|String|The ID of the [bookingService](bookingservice.md) associated with this appointment.|
|serviceLocation|[location](location.md)|The location where the service is delivered.|
|serviceName|String|The name of the **bookingService** associated with this appointment.<br>This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the **serviceId** property.|
|serviceNotes|String|Notes from a [bookingStaffMember](bookingstaffmember.md). The value of this property is available only when reading this **bookingAppointment** by its ID.|
|smsNotificationsEnabled|Boolean|True indicates SMS notifications will be sent to the customers for the appointment. Default value is false.|
|staffMemberIds|String collection|The ID of each [bookingStaffMember](bookingstaffmember.md) who is scheduled in this appointment.|
|start|[dateTimeTimeZone](datetimetimezone.md)|The date, time, and time zone that the appointment begins.|

## Relationships
None


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
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "selfServiceAppointmentId": "String",
  "additionalInformation": "String",
  "appointmentLabel": "String",
  "isLocationOnline": "Boolean",
  "joinWebUrl": "String",
  "smsNotificationsEnabled": "Boolean",
  "customerId": "String",
  "customerName": "String",
  "customerEmailAddress": "String",
  "customerPhone": "String",
  "customerLocation": {
    "@odata.type": "microsoft.graph.location"
  },
  "customerTimeZone": "String",
  "customerNotes": "String",
  "serviceId": "String",
  "serviceName": "String",
  "start": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "end": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "duration": "String (duration)",
  "preBuffer": "String (duration)",
  "postBuffer": "String (duration)",
  "serviceLocation": {
    "@odata.type": "microsoft.graph.location"
  },
  "priceType": "String",
  "price": "Double",
  "serviceNotes": "String",
  "reminders": [
    {
      "@odata.type": "microsoft.graph.bookingReminder"
    }
  ],
  "optOutOfCustomerEmail": "Boolean",
  "anonymousJoinWebUrl": "String",
  "customers": [
    {
      "@odata.type": "microsoft.graph.bookingCustomerInformation"
    }
  ],
  "maximumAttendeesCount": "Int32",
  "filledAttendeesCount": "Int32",
  "staffMemberIds": [
    "String"
  ],
  "invoiceAmount": "Double",
  "invoiceDate": {
    "@odata.type": "microsoft.graph.dateTimeTimeZone"
  },
  "invoiceId": "String",
  "invoiceStatus": "String",
  "invoiceUrl": "String",
  "isCustomerAllowedToManageBooking": "Boolean",
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


