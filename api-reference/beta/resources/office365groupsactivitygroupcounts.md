# office365GroupsActivityGroupCounts resource type

## Properties

| Property          | Type   | Description                              |
| :---------------- | :----- | ---------------------------------------- |
| reportRefreshDate | Date   | The latest date of the content.          |
| total             | Int64  | The total number of groups.              |
| active            | Int64  | The number of active groups. The following scenarios will make the group active: group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer group. |
| reportDate        | Date   |                                          |
| reportPeriod      | String | The range for report dates in days.      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityGroupCounts"
} -->

```http
{
  "reportRefreshDate": "Date", 
  "total": 1024, 
  "active": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
