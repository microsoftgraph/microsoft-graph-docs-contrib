---
title: "How to write an interactive message app within your own application?"
description: "This article shows how you can embed the Microsoft Teams experience within your own application, so users do not need to constantly switch between your own application and the Microsoft Teams application. Instead, users can read and send Microsoft Teams messages directly within your own application."
author: "erichui-ms"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# How to write an interactive message app within your own application?

This article shows how you can embed the Microsoft Teams experience within your own application, so users do not need to constantly switch between your own application and the Microsoft Teams application. Instead, users can read and send Microsoft Teams messages directly within your own application.

To minimize costs for you and to increase response time for your application, you should avoid reading the same message multiple times. In this article, we will show how you can do a one-time retrieval for the existing messages, cache them, and then use change notifications to get only the subsequent messages.

## Overview

At a high level, the example consists of the following:

- Step 0: Design and setup the architecture
- Step 1: Create a new chat
- Step 2: Send a message in the chat
- Step 3: Retrieve messages
- Step 4: Cache messages
- Step 5: Subscribe to change notifications
- Step 6: Renew change notifications subscriptions
- Step 7: Receive and decrypt change notifications
- Step 8: Get and set viewpoints

## Step 0: Design and setup the architecture

The system diagram below shows the suggested high-level architecture. It has three components that should be added to your existing application system if not already:

