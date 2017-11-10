# office365GroupsActivityStorage resource type

## Properties

| Property                 | Type   | Description                              |
| :----------------------- | :----- | ---------------------------------------- |
| reportRefreshDate        | Date   | The latest date of the content.          |
| mailboxStorageUsedInByte | Int64  | The storage used in group mailbox.       |
| siteStorageUsedInByte    | Int64  | The storage used in SharePoint document library. |
| reportDate               | Date   | The snapshot date for Exchange and SharePoint used storage. |
| reportPeriod             | String | The number of days the report covers.    |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityStorage"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "mailboxStorageUsedInByte": 1024, 
  "siteStorageUsedInByte": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
