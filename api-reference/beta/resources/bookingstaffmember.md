# bookingStaffMember resource type




## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get bookingStaffMember](../api/bookingstaffmember_get.md) | [bookingStaffMember](bookingstaffmember.md) |Read properties and relationships of bookingStaffMember object.|
|[Update](../api/bookingstaffmember_update.md) | [bookingStaffMember](bookingstaffmember.md)	|Update bookingStaffMember object. |
|[Delete](../api/bookingstaffmember_delete.md) | None |Delete bookingStaffMember object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|availabilityIsAffectedByPersonalCalendar|Boolean||
|colorIndex|Int32||
|displayName|String||
|emailAddress|String||
|id|String| Read-only.|
|role|string| Possible values are: `guest`, `administrator`, `viewer`, `externalGuest`.|
|useBusinessHours|Boolean||
|workingHours|[bookingWorkHours](bookingworkhours.md) collection||

## Relationships
None


## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.bookingStaffMember"
}-->

```json
{
  "availabilityIsAffectedByPersonalCalendar": true,
  "colorIndex": 1024,
  "displayName": "String",
  "emailAddress": "String",
  "id": "String (identifier)",
  "role": "string",
  "useBusinessHours": true,
  "workingHours": [{"@odata.type": "microsoft.graph.bookingWorkHours"}]
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "bookingStaffMember resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->