# mailboxUsageDetail resource type

## Properties

| Property                       | Type    |
| :----------------------------- | :------ |
| reportRefreshDate              | Date    |
| userPrincipalName              | String  |
| displayName                    | String  |
| isDeleted                      | Boolean |
| deletedDate                    | Date    |
| createdDate                    | Date    |
| lastActivityDate               | Date    |
| itemCount                      | Int64   |
| storageUsedInByte              | Int64   |
| issueWarningQuotaInByte        | Int64   |
| prohibitSendQuotaInByte        | Int64   |
| prohibitSendReceiveQuotaInByte | Int64   |
| reportPeriod                   | String  |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mailboxUsageDetail"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "userPrincipalName": "String", 
  "displayName": "String", 
  "isDeleted": true, 
  "deletedDate": "Date", 
  "createdDate": "Date", 
  "lastActivityDate": "Date", 
  "itemCount": 1024, 
  "storageUsedInByte": 1024, 
  "issueWarningQuotaInByte": 1024, 
  "prohibitSendQuotaInByte": 1024, 
  "prohibitSendReceiveQuotaInByte": 1024, 
  "reportPeriod": "String"
}
```
