# office365GroupsActivityDetail resource type

## Properties

| Property                         | Type    | Description                              |
| :------------------------------- | :------ | ---------------------------------------- |
| reportRefreshDate                | Date    | The latest date of the content.          |
| groupDisplayName                 | String  | The display name of the group.           |
| isDeleted                        | Boolean | Whether this user has been deleted or soft deleted. |
| ownerPrincipalName               | String  | The group owner principal name.          |
| lastActivityDate                 | Date    | The last activity date for the following scenarios:  group mailbox received email; user viewed, edited, shared, or synced files in SharePoint document library; user viewed SharePoint pages; user posted, read, or liked messages in Yammer group. |
| groupType                        | String  | Group type. 'Public' or 'Private'.       |
| memberCount                      | Int64   | The group member count.                  |
| guestCount                       | Int64   | The group guest count.                   |
| exchangeReceivedEmailCount       | Int64   | The number of email that the group mailbox received. |
| sharePointActiveFileCount        | Int64   |                                          |
| yammerPostedMessageCount         | Int64   |                                          |
| yammerReadMessageCount           | Int64   |                                          |
| yammerLikedMessageCount          | Int64   |                                          |
| exchangeMailboxTotalItemCount    | Int64   | The number of items in the group mailbox. |
| exchangeMailboxStorageUsedInByte | Int64   | The storage used of the group mailbox.   |
| sharePointTotalFileCount         | Int64   |                                          |
| sharePointSiteStorageUsedInByte  | Int64   |                                          |
| reportPeriod                     | String  | The range for report dates in days.      |

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.office365GroupsActivityDetail"
} -->

```http
{
  "reportRefreshDate": "Date", 
  "groupDisplayName": "String", 
  "isDeleted": true, 
  "ownerPrincipalName": "String", 
  "lastActivityDate": "Date", 
  "groupType": "String", 
  "memberCount": 1024, 
  "guestCount": 1024, 
  "exchangeReceivedEmailCount": 1024, 
  "sharePointActiveFileCount": 1024, 
  "yammerPostedMessageCount": 1024, 
  "yammerReadMessageCount": 1024, 
  "yammerLikedMessageCount": 1024, 
  "exchangeMailboxTotalItemCount": 1024, 
  "exchangeMailboxStorageUsedInByte": 1024, 
  "sharePointTotalFileCount": 1024, 
  "sharePointSiteStorageUsedInByte": 1024, 
  "reportPeriod": "String"
}
```
