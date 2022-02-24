---
title: "Exchange Web Services API mapping to Microsoft Graph"
description: "Describes equivalent Microsoft Graph APIs for Exchange Web Services APIs."
author: "jasonjoh"
ms.localizationpriority: medium
ms.prod: "Exchange"
---

# Exchange Web Services API mapping to Microsoft Graph

## Utility APIs

| EWS API                                                                                             | Microsoft Graph API |
|-----------------------------------------------------------------------------------------------------|-----|
| [ConvertId](/exchange/client-developer/web-service-reference/convertid-operation)                   | [translate Exchange Ids](/graph/api/user-translateexchangeids) |
| [ResolveNames](/exchange/client-developer/web-service-reference/resolvenames-operation)             | [List people](/graph/api/user-list-people) |
| [GetServerTimeZones](/exchange/client-developer/web-service-reference/getservertimezones-operation) | [Get time zone choices](/graph/api/outlookuser-supportedtimezones) |

## Mail APIs

### Messages

| EWS API                                                                             | Microsoft Graph API |
|-------------------------------------------------------------------------------------|-----|
| [CreateItem](/exchange/client-developer/web-service-reference/createitem-operation) | [Create message](/graph/api/user-post-messages) |
| [CopyItem](/exchange/client-developer/web-service-reference/copyitem-operation)     | [Copy message](/graph/api/message-copy) |
| [DeleteItem](/exchange/client-developer/web-service-reference/deleteitem-operation) | [Delete message](/graph/api/message-delete) |
| [FindItem](/exchange/client-developer/web-service-reference/finditem-operation)     | [List messages](/graph/api/user-list-messages) |
| [GetItem](/exchange/client-developer/web-service-reference/getitem-operation)       | [Get message](/graph/api/message-get) |
| [MoveItem](/exchange/client-developer/web-service-reference/moveitem-operation)     | [Move message](/graph/api/message-move) |
| [SendItem](/exchange/client-developer/web-service-reference/senditem-operation)     | [Send message](/graph/api/message-send) or [Send mail](/graph/api/user-sendmail) |
| [UpdateItem](/exchange/client-developer/web-service-reference/updateitem-operation) | [Update message](/graph/api/message-update) |

### Folders

| EWS API                                                                                 | Microsoft Graph API |
|-----------------------------------------------------------------------------------------|-----|
| [CreateFolder](/exchange/client-developer/web-service-reference/createfolder-operation) | [Create mail folder](/graph/api/user-post-mailfolders) |
| [CopyFolder](/exchange/client-developer/web-service-reference/copyfolder-operation)     | [Copy mail folder](/graph/api/mailfolder-copy) |
| [DeleteFolder](/exchange/client-developer/web-service-reference/deletefolder-operation) | [Delete mail folder](/graph/api/mailfolder-delete) |
| [GetFolder](/exchange/client-developer/web-service-reference/getfolder-operation)       | [Get mail folder](/graph/api/mailfolder-get) |
| [MoveFolder](/exchange/client-developer/web-service-reference/movefolder-operation)     | [Move mail folder](/graph/api/mailfolder-move) |
| [UpdateFolder](/exchange/client-developer/web-service-reference/updatefolder-operation) | [Update mail folder](/graph/api/mailfolder-update) |

### Attachments

| EWS API                                                                                         | Microsoft Graph API |
|-------------------------------------------------------------------------------------------------|-----|
| [CreateAttachment](/exchange/client-developer/web-service-reference/createattachment-operation) | [Add attachment](/graph/api/message-post-attachments) |
| [GetAttachment](/exchange/client-developer/web-service-reference/getattachment-operation)       | [Get attachment](/graph/api/attachment-get) |
| [DeleteAttachment](/exchange/client-developer/web-service-reference/deleteattachment-operation) | [Delete attachment](/graph/api/attachment-delete) |

### Rules

<!-- markdownlint-disable MD033 -->
| EWS API                                                                                         | Microsoft Graph API |
|-------------------------------------------------------------------------------------------------|-----|
| [GetInboxRules](/exchange/client-developer/web-service-reference/getinboxrules-operation)       | [List rules](/graph/api/mailfolder-list-messagerules) |
| [UpdateInboxRules](/exchange/client-developer/web-service-reference/updateinboxrules-operation) | [Create rule](/graph/api/mailfolder-post-messagerules)<br/>[Update rule](/graph/api/messagerule-update)<br/>[Delete rule](/graph/api/messagerule-delete) |
<!-- markdownlint-enable MD033 -->

### MailTips

| EWS API                                                                               | Microsoft Graph API |
|---------------------------------------------------------------------------------------|-----|
| [GetMailTips](/exchange/client-developer/web-service-reference/getmailtips-operation) | [Get MailTips](/graph/api/user-getmailtips) |

### Out of Office (OOF) settings

| EWS API                                                                                             | Microsoft Graph API |
|-----------------------------------------------------------------------------------------------------|-----|
| [GetUserOofSettings](/exchange/client-developer/web-service-reference/getuseroofsettings-operation) | [Get mailbox settings](/graph/api/user-get-mailboxsettings) |
| [SetUserOofSettings](/exchange/client-developer/web-service-reference/setuseroofsettings-operation) | [Update mailbox settings](/graph/api/user-update-mailboxsettings) |

### Notifications

> [!NOTE]
> Microsoft Graph only requires a subscription for push notifications. If you are currently using [EWS pull notifications](/exchange/client-developer/exchange-web-services/how-to-pull-notifications-about-mailbox-events-by-using-ews-in-exchange), see [Get messages delta](/graph/api/message-delta).

| EWS API                                                                                                    | Microsoft Graph API |
|------------------------------------------------------------------------------------------------------------|-----|
| [GetEvents](/exchange/client-developer/web-service-reference/getevents-operation)                          | [Get messages delta](/graph/api/message-delta) |
| [Subscribe](/exchange/client-developer/web-service-reference/subscribe-operation) (Push notifications)     | [Create subscription](/graph/api/subscription-post-subscriptions) |
| [Unsubscribe](/exchange/client-developer/web-service-reference/unsubscribe-operation) (Push notifications) | [Delete subscription](/graph/api/subscription-delete) |

### Synchronization

| EWS API                                                                                               | Microsoft Graph API |
|-------------------------------------------------------------------------------------------------------|-----|
| [SyncFolderHierarchy](/exchange/client-developer/web-service-reference/syncfolderhierarchy-operation) | [Get mail folder delta](/graph/api/mailfolder-delta) |
| [SyncFolderItems](/exchange/client-developer/web-service-reference/syncfolderitems-operation)         | [Get messages delta](/graph/api/message-delta) |

## Calendar APIs

### Availability

| EWS API                                                                                               | Microsoft Graph API |
|-------------------------------------------------------------------------------------------------------|-----|
| [GetUserAvailability](/exchange/client-developer/web-service-reference/getuseravailability-operation) | [Get free/busy schedule](/graph/api/calendar-getschedule) |

### Reminders

<!-- markdownlint-disable MD033 -->
| EWS API                                                                                                   | Microsoft Graph API |
|-----------------------------------------------------------------------------------------------------------|-----|
| [GetReminders](/exchange/client-developer/web-service-reference/getreminders-operation)                   | [Reminder view](/graph/api/user-reminderview) |
| [PerformReminderAction](/exchange/client-developer/web-service-reference/performreminderaction-operation) | [Dismiss reminder](/graph/api/event-dismissreminder)<br/>[Snooze reminder](/graph/api/event-snoozereminder) |
<!-- markdownlint-enable MD033 -->
