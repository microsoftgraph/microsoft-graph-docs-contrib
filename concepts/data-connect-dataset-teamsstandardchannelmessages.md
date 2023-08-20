---
title: "Microsoft Graph Data Connect TeamsStandardChannelMessages_v0 dataset"
description: "Use the TeamsStandardChannelMessages_v0 dataset to provide channel posts and messages from standard channels in Teams."
author: "rimisra2"
ms.localizationpriority: high
ms.prod: "data-connect"
ms.custom: datasets:dataset-name
---

# Microsoft Graph Data Connect TeamsStandardChannelMessages_v0 dataset

The TeamsStandardChannelMessages_v0 dataset provides channel posts and messages from standard channels in Teams.

## Scenarios

The following are business scenarios that you can answer with this dataset:

- Analyze engagement on posts and messages in Teams standard channels.
- Analyze chat message response times through Teams standard channels.
- Analyze files shared through Teams standard channels.

## Questions

The following are examples of questions that you can answer with this dataset:

- How many users reacted on posts and messages?
- Which messages were the most popular posts?
- Which users responded to a particular post?

## Joining with other datasets

The TeamsStandardChannelMessages_v0 dataset can be joined to other Teams datasets, the User dataset, and other relevant datasets.

## Schema

| Name  | Type  |  Description  |  FilterOptions  |  IsDateFilter  | 
| ----------- | ----------- | ----------- | ----------- | ----------- |
| Id |	string | Unique ID for the Teams channel message, formatted according to RFC2822. |	No |	None |
| CreatedDateTime |	datetime	| UTC formatted created date time of message. |	Yes |	Date |
| LastModifiedDateTime | datetime |	UTC formatted last modified date time of message. |	Yes | Date |
| SentDateTime |	datetime |	UTC formatted sent date time of message. | Yes | Date |
| Subject | string |	Subject of the message or announcement.	| No	| None |
| Importance |	string |	The importance defined by the sender. |	No |	None |
| From	| string |	Nested property outlining the sender of the message. |	No |	None |
| Body |	string |	The message text body. |	No |	None |
| ParentFolderId |	string |	The unique identifier for the teams message parent folder. |	No |	None |
| ConversationId |	string |	The ID of the conversation the email belongs to. |	No |	None |
| IsRead |	boolean |	Indicates whether the message has been read. |	No	| None |
| Sender	| string |	The account that is actually used to generate the teams message. *Format:* `STRUCT<EmailAddress: STRUCT<Name: STRING, Address: STRING>>.` |	No |	None |
| ReplyTo	string |	The email addresses to use when replying. *Format:* `ARRAY<STRUCT<EmailAddress: STRUCT<Name: STRING, Address: STRING>>>.`  |	No |	None |
| Flag | string | The flag value that indicates the status, start date, due date, or completion date for the teams message. |	No | None |
| Attachments |	string |	List of attachments on the message. |	No |	None |
| ODataType |	string |	Data type of the current item. |	No |	None |
| pObjectId |	string |	Object id. |	No |	None |
| ptenant |	string |	Tenant id, |	No	 | None |

## JSON representation

```json
{
"Id": "string (identifier)",
"createdDateTime": "String (timestamp)",
"LastModifiedDateTime": "String (timestamp)",
"SentDateTime": "String (timestamp)",
"Subject": "string",
"Importance": "String",
"From": {"@odata.type": "Microsoft.OutlookServices.Recipient"},
"Body": {"@odata.type": "Microsoft.OutlookServices.ItemBody"},
"ParentFolderId": "string",
"ConversationId": "string",
"IsRead": true,
"Sender": {"@odata.type": "Microsoft.OutlookServices.Recipient"},
"ReplyTo": [{"@odata.type": "Microsoft.OutlookServices.Recipient "}],
"Flag": {"@odata.type": "Microsoft.OutlookServices.FollowupFlag"},
"Attachments": [{"@odata.type": "Microsoft.OutlookServices.Attachment"}],
"ODataType": "#Microsoft.OutlookServices.Message",
"pObjectId": "String(identifier)",
"ptenant": "String(identifier)"
}
```

## Sample 


