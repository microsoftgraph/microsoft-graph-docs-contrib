# bookingAppointment resource type

Represents a customer appointment for a [bookingService](bookingservice.md), performed by a set of staff members, provided by a Microsoft Bookings business.


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get bookingAppointment](../api/bookingappointment_get.md) | [bookingAppointment](bookingappointment.md) |Read properties and relationships of bookingAppointment object.|
|[Update](../api/bookingappointment_update.md) | [bookingAppointment](bookingappointment.md)	|Update **bookingAppointment** object. |
|[Delete](../api/bookingappointment_delete.md) | None |Delete **bookingAppointment** object. |
|[Cancel](../api/bookingappointment_cancel.md)|None| Cancel **bookingAppointment** object.|

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customerEmailAddress|String||
|customerId|String|The id of the [bookingCustomer](bookingcustomer.md) for this appointment. If no ID is specified when an appointment is created, then a new **bookingCustomer** object is created. Once set, you should consider the **customerId** immutable.|
|customerLocation|[location](location.md)||
|customerName|String||
|customerNotes|String|Notes from the customer associated with this appointment. You can get the value only when reading this **bookingAppointment** by its ID. <br> You can initially set this property only when creating an appointment with a new customer. After that point, the value is computed from the customer represented by **customerId**.|
|customerPhone|String||
|duration|Duration||
|end|[dateTimeTimeZone](datetimetimezone.md)||
|id|String| Read-only.|
|invoiceAmount|Double||
|invoiceDate|[dateTimeTimeZone](datetimetimezone.md)||
|invoiceId|String||
|invoiceStatus|string| Possible values are: `draft`, `reviewing`, `open`, `canceled`, `paid`, `corrective`.|
|invoiceUrl|String||
|optOutOfCustomerEmail|Boolean||
|postBuffer|Duration||
|preBuffer|Duration||
|price|Double||
|priceType|string| Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|reminders|[bookingReminder](bookingreminder.md) collection|The collection of customer reminders sent for this appointment. The value of this property is available only when reading this **bookingAppointment** by its ID.|
|selfServiceAppointmentId|String||
|serviceId|String|The ID of the [bookingService](bookingservice.md) associated with this appointment.|
|serviceLocation|[location](location.md)||
|serviceName|String|The name of the **bookingService** associated with this appointment.<br>This property is optional when creating a new appointment. If not specified, it is computed from the service associated with the appointment by the service id.|
|serviceNotes|String|Notes from a [bookingStaffMember](bookingstaffmember.md). The value of this property is available only when reading this **bookingAppointment** by its ID.|
|staffMemberIds|String collection||
|start|[dateTimeTimeZone](datetimetimezone.md)||

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingAppointment"
}-->

```json
{
  "customerEmailAddress": "String",
  "customerId": "String",
  "customerLocation": {"@odata.type": "microsoft.graph.location"},
  "customerName": "String",
  "customerNotes": "String",
  "customerPhone": "String",
  "duration": "String (timestamp)",
  "end": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "id": "String (identifier)",
  "invoiceAmount": 1024,
  "invoiceDate": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "invoiceId": "String",
  "invoiceStatus": "string",
  "invoiceUrl": "String",
  "optOutOfCustomerEmail": true,
  "postBuffer": "String (timestamp)",
  "preBuffer": "String (timestamp)",
  "price": 1024,
  "priceType": "string",
  "reminders": [{"@odata.type": "microsoft.graph.bookingReminder"}],
  "selfServiceAppointmentId": "String",
  "serviceId": "String",
  "serviceLocation": {"@odata.type": "microsoft.graph.location"},
  "serviceName": "String",
  "serviceNotes": "String",
  "staffMemberIds": ["String"],
  "start": {"@odata.type": "microsoft.graph.dateTimeTimeZone"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingAppointment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->