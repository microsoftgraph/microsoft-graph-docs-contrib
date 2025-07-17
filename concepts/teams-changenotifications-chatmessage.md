---
title: "Get change notifications for messages in Teams channels and chats using Microsoft Graph"
description: "Change notifications enable you to listen to changes to messages in channel or chat"
author: "RamjotSingh"
ms.localizationpriority: high
ms.subservice: "teams"
ms.custom: scenarios:getting-started
ms.date: 11/07/2024
---

# Get change notifications for messages in Teams channels and chats using Microsoft Graph

Change notifications enable you to subscribe to changes (create, update, and delete) to messages in a channel or chat. Change notifications provide a low latency model by allowing you to maintain a subscription. You can also get the resource data in the notifications and therefore avoid calling the API to get the payload.

Continue with this article about scenarios for the [chatMessage](/graph/api/resources/chatmessage) resource in the [channel](/graph/api/resources/channel) or [chat](/graph/api/resources/chat) context. Or, find out about [change notifications for other Microsoft Teams resources](teams-change-notification-in-microsoft-teams-overview.md).

> [!NOTE]
> If you request a subscription **expirationDateTime** that is more than 1 hour in the future, you must subscribe to lifecycle notifications by including a **lifecycleNotificationUrl** property in your subscription request. Otherwise your subscription request will fail with the following error message: *lifecycleNotificationUrl is a required property for subscription creation on this resource when the expirationDateTime value is set to greater than 1 hour*.

## Subscribe to changes at the tenant level

To track all changes related to messages in a tenant, you can use subscriptions at a tenant level for channel and chat messages, creating two subscriptions: one to track all messages across [channels](/graph/api/resources/channel?preserve-view=true), and one to track all messages across [chats](/graph/api/resources/chat?preserve-view=true).

### Subscribe to messages across all channels

To get change notifications for all messages and replies across channels in a tenant, subscribe to `/teams/getAllMessages`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

[!INCLUDE [teams-model-A-and-B-disclaimer](../includes/teams-model-A-and-B-disclaimer.md)]

#### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelMessage.Read.All |

#### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/getAllMessages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Subscribe to messages across all chats

To get change notifications for all messages across chats in a tenant, subscribe to `/chats/getAllMessages`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

[!INCLUDE [teams-model-A-and-B-disclaimer](../includes/teams-model-A-and-B-disclaimer.md)]

#### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Chat.Read.All |

#### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated,deleted",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats/getAllMessages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to messages in a channel

To track messages and replies in a channel, you can create a change notification subscription at a channel level by subscribing to `/teams/{team-id}/channels/{channel-id}/messages`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification in both *delegated* and *application-only mode*.

Channel-level subscriptions also support keyword-based search via the `$search` query parameter.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | ChannelMessage.Read.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelMessage.Read.Group*, ChannelMessage.Read.All  |

>**Note:** Permissions marked with * are supported as part of [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

### Example 1: Subscribe to all messages (and replies) in a channel

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}/channels/{channel-id}/messages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Example 2: Subscribe to messages (and replies) in a channel that contain certain text

The following request sends messages that contain `Hello` to the subscriber.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}/channels/{channel-id}/messages?$search=Hello",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Example 3: Subscribe to messages (and replies) in a channel without resource data

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}/channels/{channel-id}/messages",
  "includeResourceData": false,
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Example 4: Subscribe to messages (and replies) in a channel that mention a specific user

To get notifications only for messages where a specific user has been mentioned, you can specify the user's ID (`9a6eb4d1-826b-48b1-9627-b50836c8fee9` in this example) in the query.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{team-id}/channels/{channel-id}/messages?$filter=mentions/any(u: u/mentioned/user/id eq '9a6eb4d1-826b-48b1-9627-b50836c8fee9')",
  "includeResourceData": false,
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to messages in a chat

To track messages in a chat, you can create a change notification subscription at a chat level by subscribing to `/chats/{chat-id}/messages`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification in both *delegated* and  *application-only mode*.

Chat-level subscriptions also support keyword-based search via the `$search` query parameter.

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Chat.Read |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChatMessage.Read.Chat*, Chat.Read.All |

>**Note:** Permissions marked with * are supported as part of [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent) for the beta version only currently.

### Example 1: Subscribe to messages in a chat

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats/{chat-id}/messages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Example 2: Subscribe to messages in a chat that contain certain text

The following request sends messages that contain `Hello` to the subscriber.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats/{chat-id}/messages?$search=Hello",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Example 3: Subscribe to messages (and replies) in a chat without resource data

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats/{chat-id}/messages",
  "includeResourceData": false,
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

### Example 4: Subscribe to message in a chat in which a specific user is mentioned

To get notifications only for messages in which a specific user has been mentioned, you can specify the user's ID (`9a6eb4d1-826b-48b1-9627-b50836c8fee9` in this example) in the query.

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats/{chat-id}/messages?$filter=mentions/any(u: u/mentioned/user/id eq '9a6eb4d1-826b-48b1-9627-b50836c8fee9')",
  "includeResourceData": false,
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribe to changes at the user level

To track messages across all chats a particular user is part of, you can create a change notification subscription at a user level by subscribing to `/users/{user-id}/chats/getAllMessages`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification in both *delegated* and *application-only* modes.

User-level chat messaging subscriptions also support keyword-based search via the `$search` query parameter.

[!INCLUDE [teams-model-B-disclaimer](../includes/teams-model-B-disclaimer.md)]

### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Chat.Read, Chat.ReadWrite |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Chat.Read.All, Chat.ReadWrite.All |

