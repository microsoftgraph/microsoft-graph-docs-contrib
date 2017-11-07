# office365GroupsActivityFileCounts resource type

## Properties

| Property          | Type   | Description                              |
| :---------------- | :----- | ---------------------------------------- |
| reportRefreshDate | Date   | The latest date of the content.          |
| total             | Int64  | The total number of files in the SharePoint document library of the group. |
| active            | Int64  | The number of files that were viewed, edited, shared, or synced in the SharePoint document library of the group. |
| reportDate        | Date   | The date on which a number of file were active in SharePoint Group site. |
| reportPeriod      | String | The range for report dates in days.      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {

  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityFileCounts"
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
