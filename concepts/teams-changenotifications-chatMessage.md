---
title: "Get notifications for messages in a channel or chat"
description: "Change notifications enables you to listen to changes to messages in channel or chat"
author: "RamjotSingh"
localization_priority: Priority
ms.custom: graphiamtop20
---

# Get notifications for messages in Microsoft Teams channels and chats

Change notifications enables you to listen to changes (creation, update and deletion) to [messages](/graph/api/resources/chatMessage?view=graph-rest-1.0&preserve-view=true) in [channel](/graph/api/resources/channel?view=graph-rest-1.0&preserve-view=true) or [chat](/graph/api/resources/chat?view=graph-rest-1.0&preserve-view=true).

Change notifications enables you to listen to messages in a low latency model by maintaining a [subscription](/graph/api/resources/webhooks?view=graph-rest-1.0&preserve-view=true). You can additionally get the resource data in the notifications and thus avoiding the need to call into API to get the payload.

*The maximum time a subscription can last is 60 minutes, however subscriptions can be renewed till the caller has permissions to access to resource.*

## Subscribing to changes at tenant level

To track all changes related to messages at tenant level you can use subscriptions at tenant level for channel and chat messages. This requires creation of 2 subscriptions, one to track all messages across [channels](/graph/api/resources/channel?view=graph-rest-1.0) and other to track all messages across [chats](/graph/api/resources/chat?view=graph-rest-1.0&preserve-view=true).

### Subscribing to messages across channels

Changes notifications for all messages and replies across channels can be subscribed to by subscribing to `/teams/getAllMessages`. This resource supports [include resource data](webhooks-with-resource-data.md) to allow receiving resource data in the notification.

#### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelMessage.Read.All |

#### Examples

```http
POST https://graph.microsoft.com/beta/subscriptions
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

### Subscribing to messages across chats

Changes notifications for all messages across chats can be subscribed to by subscribing to `/chats/getAllMessages`. This resource supports [include resource data](webhooks-with-resource-data.md) to allow receiving resource data in the notification.

#### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported. |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Chat.Read.All |

#### Examples

```http
POST https://graph.microsoft.com/beta/subscriptions
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

## Subscribing to messages in a channel

To track messages and replies at a channel level, you can create change notification subscription at a channel level. This can be done by subsricing to `/teams{id}/channels/{id}/messages` resource. This resource supports [include resource data](webhooks-with-resource-data.md) in *application-only mode* to allow receiving resource data in the notification.

Additionally, channel-level subscription supports keyword based search using **$search**.

#### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | ChannelMessage.Read.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelMessage.Read.All |

#### Examples

#### Example 1 : Subscribing to all messages (and replies) in a channel

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{id}/channels/{id}/messages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

#### Example 2 : Subscribing to messages (and replies) in a channel where message contains certain text

In the request below, only messages which contain `Hello` will be sent to subscriber.

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{id}/channels/{id}/messages?$search=Hello",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

#### Example 3 : Subscribing to messages (and replies) in a channel without resource data

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/teams/{id}/channels/{id}/messages",
  "includeResourceData": false,
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## Subscribing to messages in a chat

To track messages at a chat level, you can create change notification subscription at a chat level. This can be done by subsricing to `/chats{id}/messages` resource. This resource supports [include resource data](webhooks-with-resource-data.md) in *application-only mode* to allow receiving resource data in the notification.

Additionally, chat-level subscription supports keyword based search using **$search**.

#### Permissions

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Chat.Read |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Chat.Read.All |

#### Examples

##### Example 1: Subscribing to messages in a chat

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats/{id}/messages",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

##### Example 2: Subscribing to messages in a chat where message contains certain text

In the request below, only messages which contain `Hello` will be sent to subscriber.

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats/{id}/messages?$search=Hello",
  "includeResourceData": true,
  "encryptionCertificate": "{base64encodedCertificate}",
  "encryptionCertificateId": "{customId}",
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

#### Example 3 : Subscribing to messages (and replies) in a chat without resource data

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "resource": "/chats/{id}/messages",
  "includeResourceData": false,
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "{secretClientState}"
}
```

## See also
[Microsoft Graph Change Notifications](webhooks.md) overview.
[Microsoft Teams API overview](teams-concept-overview.md)