---
title: "Use the Microsoft Graph API to get change notifications"
description: "The Microsoft Graph REST API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes. For more details, including how to subscribe to and handle incoming notifications, see Set up notifications for changes in user data."
localization_priority: Normal
author: "baywet"
doc_type: conceptualPageType
ms.prod: ""
---

# Use the Microsoft Graph API to get change notifications

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The Microsoft Graph REST API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes. For more details, including how to subscribe to and handle incoming notifications, see [Set up notifications for changes in user data](/graph/webhooks).

Using the Microsoft Graph API, an app can subscribe to changes on the following resources:

| **Resource** | **Supported resource paths** | **Resource data can be included in notifications**                  |
|:----------------|:------------|:-----------------------------------------|
| Outlook [message][] | `/users/{id}/messages`<br>`/users/{id}/mailFolders('inbox')/messages` | No |
| Outlook [event][] | `/users/{id}/events` | No |
| Outlook personal [contact][] | `/users/{id}/contacts` | No |
| [user][] | `/users` (changes to all users)<br>`/users/{id}` (changes to a specific user) | No |
| [group][] | `/groups` (changes to all groups)<br>`/groups/{id}` (changes to a specific group) | No |
| Office 365 group [conversation][] | `groups/{id}/conversations` | No |
| Content within the hierarchy of _any folder_ [driveItem][] on a user's personal OneDrive | `/me/drive/root` | No |
| Content within the hierarchy of the _root folder_ [driveItem][] on OneDrive for Business | **TBD** | No |
| Security [alert][] | `/security/alerts/{id}` (changes to a specific alert) <br> `/security/alerts/?$filter` (changes to filtered alerts)| No |
| Teams [chatmessage](/graph/api/resources/subscription?view=graph-rest-beta) | `/teams/allMessages` (messages in all channels in all teams)<br>`/teams/{id}/channels/{id}/messages` (messages in a specific channel)<br>`/chats/allMessages` (messages in all chats)<br>`/chats/{id}/messages` (messages in a specific chat) | Yes |

> **Note**: Any resource path that begins with `/users/{id}` can also accept `/me` to reference the signed-in user.

## Permissions

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription-post-subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type                        | Supported resource types                                                      |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated - work or school account     | [alert][], [contact][], [conversation][], [driveItem][], [event][], [group][], [message][], [user][]|
| Delegated - personal Microsoft account | [contact][], [driveItem][], [event][], [message][]                                        |
| Application                            | [alert][], [contact][], [driveItem][], [event][], [group][], [message][], [user][], [chatMessage][]|

## See also

- [Subscription resource type](subscription.md)
- [List subscriptions](../api/subscription-list.md)
- [Get subscription](../api/subscription-get.md)
- [Create subscription](../api/subscription-post-subscriptions.md)
- [Update subscription](../api/subscription-update.md)
- [Delete subscription](../api/subscription-delete.md)

[chatMessage]: ./chatmessage.md
[contact]: ./contact.md
[conversation]: ./conversation.md
[driveItem]: ./driveitem.md
[event]: ./event.md
[group]: ./group.md
[message]: ./message.md
[user]: ./user.md
[alert]: ./alert.md
