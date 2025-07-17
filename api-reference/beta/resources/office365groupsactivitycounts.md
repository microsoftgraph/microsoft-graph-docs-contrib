---
title: "office365GroupsActivityCounts resource type"
description: "The following JSON representation shows the resource type."
ms.localizationpriority: medium
ms.subservice: "reports"
author: "sarahwxy"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# office365GroupsActivityCounts resource type

Namespace: microsoft.graph

## Properties

| Property               | Type   | Description                              |
| :--------------------- | :----- | ---------------------------------------- |
| reportRefreshDate      | Date   | The latest date of the content.          |
| exchangeEmailsReceived | Int64  | The number of emails received by Group mailboxes. |
| yammerMessagesPosted   | Int64  | The number of messages posted to Yammer groups. |
| yammerMessagesRead     | Int64  | The number of messages read in Yammer groups. |
| yammerMessagesLiked    | Int64  | The number of messages liked in Yammer groups. |
| teamsChannelMessages   | Int64  | The number of channel messages in Teams team. |
| teamsMeetingsOrganized | Int64  | The number of meetings organized in Teams team. |
| reportDate             | Date   | The date on which a number of emails were sent to a group mailbox or a number of messages were posted, read, or liked in a Yammer group |
| reportPeriod           | String | The number of days the report covers.    |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityCounts"
} -->

```json
{
  "reportRefreshDate": "Date", 
  "exchangeEmailsReceived": 1024, 
  "yammerMessagesPosted": 1024, 
  "yammerMessagesRead": 1024, 
  "yammerMessagesLiked": 1024, 
  "teamsChannelMessages": 1024, 
  "teamsMeetingsOrganized": 1024, 
  "reportDate": "Date", 
  "reportPeriod": "String"
}
```


