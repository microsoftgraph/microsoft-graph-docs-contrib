# oneDriveUsageAccountDetail resource type

## Properties

| Property               | Type    |
| :--------------------- | :------ |
| reportRefreshDate      | Date    |
| siteUrl                | String  |
| ownerDisplayName       | String  |
| isDeleted              | Boolean |
| lastActivityDate       | Date    |
| fileCount              | Int64   |
| activeFileCount        | Int64   |
| storageUsedInByte      | Int64   |
| storageAllocatedInByte | Int64   |
| reportPeriod           | String  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.oneDriveUsageAccountDetail"
} -->

```http
{
  "reportRefreshDate": "Date", 
  "siteUrl": "String", 
  "ownerDisplayName": "String", 
  "isDeleted": true, 
  "lastActivityDate": Date", 
  "fileCount": 1024, 
  "activeFileCount": 1024, 
  "storageUsedInByte": 1024, 
  "storageAllocatedInByte": 1024, 
  "reportPeriod": "String"
}
```
