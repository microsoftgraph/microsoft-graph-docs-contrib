# office365GroupsActivityStorage resource type

## Properties

| Property                 | Type   | Description                              |
| :----------------------- | :----- | ---------------------------------------- |
| reportRefreshDate        | Date   | The latest date of the content.          |
| mailboxStorageUsedInByte | Int64  | The storage used in group mailbox.       |
| siteStorageUsedInByte    | Int64  | The storage used in SharePoint document library. |
| reportDate               | Date   |                                          |
| reportPeriod             | String | The range for report dates in days.      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityStorage"
} -->

```http
{
  "reportRefreshDate": "Date", 
  "mailboxStorageUsedInByte": 1024, 
  "siteStorageUsedInByte": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
