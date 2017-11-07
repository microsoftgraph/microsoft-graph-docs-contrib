# mailboxUsageQuotaMailboxStatusCounts resource type

## Properties

| Property              | Type   |
| :-------------------- | :----- |
| reportRefreshDate     | Date   |
| good                  | Int64  |
| warningIssued         | Int64  |
| sendProhibited        | Int64  |
| sendReceiveProhibited | Int64  |
| indeterminate         | Int64  |
| reportDate            | Date   |
| reportPeriod          | String |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mailboxUsageQuotaMailboxStatusCounts"
} -->

```http
{
  "reportRefreshDate": "Date", 
  "good": 1024, 
  "warningIssued": 1024, 
  "sendProhibited": 1024, 
  "sendReceiveProhibited": 1024, 
  "indeterminate": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