### Example: Subscribe to messages across all chats a particular user is part of

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated,deleted",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/users/{user-id}/chats/getAllMessages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```
## Subscribe to messages of any chat in a tenant where a specific Teams app is installed

To get change notifications for all messages across chats in a tenant where a specific Teams app is installed, subscribe to `/appCatalogs/teamsApps/{teams-app-id}/installedToChats/getAllMessages`. This resource supports [including resource data](change-notifications-with-resource-data.md) in the notification.

[!INCLUDE [teams-model-B-disclaimer](../includes/teams-model-B-disclaimer.md)]

### Permissions

| Permission type                        | Permissions (from least to most privileged)             |
| :------------------------------------- | :------------------------------------------------------ |
| Delegated (work or school account)     | Not supported.                                          |
| Delegated (personal Microsoft account) | Not supported.                                          |
| Application                            | Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |

### Example

```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/appCatalogs/teamsApps/386bbcdb-1e1c-4f3f-b7d0-ad7b9ea6cf7c/installedToChats/getAllMessages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Notification payloads

Depending on your subscription, you can either get the notification with resource data, or without it. Subscribing with resource data allows you to get the message payload along with the notification, removing the need to call back and get the content.

### Notifications with resource data

For notifications with resource data, the payload looks like the following. This payload is for a message sent in a chat.

```json
{
    "value": [{
        "subscriptionId": "10493aa0-4d29-4df5-bc0c-ef742cc6cd7f",
        "changeType": "created",
        "clientState": "<<--SpecifiedClientState-->>",
        "subscriptionExpirationDateTime": "2021-02-02T10:30:34.9097561-08:00",
        "resource": "chats('19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5@unq.gbl.spaces')/messages('1612289765949')",
        "resourceData": {
            "id": "1612289765949",
            "@odata.type": "#Microsoft.Graph.chatMessage",
            "@odata.id": "chats('19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5@unq.gbl.spaces')/messages('1612289765949')"
        },
        "encryptedContent": {
            "data": "<<--EncryptedContent-->",
            "dataKey": "<<--EnryptedDataKeyUsedForEncryptingContent-->>",
            "encryptionCertificateId": "<<--IdOfTheCertificateUsedForEncryptingDataKey-->>",
            "encryptionCertificateThumbprint": "<<--ThumbprintOfTheCertificateUsedForEncryptingDataKey-->>"
        },
        "tenantId": "<<--TenantForWhichNotificationWasSent-->>"
    }],
    "validationTokens": ["<<--ValidationTokens-->>"]
}
```

For details about how to validate tokens and decrypt the payload, see [Set up change notifications that include resource data](change-notifications-with-resource-data.md).

The decrypted notification payload looks like the following. The payload conforms to the [chatMessage](/graph/api/resources/chatMessage?preserve-view=true) schema. The payload is similar to that returned by GET operations.

```json
{
  "id": "1612289992105",
  "replyToId": null,
  "etag": "1612289992105",
  "messageType": "message",
  "createdDateTime": "2021-02-02T18:19:52Z",
  "lastModifiedDateTime": "2021-02-02T18:19:52.105Z",
  "lastEditedDateTime": null,
  "deletedDateTime": null,
  "subject": null,
  "summary": null,
  "chatId": "19:8ea0e38b-efb3-4757-924a-5f94061cf8c2_97f62344-57dc-409c-88ad-c4af14158ff5@unq.gbl.spaces",
  "importance": "normal",
  "locale": "en-us",
  "webUrl": null,
  "from": {
    "application": null,
    "device": null,
    "user": {
      "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
      "displayName": "Ramjot Singh",
      "userIdentityType": "aadUser"
    },
    "conversation": null
  },
  "body": {
    "contentType": "text",
    "content": "test"
  },
  "channelIdentity": null,
  "attachments": [],
  "mentions": [],
  "policyViolation": null,
  "reactions": [],
  "replies": [],
  "hostedContents": []
}
```

### Notifications without resource data

Notifications without resource data give you enough information to make GET calls to get the message content. Subscriptions for notifications without resource data don't require an encryption certificate (because actual resource data isn't sent over).

The payload looks like the following. This payload is for a message sent in a channel.

```json
 {
  "subscriptionId": "9f9d1ed0-c9cc-42e7-8d80-a7fc4b0cda3c",
  "changeType": "created",
  "tenantId": "<<--TenantForWhichNotificationWasSent-->>",
  "clientState": "<<--SpecifiedClientState-->>",
  "subscriptionExpirationDateTime": "2021-02-02T11:26:41.0537895-08:00",
  "resource": "teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2')/messages('1612293113399')",
  "resourceData": {
    "id": "1612293113399",
    "@odata.type": "#Microsoft.Graph.chatMessage",
    "@odata.id": "teams('fbe2bf47-16c8-47cf-b4a5-4b9b187c508b')/channels('19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2')/messages('1612293113399')"
  }
}
```

The **resource** and **@odata.id** properties can be used to make calls to Microsoft Graph to get the payload for the message. GET calls always return the current state of the message. If the message is changed between when the notification is sent and when the message is retrieved, the operation returns the updated message.

## Related content
- [Microsoft Graph change notifications](change-notifications-overview.md)
- [Get change notifications for teams and channels using Microsoft Graph](teams-changenotifications-team-and-channel.md)
- [Get change notifications for membership changes in teams and channels using Microsoft Graph](teams-changenotifications-teammembership.md)
- [Get change notifications for chats using Microsoft Graph](teams-changenotifications-chat.md)
- [Get change notifications for chat membership using Microsoft Graph](teams-changenotifications-chatmembership.md)
- [Microsoft Teams API overview](teams-concept-overview.md)
