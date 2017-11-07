# office365GroupsActivityCounts resource type

## Properties

| Property               | Type   | Description                              |
| :--------------------- | :----- | ---------------------------------------- |
| reportRefreshDate      | Date   | The latest date of the content.          |
| exchangeEmailsReceived | Int64  | The number of emails sent to the Group mailbox. |
| yammerMessagesPosted   | Int64  | The number of messages posted to the Yammer group. |
| yammerMessagesRead     | Int64  | The number of messages read by the Yammer group. |
| yammerMessagesLiked    | Int64  | The number of messages liked by the Yammer group. |
| reportDate             | Date   |                                          |
| reportPeriod           | String | The range for report dates in days.      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityCounts"
} -->

```http
{
  "reportRefreshDate": "Date", 
  "exchangeEmailsReceived": 1024, 
  "yammerMessagesPosted": 1024, 
  "yammerMessagesRead": 1024, 
  "yammerMessagesLiked": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```
