---
title: "Microsoft Graph Data Connect Mailfolder_v0  dataset"
description: "Use the Mailfolder_v0 dataset to provide information of all the folders created in a user's mailbox."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Microsoft Graph Data Connect Mailfolder_v0  dataset

The Mailfolder_v0 dataset provides information of all the folders created in a user's mailbox, such as Inbox and Drafts. Mail folders can contain messages, other Outlook items, and child mail folders.
 
## Scenarios

The following are business scenarios that you can answer with this dataset:

- Analyze the mailfolder structures created by different users of the tenant.

## Questions

The following are examples of questions that you can answer with this dataset:

- What are the names of all the custom folders created by the user?
- Which is the parent folder of a child folder in user's mailbox?
- How many total items are present in a mail folder?
- How many unread items are present in a mail folder?

## Joining with other datasets

The Mailfolder_v0 dataset can be joined with relevant entity datasets such as User, Mail and others.

## Definitions

Mailbox folders can contain messages and other folders created by users. 

## Schema

| Name  | Type  |  Description  |  FilterOptions  |  IsDateFilter  | 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| id | 	string | 	The unique identifier for 'mailFolder'. |	No |	None |
| displayName |	string |	The display name for 'mailFolder'.  |	No |	None |
| parentFolderId |	strin |g	The unique identifier for the folder's parent 'mailFolder'. |	No |	None |
| childFolderCount |	int32 |	The number of immediate child folder in the current 'mailFolder'. |	No |	None |
| unreadItemCount |	int32 |	The number of items in the 'mailFolder' marked as unread. |	No |	None |
| totalItemCount |	int32 |	The number of items in the 'mailFolder'. |	No |	None |
| ODataType |	string |	Data type of the current folder. |	No |	None |
| puser	| string	| User id. |	No |  	None |
| ptenant |	string  |	Tenant id. |	No |  	None |

## JSON representation

```json
{
  "id": "string (identifier)",
  "displayName": "string",
  "parentFolderId": "string",
  "childFolderCount": int32,
  "unreadItemCount": int32,
  "totalItemCount": int32, 
  "ODataType": "#microsoft.graph.mailFolder",
  "puser": "String (identifier)",
  "ptenant": "String (identifier)"
}
```

## Sample 


