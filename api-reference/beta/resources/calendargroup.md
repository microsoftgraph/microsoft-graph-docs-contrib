# calendarGroup resource type

A group of calendars.

**Note** Outlook.com supports only the default calendar group which is accessible by the ../me/calendars shortcut. You cannot delete that calendar group.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "calendars"
  ],
  "@odata.type": "microsoft.graph.calendargroup"
}-->

```json
{
  "changeKey": "string",
  "classId": "guid",
  "id": "string (identifier)",
  "name": "string"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|name|String|The group name.|
|changeKey|String|Identifies the version of the calendar group. Every time the calendar group is changed, ChangeKey changes as well. This allows Exchange to apply changes to the correct version of the object. Read-only.|
|classId|Guid|The class identifier. Read-only.|
|id|String|The group's unique identifier. Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|calendars|[Calendar](calendar.md) collection|The calendars in the calendar group. Navigation property. Read-only. Nullable.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get calendarGroup](../api/calendargroup_get.md) | [calendarGroup](calendargroup.md) |Read properties and relationships of calendarGroup object.|
|[Create Calendar](../api/calendargroup_post_calendars.md) |[Calendar](calendar.md)| Create a new Calendar by posting to the calendars collection.|
|[List calendars](../api/calendargroup_list_calendars.md) |[Calendar](calendar.md) collection| Get a Calendar object collection.|
|[Update](../api/calendargroup_update.md) | [calendarGroup](calendargroup.md) |Update calendarGroup object. |
|[Delete](../api/calendargroup_delete.md) | None |Delete calendarGroup object. |

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "calendarGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->