---
title: "office365GroupsActivityDetail resource type"
description: "The following JSON representation shows the resource type."
ms.localizationpriority: medium
ms.subservice: "reports"
author: "sarahwxy"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# office365GroupsActivityDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

## Properties

| Property                          | Type    | Description                              |
| :-------------------------------- | :------ | ---------------------------------------- |
| groupId                           | String  | The group id.          |
| reportRefreshDate                 | Date    | The latest date of the content.          |
| groupDisplayName                  | String  | The display name of the group.           |
| isDeleted                         | Boolean | Whether this user has been deleted or soft deleted. |
| ownerPrincipalName                | String  | The group owner principal name.          |
| lastActivityDate                  | Date    | The last activity date for the following scenarios:  group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer groups. |
| groupType                         | String  | The group type. Possible values are: **Public** or **Private**. |
| memberCount                       | Int64   | The group member count.                  |
| externalMemberCount               | Int64   | The group external member count.         |
| exchangeReceivedEmailCount        | Int64   | The number of emails that the group mailbox received. |
| sharePointActiveFileCount         | Int64   | The number of active files in SharePoint Group site. |
| yammerPostedMessageCount          | Int64   | The number of messages posted to Yammer groups. |
| yammerReadMessageCount            | Int64   | The number of messages read in Yammer groups. |
| yammerLikedMessageCount           | Int64   | The number of messages liked in Yammer groups. |
| teamsChannelMessagesCount         | Int64   | The number of channel messages in Teams team. |
| teamsMeetingsOrganizedCount       | Int64   | The number of meetings organized in Teams team. |
| exchangeMailboxTotalItemCount     | Int64   | The number of items in the group mailbox. |
| exchangeMailboxStorageUsedInBytes | Int64   | The storage used of the group mailbox.   |
| sharePointTotalFileCount          | Int64   | The total number of files in SharePoint Group site. |
| sharePointSiteStorageUsedInBytes  | Int64   | The storage used by SharePoint Group site. |
| reportPeriod                      | String  | The number of days the report covers.    |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityDetail"
} -->

```json
{
  "groupId": "0003cf63-7ff3-4471-b24b-50ffbfb8b5d2",
  "reportRefreshDate": "Date", 
  "groupDisplayName": "String", 
  "isDeleted": true, 
  "ownerPrincipalName": "String", 
  "lastActivityDate": "Date", 
  "groupType": "String", 
  "memberCount": 1024, 
  "externalMemberCount": 1024, 
  "exchangeReceivedEmailCount": 1024, 
  "sharePointActiveFileCount": 1024, 
  "yammerPostedMessageCount": 1024, 
  "yammerReadMessageCount": 1024, 
  "yammerLikedMessageCount": 1024, 
  "teamsChannelMessagesCount": 1024,
  "teamsMeetingsOrganizedCount": 1024,
  "exchangeMailboxTotalItemCount": 1024, 
  "exchangeMailboxStorageUsedInBytes": 1024, 
  "sharePointTotalFileCount": 1024, 
  "sharePointSiteStorageUsedInBytes": 1024, 
  "reportPeriod": "String"
}
```


