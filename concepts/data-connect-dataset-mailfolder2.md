---
title: "Microsoft Graph Data Connect Mailfolder_v2 dataset"
description: "Use the Mailfolder_v2 dataset to provide the information on all mail folders created in a user’s mailbox."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Microsoft Graph Data Connect Mailfolder_v2 dataset

This dataset provides the information on all folders created in users' mailboxes, along with a collection of all child folders created in all mail folders.
 
## Scenarios

The following are business scenarios that you can answer with this dataset:

- Create replica of mailboxes of all users of the tenant.
- Analyze the mailfolder structures created by different users of the tenant.

## Questions

The following are examples of questions that you can answer with this dataset:

- How many child folders are created in a particular mail folder of a user mailbox?
- Which are the exact child folders present in a parent mail folder?
- What are the names of all the custom folders created by the user?
- Which is the parent folder of a child folder in user's mailbox?
- How many total items are present in a mail folder?
- How many unread items are present in a mail folder?

## Joining with other datasets

The Mailfolder_v2 dataset can be joined with relevant entity datasets such as *User*, *Mail* and others.

## Definitions

Mailbox folders can contain messages and other folders created by users.

## Schema

| Name  | Type  |  Description  |  FilterOptions  |  IsDateFilter  | 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| Id	| string |	The mailFolder's unique identifier. |	No	| None |
| DisplayName |	string |	The mailFolder's display name. |	No |  	None |
| ParentFolderId	| string |	The unique identifier for the mailFolder's parent mailFolder.	| No |  	None |
| ChildFolderCount |	int32 |	The number of immediate child mailFolders in the current mailFolder. |	No |  	None |
| UnreadItemCount |	int32 |	The number of items in the mailFolder marked as unread.	| No |	None |
| TotalItemCount |	int32 |	The number of items in the mailFolder. |	No |  	None |
| ChildFolders |	string |	The collection of child folders in the mailFolder. |	No |  	None |
| ODataType |	string |	Data type of the current folder. |	No |	None |
| puser |	string |	User id. |	No |  	None |
| ptenant |	string |  Tenant id. |	No |  	None |

## JSON representation

```json
{
  "Id": "string (identifier)",
  "DisplayName": "string",
  "ParentFolderId": "string",
  "ChildFolderCount": int32,
  "UnreadItemCount": int32,
  "TotalItemCount": int32, 
  "ChildFolders": [ { "@odata.type": "#Microsoft.OutlookServices.MailFolder" } ],
  "ODataType": "#Microsoft.OutlookServices.MailFolder",
  "puser": "String (identifier)",
  "ptenant": "String (identifier)"
}
```

## Sample 


```json
{"ChildFolderCount":0,"ChildFolders":[],"DisplayName":"Archive","Id":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBTwAAAA==","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCAAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
{"ChildFolderCount":2,"ChildFolders":[{"ChildFolderCount":1,"DisplayName":"Conversation History2","Id":"AAMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUxYzM0YQAuAAAAAAChqFAOUjc5Rb5Z6AvLfRi0AQDsMQHKdCgYRZJp_8sMOA38AAR1ke13AAA=","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBRgAAAA==","TotalItemCount":0,"UnreadItemCount":0}],"DisplayName":"Conversation History","Id":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBRgAAAA==","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCAAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
{"ChildFolderCount":0,"ChildFolders":[],"DisplayName":"Conversation History1","Id":"AAMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUxYzM0YQAuAAAAAAChqFAOUjc5Rb5Z6AvLfRi0AQDsMQHKdCgYRZJp_8sMOA38AAR1ke12AAA=","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCAAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
{"ChildFolderCount":0,"ChildFolders":[],"DisplayName":"Deleted Items","Id":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCgAAAA==","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCAAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
{"ChildFolderCount":0,"ChildFolders":[],"DisplayName":"Drafts","Id":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBDwAAAA==","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCAAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
{"ChildFolderCount":0,"ChildFolders":[],"DisplayName":"Inbox","Id":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBDAAAAA==","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCAAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
{"ChildFolderCount":0,"ChildFolders":[],"DisplayName":"Junk Email","Id":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBHwAAAA==","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCAAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
{"ChildFolderCount":0,"ChildFolders":[],"DisplayName":"Outbox","Id":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCwAAAA==","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCAAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
{"ChildFolderCount":1,"ChildFolders":[{"ChildFolderCount":1,"DisplayName":"Sent Items1","Id":"AAMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUxYzM0YQAuAAAAAAChqFAOUjc5Rb5Z6AvLfRi0AQDsMQHKdCgYRZJp_8sMOA38AAR1ke15AAA=","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCQAAAA==","TotalItemCount":0,"UnreadItemCount":0}],"DisplayName":"Sent Items","Id":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCQAAAA==","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCAAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
{"ChildFolderCount":1,"ChildFolders":[{"ChildFolderCount":1,"DisplayName":"Sent Items2","Id":"AAMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUxYzM0YQAuAAAAAAChqFAOUjc5Rb5Z6AvLfRi0AQDsMQHKdCgYRZJp_8sMOA38AAR1ke16AAA=","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AAMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUxYzM0YQAuAAAAAAChqFAOUjc5Rb5Z6AvLfRi0AQDsMQHKdCgYRZJp_8sMOA38AAR1ke15AAA=","TotalItemCount":0,"UnreadItemCount":0}],"DisplayName":"Sent Items1","Id":"AAMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUxYzM0YQAuAAAAAAChqFAOUjc5Rb5Z6AvLfRi0AQDsMQHKdCgYRZJp_8sMOA38AAR1ke15AAA=","ODataType":"#Microsoft.OutlookServices.MailFolder","ParentFolderId":"AQMkADI2YWM4MjQyLWQ3YjEtNDgzMi1hMzkyLTE2ZTM3NTUAMWMzNGEALgAAA6GoUA5SNzlFvlnoC8t9GLQBAOwxAcp0KBhFkmn7yww4DfwAAAIBCQAAAA==","ptenant":"f1a7cbc0-bd5e-432e-8ccd-38cdb85094ca","puser":"ca85120d-b104-4af4-8a13-ae7028e59c73"}
```
