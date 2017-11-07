# office365GroupsActivityCounts resource type

## Properties

| Property               | Type   | Description                              |
| :--------------------- | :----- | ---------------------------------------- |
| reportRefreshDate      | Date   | The latest date of the content.          |
| exchangeEmailsReceived | Int64  | The number of emails received by Group mailbox. |
| yammerMessagesPosted   | Int64  | The number of messages posted to the Yammer group. |
| yammerMessagesRead     | Int64  | The number of messages read in Yammer group. |
| yammerMessagesLiked    | Int64  | The number of messages liked in Yammer group. |
| reportDate             | Date   | The date on which a number of emails were sent to Group mailbox or a number of messages were posted, read, or liked in Yammer group. |
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
