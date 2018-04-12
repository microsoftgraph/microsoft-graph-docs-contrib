# bookingAppointment resource type




## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get bookingAppointment](../api/bookingappointment_get.md) | [bookingAppointment](bookingappointment.md) |Read properties and relationships of bookingAppointment object.|
|[Update](../api/bookingappointment_update.md) | [bookingAppointment](bookingappointment.md)	|Update bookingAppointment object. |
|[Delete](../api/bookingappointment_delete.md) | None |Delete bookingAppointment object. |
|[Cancel](../api/bookingappointment_cancel.md)|None||

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|customerEmailAddress|String||
|customerId|String||
|customerLocation|[location](location.md)||
|customerName|String||
|customerNotes|String||
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
|reminders|[bookingReminder](bookingreminder.md) collection||
|selfServiceAppointmentId|String||
|serviceId|String||
|serviceLocation|[location](location.md)||
|serviceName|String||
|serviceNotes|String||
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