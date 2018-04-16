# bookingService resource type

Represents a service offered by a [bookingBusiness](bookingbusiness.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get bookingService](../api/bookingservice_get.md) | [bookingService](bookingservice.md) |Read properties and relationships of bookingService object.|
|[Update](../api/bookingservice_update.md) | [bookingService](bookingservice.md)	|Update bookingService object. |
|[Delete](../api/bookingservice_delete.md) | None |Delete bookingService object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|defaultDuration|Duration||
|defaultLocation|[location](location.md)||
|defaultPrice|Double||
|defaultPriceType|string| Possible values are: `undefined`, `fixedPrice`, `startingAt`, `hourly`, `free`, `priceVaries`, `callUs`, `notSet`.|
|defaultReminders|[bookingReminder](bookingreminder.md) collection|The default set of reminders for an appointment of this service. The value of this property is available only when reading this **bookingService** by its ID.|
|description|String||
|displayName|String||
|emailAddress|String||
|id|String| Read-only.|
|isHiddenFromCustomers|Boolean||
|notes|String||
|postBuffer|Duration||
|preBuffer|Duration||
|schedulingPolicy|[bookingSchedulingPolicy](bookingschedulingpolicy.md)||
|staffMemberIds|String collection||

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingService"
}-->

```json
{
  "defaultDuration": "String (timestamp)",
  "defaultLocation": {"@odata.type": "microsoft.graph.location"},
  "defaultPrice": 1024,
  "defaultPriceType": "string",
  "defaultReminders": [{"@odata.type": "microsoft.graph.bookingReminder"}],
  "description": "String",
  "displayName": "String",
  "emailAddress": "String",
  "id": "String (identifier)",
  "isHiddenFromCustomers": true,
  "notes": "String",
  "postBuffer": "String (timestamp)",
  "preBuffer": "String (timestamp)",
  "schedulingPolicy": {"@odata.type": "microsoft.graph.bookingSchedulingPolicy"},
  "staffMemberIds": ["String"]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingService resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->