1. There is a **server component** that is ready to make API requests (e.g., POST chats, POST messages, etc.) to and process API requests (e.g., change notifications) from Microsoft Teams APIs. To learn how to set it up, please visit the [Quick Start](https://developer.microsoft.com/graph/quick-start), [Tutorials](/graph/tutorials), and [Authentication and authorization basics](/graph/auth/auth-concepts) first.
2. There is a **cache** that is ready to cache messages. To minimize costs for you and to increase response time for your application, you should avoid reading the same message multiple times, by storing messages in this cache. You do not want to be surprised by the API consumption bill later, so make sure you do not skip building this cache. To learn how to set up a cache, please visit [Add caching to improve performance in Azure API Management](/azure/api-management/api-management-howto-cache).
3. There is a new **chat user interface (UI)** that can communicate with the server component to get user inputs and display messages. The server component would communicate to it when there is a new message. One way to implement the communication is using ASP.NET's [SignalR](/aspnet/signalr/overview/getting-started/introduction-to-signalr).

Please note that this is a service-to-service architecture, with Microsoft Teams APIs communicating with the server component, not directly with the UI. There are two benefits of having the server component in between in the backend. One benefit is that it can persist all historical messages in the cache in the backend, so your UI can be lightweight; caching all (not just the recent) messages on the UI layer may not be feasible when you have many messages. Another benefit is when Microsoft Teams APIs send the change notification (see Step 5 below), it requires an URL, and your UI, such as the users' mobile phone, may not have an URL. The server component, however, can have a webhook URL.

Once these system components are all set up, you can start using Microsoft Teams APIs as described in the following steps. ![Shape1](RackMultipart20221122-1-9yn0rr_html_79a0814b2b0f7524.gif)

## Step 1: Create a new chat

Before sending a new [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-1.0), a [chat](/graph/api/resources/chat) must first be created, by assigning [members](/graph/api/resources/conversationmember?view=graph-rest-1.0] to the new chat. Below is an example of a "oneOnOne" chat. More examples with a different chatType can be found at [Create Chat](/graph/api/chat-post].

Request:

POST /chats

{

"chatType": "oneOnOne",

"members": [

{

"[@odata.type](mailto:@odata.type)": "#microsoft.graph.aadUserConversationMember",

"roles": ["owner"],

"[user@odata.bind](mailto:user@odata.bind)": "[https://graph.microsoft.com/v1.0/users('jacob@contoso.com](mailto:https://graph.microsoft.com/v1.0/users(%E2%80%98jacob@contoso.com)')"

},

{

"[@odata.type](mailto:@odata.type)": "#microsoft.graph.aadUserConversationMember",

"roles": ["owner"],

"[user@odata.bind](mailto:user@odata.bind)": "[https://graph.microsoft.com/v1.0/users('alex@contoso.com](mailto:https://graph.microsoft.com/v1.0/users(%E2%80%98alex@contoso.com)')"

}

]

}

Response:

HTTP/1.1 201 Created

Content-Type: application/json

{

"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats/$entity",

"id": "19:82fe7758-5bb3-4f0d-a43f-e555fd399c6f\_8c0a1a67-50ce-4114-bb6c-da9c5dbcf6ca@unq.gbl.spaces",

"topic": null,

"createdDateTime": "2020-12-04T23:10:28.51Z",

"lastUpdatedDateTime": "2020-12-04T23:10:28.51Z",

"chatType": "oneOnOne"

}

## Step 2: Send a message in the chat

Members within the chat can then send messages to each other. Below is an example of a simple message. More advanced examples can be found at [Send chatMessage](/graph/api/chatmessage-post].

Request:

POST https://graph.microsoft.com/v1.0/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2/messages

Content-type: application/json

{

"body": {

"content": "Hello World"

}

}

Response:

HTTP/1.1 201 Created

Content-type: application/json

{

"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2')/messages/$entity",

"id": "1616990032035",

"replyToId": null,

"etag": "1616990032035",

"messageType": "message",

"createdDateTime": "2021-03-29T03:53:52.035Z",

"lastModifiedDateTime": "2021-03-29T03:53:52.035Z",

"lastEditedDateTime": null,

"deletedDateTime": null,

"subject": null,

"summary": null,

"chatId": null,

"importance": "normal",

"locale": "en-us",

"webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616990032035?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616990032035&parentMessageId=1616990032035",

"policyViolation": null,

"eventDetail": null,

"from": {

"application": null,

"device": null,

"user": {

"id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",

"displayName": "Robin Kline",

"userIdentityType": "aadUser"

}

},

"body": {

"contentType": "text",

"content": "Hello World"

},

"channelIdentity": {

"teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",

"channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"

},

"attachments": [],

"mentions": [],

"reactions": []

}

Members within the chat can also send **images** to each other. Below is an example. More advanced examples, including other media, such as file attachments and adaptive cards, can be found at [Send chatMessage](/graph/api/chatmessage-post].

Request:

POST https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages

Content-type: application/json

{

"body": {

"contentType": "html",

"content": "\<div\>\<div\>\n\<div\>\<span\>\<img height=\"297\" src=\"../hostedContents/1/$value\" width=\"297\" style=\"vertical-align:bottom; width:297px; height:297px\"\>\</span\>\n\n\</div\>\n\n\n\</div\>\n\</div\>"

},

"hostedContents":[

{

"@microsoft.graph.temporaryId": "1",

"contentBytes": "iVBORw0...AABJRU5ErkJggg==",

"contentType": "image/png"

}

]

}

Response:

HTTP/1.1 201 Created

Content-type: application/json

{

"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats('19%3A2da4c29f6d7041eca70b638b43d45437%40thread.v2')/messages/$entity",

"id": "1616991962672",

"replyToId": null,

"etag": "1616991962672",

"messageType": "message",

"createdDateTime": "2021-03-29T04:26:02.672Z",

"lastModifiedDateTime": "2021-03-29T04:26:02.672Z",

"lastEditedDateTime": null,

"deletedDateTime": null,

"subject": null,

"summary": null,

"chatId": "19:2da4c29f6d7041eca70b638b43d45437@thread.v2",

"importance": "normal",

"locale": "en-us",

"webUrl": null,

"channelIdentity": null,

"policyViolation": null,

"eventDetail": null,

"from": {

"application": null,

"device": null,

"user": {

"id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",

"displayName": "Robin Kline",

"userIdentityType": "aadUser"

}

},

"body": {

"contentType": "html",

"content": "\<div\>\<div\>\<div\>\<span\>\<img height=\"297\" src=\"https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1616991962672/hostedContents/aWQ9eF8wLXd1cy1kNy1kZTczYzM0YTYzZGVkYjViMDVlNjYyY2Y1NzQ5MGU5Yyx0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kNy1kZTczYzM0YTYzZGVkYjViMDVlNjYyY2Y1NzQ5MGU5Yy92aWV3cy9pbWdv/$value\" width=\"297\" style=\"vertical-align:bottom; width:297px; height:297px\"\>\</span\>\</div\>\</div\>\</div\>"

},

"attachments": [],

"mentions": [],

"reactions": []

}

## Step 3: Retrieve messages

Messages can be retrieved using the GET HTTP method on the [chatMessages](/graph/api/resources/chatmessage] resource.

To minimize costs for you and to increase response time for your application, you should avoid reading the same message multiple times. Thus, retrieving messages using the GET HTTP method described in this step should only be used initially as a one-time export or when you need to restore your system during rare occasions. Otherwise, you should rely on your cache (see Step 4 below) and change notifications (see Step 5 below).

Microsoft Graph offers several ways to retrieve chat messages:

- [per-chat](/graph/api/chat-list-messages?view=graph-rest-1.0&tabs=http]:
  - GET /chats/{chat-id}/messages
- [per-user, across all chats](/graph/api/chatmessage-get?view=graph-rest-1.0&tabs=http]:
  - GET /users/{user-id | user-principal-name}/chats/getAllMessages
- [per-user, for a given chat](/graph/api/chatmessage-get?view=graph-rest-1.0&tabs=http]:
  - GET /users/{user-id | user-principal-name}/chats/{chat-id}/messages

If you want to show all of a user's chats, per-user is the place to start. If you want to track only specific chats, per-chat may be a better option, but you would need to implement the **access control logic** yourself. That is, you would need to check whether the users are [members](/graph/api/chat-list-members?view=graph-rest-1.0&tabs=http] of the chats and let only members access the chats to which they belong.

Below is an example of **per-chat**. By default, the returned list of messages is sorted by lastModifiedDateTime. However, for this example, sorting by [createdDateTime](/graph/api/chat-list-messages?view=graph-rest-1.0&tabs=http#example-3-list-chat-messages-sorted-by-creation-date] is more appropriate. The sorting is specified in the orderBy query parameter in the request.

Request:

GET https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages?$top=2&$orderBy=createdDateTime desc

Response:

HTTP/1.1 200 OK

Content-type: application/json

{

"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats('19%3A2da4c29f6d7041eca70b638b43d45437%40thread.v2')/messages",

"@odata.count": 2,

"@odata.nextLink": "https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages?$top=2&$skiptoken=M2UyZDAwMDAwMDMxMzkzYTMyNjQ2MTM0NjMzMjM5NjYzNjY0MzczMDM0MzE2NTYzNjEzNzMwNjIzNjMzMzg2MjM0MzM2NDM0MzUzNDMzMzc0MDc0Njg3MjY1NjE2NDJlNzYzMjAxZThmYjY4M2Y3ODAxMDAwMDg4NjA5ODdhNzgwMTAwMDB8MTYxNjk2NDUwOTgzMg%3d%3d",

"value": [

{

"id": "1616964509832",

"replyToId": null,

"etag": "1616964509832",

"messageType": "message",

"createdDateTime": "2021-03-28T20:48:29.832Z",

"lastModifiedDateTime": "2021-03-28T20:48:29.832Z",

"lastEditedDateTime": null,

"deletedDateTime": null,

"subject": null,

"summary": null,

"chatId": "19:2da4c29f6d7041eca70b638b43d45437@thread.v2",

"importance": "normal",

"locale": "en-us",

"webUrl": null,

"channelIdentity": null,

"onBehalfOf": null,

"policyViolation": null,

"eventDetail": null,

"from": {

"application": null,

"device": null,

"user": {

"id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",

"displayName": "Robin Kline",

"userIdentityType": "aadUser"

}

},

"body": {

"contentType": "text",

"content": "Hello world"

},

"attachments": [],

"mentions": [],

"reactions": []

},

{

"id": "1615971548136",

"replyToId": null,

"etag": "1615971548136",

"messageType": "message",

"createdDateTime": "2021-03-17T08:59:08.136Z",

"lastModifiedDateTime": "2021-03-17T08:59:08.136Z",

"lastEditedDateTime": null,

"deletedDateTime": null,

"subject": null,

"summary": null,

"chatId": "19:2da4c29f6d7041eca70b638b43d45437@thread.v2",

"importance": "normal",

"locale": "en-us",

"webUrl": null,

"channelIdentity": null,

"onBehalfOf": null,

"policyViolation": null,

"eventDetail": null,

"from": {

"application": null,

"device": null,

"user": {

"id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",

"displayName": "Robin Kline",

"userIdentityType": "aadUser"

}

},

"body": {

"contentType": "html",

"content": "\<div\>\<div\>\<div\>\<span\>\<img height=\"63\" src=\"https://graph.microsoft.com/v1.0/chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/messages/1615971548136/hostedContents/aWQ9eF8wLXd1cy1kOS1lNTRmNjM1NWYxYmJkNGQ3ZTNmNGJhZmU4NTI5MTBmNix0eXBlPTEsdXJsPWh0dHBzOi8vdXMtYXBpLmFzbS5za3lwZS5jb20vdjEvb2JqZWN0cy8wLXd1cy1kOS1lNTRmNjM1NWYxYmJkNGQ3ZTNmNGJhZmU4NTI5MTBmNi92aWV3cy9pbWdv/$value\" width=\"67\" style=\"vertical-align:bottom; width:67px; height:63px\"\>\</span\>\</div\>\</div\>\</div\>"

},

"attachments": [],

"mentions": [],

"reactions": []

}

]

}

The " **contentType**" can be either "text" or "html", so make sure your application can display both accordingly.

To get **images** embedded in the chat message, you will make a second call to retrieve [chatMessageHostedContent](/graph/api/resources/chatmessagehostedcontent?view=graph-rest-1.0], as described on [Get chatMessageHostedContent - Microsoft Graph v1.0 | Microsoft Learn.](/graph/api/chatmessagehostedcontent-get?view=graph-rest-1.0&tabs=http)

If you are also running a **data loss prevention (DLP)** app, which monitors chats for messages that contain data that users are not supposed to send, you will use [chatMessage.policyViolation.dlpAction](/graph/api/resources/chatmessagepolicyviolation?view=graph-rest-1.0] to hide or flag the messages accordingly. The valid values are "None", "NotifySender", and "BlockAccess". "BlockAccessExternal" is not used today and is ignored by Microsoft Teams. Please refer to [chatMessagePolicyViolation resource type - Microsoft Graph v1.0 | Microsoft Learn](/graph/api/resources/chatmessagepolicyviolation?view=graph-rest-1.0) for the definition of these values.

Some messages are [**system messages**](/graph/system-messages]. For example, the following system message shows that there is a new member joining the chat.

{

"id": "1616883610266",

"replyToId": null,

"etag": "1616883610266",

"messageType": "systemEventMessage",

"createdDateTime": "2021-03-28T03:50:10.266Z",

"lastModifiedDateTime": "2021-03-28T03:50:10.266Z",

"lastEditedDateTime": null,

"deletedDateTime": null,

"subject": null,

"summary": null,

"chatId": null,

"importance": "normal",

"locale": "en-us",

"webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616883610266?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616883610266&parentMessageId=1616883610266",

"policyViolation": null,

"from": null,

"body": {

"contentType": "html",

"content": "\<systemEventMessage/\>"

},

"channelIdentity": {

"teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",

"channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"

},

"onBehalfOf": null,

"attachments": [],

"mentions": [],

"reactions": [],

"eventDetail": {

"@odata.type": "#microsoft.graph.membersAddedEventMessageDetail",

"visibleHistoryStartDateTime": "0001-01-01T00:00:00Z",

"members": [{

"id": "06a5b888-ad96-455e-88ef-c059ec4e4cf0",

"displayName": null,

"userIdentityType": "aadUser"

},

{

"id": "1fb8890f-423e-4154-8fbf-db6809bc8756",

"displayName": null,

"userIdentityType": "aadUser"

}

],

"initiator": {

"application": null,

"device": null,

"user": {

"id": "9ee3dc1b-6a70-4582-8bc5-5dd35336b6c3",

"displayName": null,

"userIdentityType": "aadUser"

}

}

}

}

Instead of getting all messages

## Step 4: Cache messages

Each message you get it through [getAllMessages] or [change notification](/graph/api/resources/changenotificationcollection?view=graph-rest-1.0] is subject to charge by Microsoft Graph, so you will want to avoid reading the same message multiple times. We recommend caching the messages on your server. To learn how to set up a cache, please visit [Add caching to improve performance in Azure API Management | Microsoft Learn](/azure/api-management/api-management-howto-cache).

## Step 5: Subscribe to change notifications

Microsoft Graph offers several kinds of change notifications for messages:

- per-chat:
  - "resource": "/chats/{id}/messages"
- per-user, across all chats:
  - "resource": "/users/{id}/chats/getAllMessages"
- per-tenant:
  - "resource": "/chats/getAllMessages?model=A"
- per-app:
  - "resource": "/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages"

If you want to show all of a user's chats, per-user is the place to start. If you want to track only specific chats, consider how many different chats you'll need to track. If you use per-chat change notifications, there's a [limit](/graph/webhooks#teams-resource-limitations] (e.g. 10,000) on the number of [subscriptions](/graph/api/resources/subscription?view=graph-rest-beta]. Instead, consider subscribing to per-app or per-tenant, which covers all the messages in the chats of your Microsoft Teams app or tenant. Furthermore, unless you are using per-user, the notes about access control logic described in [Step 3: Retrieve messages] above are applicable to the change notifications here as well.

Below is an example to get all messages **per-tenant**. More details can be found on [Create subscription]](/graph/api/subscription-post-subscriptions?view=graph-rest-beta&tabs=http). As mentioned at the bottom of [Create subscription]](/graph/api/subscription-post-subscriptions?view=graph-rest-beta&tabs=http), before trying the example below, the subscription notification endpoint (specified in the notificationUrl property) must be capable of responding to a validation request as described in [Set up notifications for changes in user data](/graph/webhooks#notification-endpoint-validation]. If validation fails, the request to create the subscription returns a 400 Bad Request error.

Request:

POST https://graph.microsoft.com/beta/subscriptions

Content-type: application/json

{

"changeType": "created",

"notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",

"resource": "chats/getAllMessages?model=A",

"expirationDateTime":"2016-11-20T18:23:45.9356913Z",

"clientState": "secretClientValue",

"latestSupportedTlsVersion": "v1\_2"

}

Response:

HTTP/1.1 201 Created

Content-type: application/json

{

"@odata.context": "https://graph.microsoft.com/beta/$metadata#subscriptions/$entity",

"id": "7f105c7d-2dc5-4530-97cd-4e7ae6534c07",

"resource": "me/mailFolders('Inbox')/messages",

"applicationId": "24d3b144-21ae-4080-943f-7067b395b913",

"changeType": "created",

"clientState": "secretClientValue",

"notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",

"expirationDateTime": "2016-11-20T18:23:45.9356913Z",

"creatorId": "8ee44408-0679-472c-bc2a-692812af3437",

"latestSupportedTlsVersion": "v1\_2",

"notificationContentType": "application/json"

}

When designing the user experience, please take into account that, for most messages, it takes up to 3 seconds (TODO: to be confirmed after getting access to Jarvis charts) for Microsoft Graph to detect a change and send its change notification.

## Step 6: Renew change notifications subscriptions

For security reasons, subscriptions for chatMessage expire in 60 minutes, as described on [subscription resource type - Microsoft Graph v1.0 | Microsoft Learn](/graph/api/resources/subscription?view=graph-rest-1.0#maximum-length-of-subscription-per-resource-type). We recommend renewing every 30 minutes to give some buffer. Currently, there are no lifecycle notifications for expiring subscriptions. Thus, please persist and keep track of the subscriptions and renew them before they expire, by updating their expirationDateTime, as described on [Update subscription - Microsoft Graph v1.0 | Microsoft Learn](/graph/api/subscription-update?view=graph-rest-1.0&tabs=http#example). Renewing thousands of subscriptions takes some time so that is another reason to avoid per-chat change notifications. Below is an example.

Request:

PATCH https://graph.microsoft.com/beta/subscriptions/{id}

Content-type: application/json

{

"expirationDateTime":"2016-11-22T18:23:45.9356913Z"

}

Response:

HTTP/1.1 200 OK

Content-type: application/json

{

"id":"7f105c7d-2dc5-4530-97cd-4e7ae6534c07",

"resource":"me/messages",

"applicationId": "24d3b144-21ae-4080-943f-7067b395b913",

"changeType":"created,updated",

"clientState":"secretClientValue",

"notificationUrl":"https://webhook.azurewebsites.net/api/send/myNotifyClient",

"lifecycleNotificationUrl":"https://webhook.azurewebsites.net/api/send/lifecycleNotifications",

"expirationDateTime":"2016-11-22T18:23:45.9356913Z",

"creatorId": "8ee44408-0679-472c-bc2a-692812af3437",

"latestSupportedTlsVersion": "v1\_2",

"encryptionCertificate": "",

"encryptionCertificateId": "",

"includeResourceData": false,

"notificationContentType": "application/json"

}

## Step 7: Receive and decrypt change notifications

Whenever there is a change to the subscribed resource, a [change notification](/graph/api/resources/changenotificationcollection?view=graph-rest-1.0] is sent to the notificationUrl (provided in the subscription creation above). For security reasons, the content is encrypted. You can decrypt the content by following the steps on [Update subscription - Microsoft Graph beta | Microsoft Learn.](/graph/api/subscription-update?view=graph-rest-beta&tabs=http)

Request (sent by Microsoft Graph):

POST https://{notificationUrl}

{

"validationTokens": [

"eyJ0eXAiOiJKV1QiL1dCI6I....."

],

"value": [

{

"resource":"teams('{id}')/channels(' {id} ')/messages('{id}')"

"encryptedContent": {

"data": "zotuEncwI9pBgKeF....",

"dataSignature": "E/GsVEUAza2/A+iO/vMME=….",

"dataKey": "lXMs2rLdpx/uCB4iZv2ahU23X/..."

}

}

]

}

Decrypted content:

{

"body": {

"contentType": "text",

"content": "Hello world!"

},

"id" : "...",

"createdDateTime": "2022-11-09T18:42:35.749Z",

"lastModifiedDateTime": "2022-11-09T23:47:07.47Z",

"lastEditedDateTime": "2022-11-09T23:47:07.333Z",

"deletedDateTime": null,

"from": {

"user": {

"id": "\<guid\>"

"displayName": "Megan Bowen",

"userIdentityType" : "aadUser"

}

}

}

Change notifications are sometimes delivered out of order, due to their asynchronous nature. If your application requires the resources to be sorted in a particular order, make sure you are sorting the decrypted content by the appropriate property. For example, if the messages should be displayed in chronological order in your chat application, you will sort the decrypted [chatMessage](/graph/api/resources/chatmessage?view=graph-rest-1.0] by createdDateTime.

When a chat message is edited, a change notification is sent for the edit, with an updated "lastEditedDateTime". Your chat application should display the edited message instead of the original message, if it is meant to display the latest version of messages.

The notes about contentType, images, data loss preventin (DLP), and system messages described in [Step 3: Retrieve messages] above are applicable to the decrypted messages here as well.

## Step 8: Get and set viewpoints

A [viewpoint](/graph/api/resources/chatviewpoint?view=graph-rest-1.0) in a chat marks the timestamp at which the chat was last read by the users, so users can easily tell that any messages under the viewpoint are unread.

To get the viewpoint of a chat, use the GET HTTP method on the [chats](/graph/api/chat-get?view=graph-rest-1.0&tabs=http#code-try-1] resource. Here is an example.

Request:

GET https://graph.microsoft.com/v1.0/chats/19:b8577894a63548969c5c92bb9c80c5e1@thread.v2

Response:

HTTP/1.1 200 OK

Content-type: application/json

{

"@odata.context": "https://graph.microsoft.com/v1.0/$metadata#chats/$entity",

"id": "19:b8577894a63548969c5c92bb9c80c5e1@thread.v2",

"topic": "test group 1",

"createdDateTime": "2021-04-06T19:49:52.431Z",

"lastUpdatedDateTime": "2021-04-06T19:54:04.306Z",

"chatType": "group",

"webUrl": "https://teams.microsoft.com/l/chat/19%3Ab8577894a63548969c5c92bb9c80c5e1@thread.v2/0?tenantId=b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",

"tenantId": "b33cbe9f-8ebe-4f2a-912b-7e2a427f477f",

"onlineMeetingInfo": null,

"viewpoint": {

"isHidden": true,

"lastMessageReadDateTime": "2021-05-06T23:55:07.191Z"

}

}

To update the viewpoint of a chat, use the PATCH HTTP method on the viewpoint resource. Here is an example.

Request:

PATCH /chats/19:2da4c29f6d7041eca70b638b43d45437@thread.v2/viewpoint

{

"viewpoint": {

"lastMessageReadDateTime" : "2022-03-28T20:10:28.131Z"

}

}

## Tips and additional information

You can also add more advanced features in your chat application by:

- [Adding reactions to chat messages](/graph/api/chatmessage-setreaction?view=graph-rest-beta], such as thumbs up and smileys.
- [Adding images, attachments, HTML styling, adaptive cards to chat messages](/graph/api/chatmessage-post?view=graph-rest-1.0&tabs=http#examples], so messages can contact rich contents.
- [Adding mentions to chat messages](/graph/api/resources/chatmessagemention?view=graph-rest-1.0], so specific users can be tagged with "@".
- [Enabling resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent], so users have access to only chats that are meant for them.
- [Hiding a chat from](/graph/api/chat-hideforuser?view=graph-rest-beta&tabs=http)users] to declutter the chat list.
- [Removing a member from a](/graph/api/chat-delete-members?view=graph-rest-1.0&tabs=http)chat] when it is no longer needed to them.
- [Installing an app within chat](/graph/api/chat-post-installedapps?view=graph-rest-1.0&tabs=http], so users can use the app within the chat
- [Pinning a tab in the chat](/graph/api/chat-post-tabs?view=graph-rest-1.0&tabs=http], so users can switch to the app easily

## Related articles

- [Bring Microsoft Teams (Chats & Channel) collaboration to your Apps by leveraging Microsoft Graph](https://mybuild.microsoft.com/sessions/b7c008ab-69eb-40d5-a170-5dd9db57f022)