```json
{"id":"AQMkAGRjNDFjNDY1LTVmNzUtNGViNC1hOTkANi1jOThlMmJmMTU3MmMALgAAA6jVIxIEDQNNtj9CZVt6SRUBAMquub9EVY9Nv31MRSqT3dQAAAIBWQAAAA==","displayName":"Archive","parentFolderId":"AQMkAGRjNDFjNDY1LTVmNzUtNGViNC1hOTkANi1jOThlMmJmMTU3MmMALgAAA6jVIxIEDQNNtj9CZVt6SRUBAMquub9EVY9Nv31MRSqT3dQAAAIBCAAAAA==","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"0409a7eb-588d-4871-b629-e33de72b8b0d","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22”}
{"id":"AQMkAGFlMjczOTQ5LTNjMjAtNDM2ZS04YjNlLTczNmY0OTVhODFlOQAuAAADZ_EAK_Os2kO_qYnMT9a4zQEASqucXnhIlE2b8iXgsvn1qQAAAgFAAAAA","displayName":"Archive","parentFolderId":"AQMkAGFlMjczOTQ5LTNjMjAtNDM2ZS04YjNlLTczNmY0OTVhODFlOQAuAAADZ_EAK_Os2kO_qYnMT9a4zQEASqucXnhIlE2b8iXgsvn1qQAAAgEIAAAA","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"1715c984-a1ce-4483-b109-643041ef4469","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22”}
{"id":"AQMkAGY4Mjk2NTZjLTUxNjgtNDdlZi1hZjJhLWYwNTQ5YzVhOTkAZTIALgAAA8qoOofxQYpLp-fYvJvsCf0BAKNZARh2HqhDgQvm4HdqNToAAAIBSwAAAA==","displayName":"Archive","parentFolderId":"AQMkAGY4Mjk2NTZjLTUxNjgtNDdlZi1hZjJhLWYwNTQ5YzVhOTkAZTIALgAAA8qoOofxQYpLp-fYvJvsCf0BAKNZARh2HqhDgQvm4HdqNToAAAIBCAAAAA==","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"3853937f-6f46-4fff-a141-1a18be24944e","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22"}
{"id":"AAMkADg2NjRmYzE5LTJmZmItNDMxNy1iMGU2LWI4ZTA4ZjJhZWFkYQAuAAAAAAB5Lb3RUjXQTq_4frfZtHdHAQBBChzDntZLTK9_In9X_H7UAAAAAIw_AAA=","displayName":"Archive","parentFolderId":"AAMkADg2NjRmYzE5LTJmZmItNDMxNy1iMGU2LWI4ZTA4ZjJhZWFkYQAuAAAAAAB5Lb3RUjXQTq_4frfZtHdHAQBBChzDntZLTK9_In9X_H7UAAAAAAEIAAA=","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"3eb5fed9-8c59-4eff-a9ea-ba2b5f1ac27f","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22"}
{"id":"AAMkADY0MTRiMDMyLWYyY2QtNGNmYi05MTZmLWE0MWQ5OTVkMTY3NwAuAAAAAACePVwnVQLQQo3igsKUUNIPAQDDb9In4fFjSKy7cc0yk1OaAAAAAGjHAAA=","displayName":"Archive","parentFolderId":"AAMkADY0MTRiMDMyLWYyY2QtNGNmYi05MTZmLWE0MWQ5OTVkMTY3NwAuAAAAAACePVwnVQLQQo3igsKUUNIPAQDDb9In4fFjSKy7cc0yk1OaAAAAAAEIAAA=","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"6618944e-1fe9-4c03-955e-b1ebbf5737c9","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22"}
{"id":"AAMkADI4ZjI2M2M3LTQ2M2UtNDdmZi05N2U2LTQyMTk5NjkyZjhjMQAuAAAAAADK7KnGlO-0QozWnQc1OrNEAQAVIBI9ITL4T4hmBf4E6xqQAAAAAAFWAAA=","displayName":"Archive","parentFolderId":"AAMkADI4ZjI2M2M3LTQ2M2UtNDdmZi05N2U2LTQyMTk5NjkyZjhjMQAuAAAAAADK7KnGlO-0QozWnQc1OrNEAQAVIBI9ITL4T4hmBf4E6xqQAAAAAAEIAAA=","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"6acddb90-66a1-4a1f-bbd4-4632aac05f3a","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22"}
{"id":"AQMkAGUzNmIxMzcwLWNiYzAtNDkxMi05NzViLTU2M2VkMGUxNWYwYQAuAAADMfJmQyFaPkWIRgjBBrblMgEAi7RMA7eRU0GB-Rxx-trGSwAAAgFjAAAA","displayName":"Archive","parentFolderId":"AQMkAGUzNmIxMzcwLWNiYzAtNDkxMi05NzViLTU2M2VkMGUxNWYwYQAuAAADMfJmQyFaPkWIRgjBBrblMgEAi7RMA7eRU0GB-Rxx-trGSwAAAgEIAAAA","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"6f995c2b-2dcc-433f-9409-7d847d3935fb","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22"}
{"id":"AAMkAGE0ZWVmYTlhLTI2MDAtNDJmOC05NjRjLTNmMTgyNDM2MDQ3NwAuAAAAAACAHUC988Z9QbixVUMtutstAQDR4t3ZE8_6QpbkP-csYqiqAAAAAGrMAAA=","displayName":"Clutter","parentFolderId":"AAMkAGE0ZWVmYTlhLTI2MDAtNDJmOC05NjRjLTNmMTgyNDM2MDQ3NwAuAAAAAACAHUC988Z9QbixVUMtutstAQDR4t3ZE8_6QpbkP-csYqiqAAAAAAEIAAA=","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"820779bc-217e-4370-bb81-4f34a124c072","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22”}
{"id":"AQMkADllMGU3NTZhLWU0MjYtNDU5ZC04NzQ1LTUxM2Y0NTI0NzM3MwAuAAADxIFm2RiFrU2EhVfwmeCNMgEA1DBbvNXM6ke6YeAsGY2R0AAAAmxQAAAA","displayName":"Archive","parentFolderId":"AQMkADllMGU3NTZhLWU0MjYtNDU5ZC04NzQ1LTUxM2Y0NTI0NzM3MwAuAAADxIFm2RiFrU2EhVfwmeCNMgEA1DBbvNXM6ke6YeAsGY2R0AAAAgEIAAAA","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"883bfe1c-445d-4848-8db1-b677b16ed4be","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22"}
{"id":"AQMkADg2ZTY5OQAxNC1iNjUwLTRhMGQtODAyMS1mYjEwZDljNjk0ZDkALgAAA6idTB5WAhNBq_ijW0PQP7oBAMd8Z-5o8NJGmHQhTTXS3RYAAAIBXAAAAA==","displayName":"Archive","parentFolderId":"AQMkADg2ZTY5OQAxNC1iNjUwLTRhMGQtODAyMS1mYjEwZDljNjk0ZDkALgAAA6idTB5WAhNBq_ijW0PQP7oBAMd8Z-5o8NJGmHQhTTXS3RYAAAIBCAAAAA==","childFolderCount":0,"unreadItemCount":0,"totalItemCount":0,"ODataType":"#microsoft.graph.mailFolder","puser":"c2381f5a-ef48-439a-b44a-a47311537c53","ptenant":"027d8585-9664-42ed-ae2a-c9e9fddfda22"}
```