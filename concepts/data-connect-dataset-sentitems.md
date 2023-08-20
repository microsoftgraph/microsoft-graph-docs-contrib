---
title: "Microsoft Graph Data Connect SentItems_v0 dataset"
description: "Use the SentItems_v0 dataset to provide a collection of all the sent emails by all users of a tenant."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Microsoft Graph Data Connect SentItems_v0 dataset

The SentItems_v0 dataset provides a collection of all the sent emails by all users of a tenant.
 
## Scenarios

The following are business scenarios that you can answer with this dataset:

- Analyze all email sent by users.
- Analyze all the file attachments that are sent by users to external addresses.
- Analyze keywords from subject and body of sent items for compliance reviews.
- Analyze user interactions with internal and external users to determine collaboration frequency.

## Questions

The following are examples of questions that you can answer with this dataset:

- Who are the external contacts to whom users send emails?
- Who are the internal contacts to whom a user sends emails frequently?
- What are the themes for outward collaborations?
- Which files are shared as attachments outside of the organization? 

## Joining with other datasets

The SentItems_v0 dataset can be joined with datasets, such as Inbox, MailFolder, Message, User and other relevant datasets.

## Schema

| Name  | Type  |  Description  |  FilterOptions  |  IsDateFilter  | 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| Id |	string |	The unique identifier of the message. |	No |	None |
| CreatedDateTime |	datetime |	The date and time the message was created. |	Yes |	Date |
| LastModifiedDateTime |	datetime |	The date and time the message was last changed. |	Yes |	Date |
| ChangeKey |	string |	The version of the message. |	No |	None |
| Categories |	string |	The categories associated with the message. *Format:* `ARRAY<STRING>.` |	No |	None |
| ReceivedDateTime |	datetime |	The date and time the message was received. |	Yes |	Date |
| SentDateTime |	datetime |	The date and time the message was sent. |	Yes |	Date |
| HasAttachments |	boolean |	Indicates whether the message has attachments. |	No |	None |
| InternetMessageId |	string |	The message ID in the format specified by RFC2822. |	No |	None |
| Subject |	string |	The subject of the message. |	No |	None |
| Importance |	string |	The importance of the message. *Allowed formats:* Low = 0, Normal = 1, High = 2. |	No |	None |
| ParentFolderId |	string |	The unique identi| fier for the message's parent folder. |	No |	None |
| Sender |	string |	The account that is actually used to generate the message. *Format:* ``STRUCT<EmailAddress: STRUCT<Name: STRING, Address: STRING>>.` |	No |	None |
| From |	string |	The mailbox owner and sender of the message. *Format:* `STRUCT<EmailAddress: STRUCT<Name: STRING, Address: STRING>>.` |	No |	None |
| ToRecipients |	string |	The To recipients for the message. *Format:* `STRUCT<EmailAddress: STRUCT<Name: STRING, Address: STRING>>.` |	No |	None |
| CcRecipients |	string |	The Cc recipients for the message. *Format:* `STRUCT<EmailAddress: STRUCT<Name: STRING, Address: STRING>>.` |	No |	None |
| BccRecipients |	string |	The Bcc recipients for the message. *Format:* `STRUCT<EmailAddress: STRUCT<Name: STRING, Address: STRING>>.` |	No	| None |
| ReplyTo |	string |	The email addresses to use when replying. *Format:* `STRUCT<EmailAddress: STRUCT<Name: STRING, Address: STRING>>.` |	No |	None |
| ConversationId	| string |	The ID of the conversation that the email belongs to. |	No |	None |
| UniqueBody |	string |	The body of the message that is unique to the conversation. *Format:* `STRUCT<ContentType: INT32, Content: STRING>.` | No |	None |
| IsDeliveryReceiptRequested |	boolean |	Indicates whether a read receipt is requested for the message. |	No |	None |
| IsReadReceiptRequested |	boolean |	Indicates whether a read receipt is requested for the message. |	No |	None |
| IsRead |	boolean |	Indicates whether the message has been read. |	No	| None |
| IsDraft |	boolean |	Indicates whether the message is a draft. A message is a draft if it hasn't been sent yet. |	No |	None |
| WebLink |	string |	The URL to open the message in Microsoft Outlook web app. |	No |	None |
| Attachments |	string |	The 'FileAttachment' and 'ItemAttachment' attachments for the message; Navigation property. *Format:* `ARRAY<STRUCT<LastModifiedDateTime: STRING, Name: STRING, ContentType: STRING, Size: INT, IsInline: BOOLEAN, Id: STRING>>.` |	No |	None |
| ODataType |	string |	Data type of the current folder. |	No |	None |
| puser	string |	User id. |	No |  None |
| ptenant |	string |  Tenant id. |	No |  	None | 

## JSON representation

```json
{
  "Id": "string (identifier)",
  "CreatedDateTime": "String (timestamp)",  
  "LastModifiedDateTime": "String (timestamp)",
  "ChangeKey": "string",
  "Categories": ["string"],
  "ReceivedDateTime": "String (timestamp)",
  "SentDateTime": "String (timestamp)",
  "HasAttachments": true,
  "InternetMessageId": "String",
  "Subject": "string",
  "Importance": "String",
  "ParentFolderId": "string",
  "Sender": {"@odata.type": "#Microsoft.OutlookServices.Recipient"},
  "From": {"@odata.type": "#Microsoft.OutlookServices.Recipient"},
  "ToRecipients": [{"@odata.type": "#Microsoft.OutlookServices.Recipient"}],
  "CcRecipients": [{"@odata.type": "#Microsoft.OutlookServices.Recipient"}],
  "BccRecipients": [{"@odata.type": "#Microsoft.OutlookServices.Recipient"}],
  "ReplyTo": [{"@odata.type": "#Microsoft.OutlookServices.Recipient"}],
  "ConversationId": "string",
  "UniqueBody": {"@odata.type": "#Microsoft.OutlookServices.BodyType"},  
  "IsDeliveryReceiptRequested": true,
  "IsReadReceiptRequested": true,
  "IsRead": true,
  "IsDraft": true,  
  "WebLink": "string",
  "Attachments": [{"@odata.type": "#Microsoft.OutlookServices.FileAttachment/ItemAttachment"}],
  "ODataType": "#Microsoft.OutlookServices.Message", 
  "puser": "String (identifier)",
  "ptenant": "String (identifier)"
}
```

## Sample 


```json

```