```json
{"Id":"AAMkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQBGAAAAAACejmzcrQ87T49gTcqNR-sbBwC6DHd_ZfCmSaMZ4xI8LKurAAAAAAEnAAC6DHd_ZfCmSaMZ4xI8LKurAACyuGM0AAA=","CreatedDateTime":"2021-12-08T23:10:09Z","LastModifiedDateTime":"2021-12-08T23:10:12Z","SentDateTime":"2021-12-08T23:10:08Z","Subject":”Hello World”,"Importance":"Normal","ParentFolderId":"AAMkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQAuAAAAAACejmzcrQ87T49gTcqNR-sbAQC6DHd_ZfCmSaMZ4xI8LKurAAAAAAEnAAA=","ConversationId":"AAQkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQAQALylBcNpxHMOUKdBWwkBc7w=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Testing conversation in channel 1 </body></html>"},"Sender":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"ReplyTo":”[{ "EmailAddress": { "Name": "John Doe", "Address": "johnd@contoso.com" } }]“,"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":” [{"Id": "AAMkADFiNTAUhhYuYi0=","Name": "How to retrieve item attachment using Outlook REST API","ContentType": "application/octet-stream","Size": 71094,"IsInline": false,"LastModifiedDateTime": "2015-09-24T05:57:59Z","SourceUrl": "https://microsoft-my.sharepoint-df.com/personal/user_testtenant_com/Documents/MicrosoftTeamsChatFiles/sample.txt","ProviderType": "OneDriveBusiness","ThumbnailUrl": null,"PreviewUrl": null,"Permission": "Other","IsFolder": false}] ”,"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"Id":"AAMkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQBGAAAAAACejmzcrQ87T49gTcqNR-sbBwC6DHd_ZfCmSaMZ4xI8LKurAAAAAAEnAAC6DHd_ZfCmSaMZ4xI8LKurAACyuGM1AAA=","CreatedDateTime":"2021-12-08T23:10:15Z","LastModifiedDateTime":"2021-12-08T23:10:18Z","SentDateTime":"2021-12-08T23:10:13Z","Subject":null,"Importance":"Normal","ParentFolderId":"AAMkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQAuAAAAAACejmzcrQ87T49gTcqNR-sbAQC6DHd_ZfCmSaMZ4xI8LKurAAAAAAEnAAA=","ConversationId":"AAQkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQAQACMj_QPqgbEjpguMacnIAek=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>hello world! </body></html>"},"Sender":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"ReplyTo":[],"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":[],"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"Id":"AAMkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQBGAAAAAACejmzcrQ87T49gTcqNR-sbBwC6DHd_ZfCmSaMZ4xI8LKurAAAAAAEnAAC6DHd_ZfCmSaMZ4xI8LKurAACyuGM2AAA=","CreatedDateTime":"2021-12-08T23:10:24Z","LastModifiedDateTime":"2021-12-08T23:10:26Z","SentDateTime":"2021-12-08T23:10:23Z","Subject":null,"Importance":"Normal","ParentFolderId":"AAMkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQAuAAAAAACejmzcrQ87T49gTcqNR-sbAQC6DHd_ZfCmSaMZ4xI8LKurAAAAAAEnAAA=","ConversationId":"AAQkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQAQALylBcNpxHMOUKdBWwkBc7w=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>reply! </body></html>"},"Sender":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"ReplyTo":[],"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":[],"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"Id":"AAMkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQBGAAAAAACejmzcrQ87T49gTcqNR-sbBwC6DHd_ZfCmSaMZ4xI8LKurAAAAAAEnAAC6DHd_ZfCmSaMZ4xI8LKurAADKat9hAAA=","CreatedDateTime":"2022-01-13T22:42:17Z","LastModifiedDateTime":"2022-01-13T22:42:19Z","SentDateTime":"2022-01-13T22:42:16Z","Subject":null,"Importance":"Normal","ParentFolderId":"AAMkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQAuAAAAAACejmzcrQ87T49gTcqNR-sbAQC6DHd_ZfCmSaMZ4xI8LKurAAAAAAEnAAA=","ConversationId":"AAQkAGQxMmVkNDYzLTRjMDMtNDA0NC1iMjFlLTY5M2M4N2YwZDMwYQAQAGQ31J4B01UWurfrE6DK9XQ=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Channel 4 public start the message now! </body></html>"},"Sender":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"ReplyTo":[],"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":[],"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"943ecd15-a954-40a7-9d00-3224d21dc470","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"Id":"AQMkAGEzMjM0YmYyLTMxMQBjLTQ1YTQtOGU5ZS1mMTdmZDIwYWJlYTAARgAAA-vx_xQGnB5KgPCxGVeJKmQHAJ5OBo751eFEnUe1L9aVEAAAAwEhAAAAnk4GjvnV4USdR7Uv1pUQAAADKoMAAAA=","CreatedDateTime":"2022-01-13T22:48:24Z","LastModifiedDateTime":"2022-01-13T22:48:26Z","SentDateTime":"2022-01-13T22:48:23Z","Subject":null,"Importance":"Normal","ParentFolderId":"AQMkAGEzMjM0YmYyLTMxMQBjLTQ1YTQtOGU5ZS1mMTdmZDIwYWJlYTAALgAAA-vx_xQGnB5KgPCxGVeJKmQBAJ5OBo751eFEnUe1L9aVEAAAAwEhAAAA","ConversationId":"AAQkAGEzMjM0YmYyLTMxMWMtNDVhNC04ZTllLWYxN2ZkMjBhYmVhMAAQAEvWkXZjV9fThAZnRV2_Wd4=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>general conversation of a channel in a private team </body></html>"},"Sender":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"ReplyTo":[],"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":[],"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"28e5fb39-67da-4bcb-9bea-5c69d3a94ddd","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"Id":"AAMkAGRmNTMzMTg1LTczNmEtNDFkNS1hMjA2LWE0YjIzZDczNzA2OQBGAAAAAABRqNiCpEkjRq8n6de59U3_BwC1fHqitty9SYfBHWf3kCcIAAAAAAFfAAC1fHqitty9SYfBHWf3kCcIAAH0sXUeAAA=","CreatedDateTime":"2022-01-13T22:41:51Z","LastModifiedDateTime":"2022-01-13T22:41:54Z","SentDateTime":"2022-01-13T22:41:51Z","Subject":null,"Importance":"Normal","ParentFolderId":"AQMkAGRmNTMzADE4NS03MzZhLTQxZDUtYTIwNi1hNGIyM2Q3MzcwNjkALgAAA1Go2IKkSSNGryfp17n1Tf4BALV8eqK23L1Jh8EdZ-eQJwgAAAIBXwAAAA==","ConversationId":"AAQkAGRmNTMzMTg1LTczNmEtNDFkNS1hMjA2LWE0YjIzZDczNzA2OQAQAMQV_0nK1TkOltKz3DiiOFs=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>testing a messageee!! </body></html>"},"Sender":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"ReplyTo":[],"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":[],"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"e30567fc-fcbf-47fe-b73e-c15489ca65b7","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"Id":"AAMkAGRmNTMzMTg1LTczNmEtNDFkNS1hMjA2LWE0YjIzZDczNzA2OQBGAAAAAABRqNiCpEkjRq8n6de59U3_BwC1fHqitty9SYfBHWf3kCcIAAAAAAFfAAC1fHqitty9SYfBHWf3kCcIAAH0sXUfAAA=","CreatedDateTime":"2022-01-13T22:42:00Z","LastModifiedDateTime":"2022-01-13T22:42:02Z","SentDateTime":"2022-01-13T22:42:00Z","Subject":null,"Importance":"Normal","ParentFolderId":"AQMkAGRmNTMzADE4NS03MzZhLTQxZDUtYTIwNi1hNGIyM2Q3MzcwNjkALgAAA1Go2IKkSSNGryfp17n1Tf4BALV8eqK23L1Jh8EdZ-eQJwgAAAIBXwAAAA==","ConversationId":"AAQkAGRmNTMzMTg1LTczNmEtNDFkNS1hMjA2LWE0YjIzZDczNzA2OQAQAFykNe2o_RAe18ZpabhhW2w=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>And I'm also testing another one right now. Great </body></html>"},"Sender":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"FirstName LastName","Address":"contosouser21@contosotest21.onmicrosoft.com"}},"ReplyTo":[],"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":[],"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"e30567fc-fcbf-47fe-b73e-c15489ca65b7","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"Id":"AQMkADc3ADM1ZjYyZS03MTg2LTQ1MDItYmExZi02YzBkZmJkNDUyYmYARgAAA_sLIuoAbc9HvjdubatiY34HAIexfbpqcURIqQvicxUfVoUAAAIBIQAAAIexfbpqcURIqQvicxUfVoUAAAI8DQAAAA==","CreatedDateTime":"2023-05-04T12:20:38Z","LastModifiedDateTime":"2023-05-17T09:02:07Z","SentDateTime":"2023-05-04T12:20:37Z","Subject":null,"Importance":"Normal","ParentFolderId":"AQMkADc3ADM1ZjYyZS03MTg2LTQ1MDItYmExZi02YzBkZmJkNDUyYmYALgAAA_sLIuoAbc9HvjdubatiY34BAIexfbpqcURIqQvicxUfVoUAAAIBIQAAAA==","ConversationId":"AAQkADc3MzVmNjJlLTcxODYtNDUwMi1iYTFmLTZjMGRmYmQ0NTJiZgAQAGPwV03gQocdPC-r82vkb6c=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>Hello. This is a test message </body></html>"},"Sender":{"EmailAddress":{"Name":"FirstName LastName","Address":"eucliduser21@euclidtest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"FirstName LastName","Address":"eucliduser21@euclidtest21.onmicrosoft.com"}},"ReplyTo":[],"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":[],"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"afe7d584-21bf-4ba0-8c7f-b775777e8b05","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"Id":"AQMkADc3ADM1ZjYyZS03MTg2LTQ1MDItYmExZi02YzBkZmJkNDUyYmYARgAAA_sLIuoAbc9HvjdubatiY34HAIexfbpqcURIqQvicxUfVoUAAAIBIQAAAIexfbpqcURIqQvicxUfVoUAAAI8DgAAAA==","CreatedDateTime":"2023-05-04T12:20:47Z","LastModifiedDateTime":"2023-05-17T09:02:07Z","SentDateTime":"2023-05-04T12:20:46Z","Subject":null,"Importance":"Normal","ParentFolderId":"AQMkADc3ADM1ZjYyZS03MTg2LTQ1MDItYmExZi02YzBkZmJkNDUyYmYALgAAA_sLIuoAbc9HvjdubatiY34BAIexfbpqcURIqQvicxUfVoUAAAIBIQAAAA==","ConversationId":"AAQkADc3MzVmNjJlLTcxODYtNDUwMi1iYTFmLTZjMGRmYmQ0NTJiZgAQAGPwV03gQocdPC-r82vkb6c=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body>This is a test reply </body></html>"},"Sender":{"EmailAddress":{"Name":"FirstName LastName","Address":"eucliduser21@euclidtest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"FirstName LastName","Address":"eucliduser21@euclidtest21.onmicrosoft.com"}},”Mentions”:”[{"id": 1024, "mentionText": "test mention", "mentioned": {"@odata.type": "user"}] ”,"ReplyTo":[],"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":[],"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"afe7d584-21bf-4ba0-8c7f-b775777e8b05","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
{"Id":"AQMkADc3ADM1ZjYyZS03MTg2LTQ1MDItYmExZi02YzBkZmJkNDUyYmYARgAAA_sLIuoAbc9HvjdubatiY34HAIexfbpqcURIqQvicxUfVoUAAAIBIQAAAIexfbpqcURIqQvicxUfVoUAAAI8EAAAAA==","CreatedDateTime":"2023-05-04T12:26:01Z","LastModifiedDateTime":"2023-05-17T09:02:07Z","SentDateTime":"2023-05-04T12:26:00Z","Subject":null,"Importance":"Normal","ParentFolderId":"AQMkADc3ADM1ZjYyZS03MTg2LTQ1MDItYmExZi02YzBkZmJkNDUyYmYALgAAA_sLIuoAbc9HvjdubatiY34BAIexfbpqcURIqQvicxUfVoUAAAIBIQAAAA==","ConversationId":"AAQkADc3MzVmNjJlLTcxODYtNDUwMi1iYTFmLTZjMGRmYmQ0NTJiZgAQALwK-TnhodLTi17TbqMQoKI=","IsRead":false,"Body":{"ContentType":"Microsoft.OutlookServices.BodyType'HTML'","Content":"<html><head>\r\n<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\"></head><body><div><div>Hello <span itemscope=\"\" itemtype=\"http://schema.skype.com/Mention\" itemid=\"0\">FirstName</span>, <span itemscope=\"\" itemtype=\"http://schema.skype.com/Mention\" itemid=\"1\">Avery</span>&nbsp;, <span itemscope=\"\" itemtype=\"http://schema.skype.com/Mention\" itemid=\"2\">Test1 Test1</span></div><div>This is a test message tagging everyone.</div></div></body></html>"},"Sender":{"EmailAddress":{"Name":"TestUser IDC","Address":"testuseridc@euclidtest21.onmicrosoft.com"}},"From":{"EmailAddress":{"Name":"TestUser IDC","Address":"testuseridc@euclidtest21.onmicrosoft.com"}},"ReplyTo":[],"Flag":{"FlagStatus":"Microsoft.OutlookServices.FollowupFlagStatus'NotFlagged'"},"Attachments":[],"ODataType":"#Microsoft.OutlookServices.Message","pObjectId":"afe7d584-21bf-4ba0-8c7f-b775777e8b05","ptenant":"8e56195d-f07c-44f0-8108-40e4352e3e74"}
```
