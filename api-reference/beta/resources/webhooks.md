---
title: "Use the Microsoft Graph API to get change notifications"
description: "Deliver change notifications to clients."
ms.localizationpriority: medium
author: "jumasure"
doc_type: conceptualPageType
ms.prod: "change-notifications"
ms.date: 10/04/2022
---

# Use the Microsoft Graph API to get change notifications

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

The Microsoft Graph REST API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes. For more details, including how to subscribe to and handle incoming notifications, see [Set up notifications for changes in user data](/graph/webhooks).

[!INCLUDE [change-notifications-supported-resources-expanded](../../../concepts/includes/change-notifications-supported-resources-expanded.md)]

> **Note**: Any resource path that begins with `/users/{id}` can also accept `/me` to reference the signed-in user.

## Permissions

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription-post-subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type                        | Supported resource types                                                      |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated - work or school account     | [alert][], [baseTask][] (deprecated), [channel][], [chat][], [contact][], [conversation][], [conversationMember][], [driveItem][], [list][], [event][], [group][], [message][], [user][], [presence][], [chatMessage][] (preview), [team][], [todoTask][] |
| Delegated - personal Microsoft account | [baseTask][] (deprecated), [contact][], [driveItem][], [list][], [event][], [message][], [todoTask][]                                   |
| Application                            | [alert][], [channel][], [chat][], [contact][], [driveItem][], [list][], [event][], [group][], [message][], [user][], [callRecord][], [chatMessage][], [conversationMember][], [onlinemeeting][], [printer][], [printTaskDefinition][], [team][] |

## See also

- [subscription resource type](subscription.md)
- [Training module: Use change notifications and track changes with Microsoft Graph](/training/modules/msgraph-changenotifications-trackchanges)
- [Lifecycle notifications](/graph/webhooks-lifecycle)
- [Change notifications C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/csharp)
- [Change notifications Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/nodejs)

<!-- Links -->
[chat]: ./chat.md
[chatMessage]: ./chatmessage.md
[contact]: ./contact.md
[conversation]: ./conversation.md
[conversationMember]: ./conversationmember.md
[channel]: ./channel.md
[driveItem]: ./driveitem.md
[list]: ./list.md
[site]: ./site.md
[event]: ./event.md
[group]: ./group.md
[message]: ./message.md
[user]: ./user.md
[callRecord]: ./callrecords-callrecord.md
[alert]: ./alert.md
[presence]: ./presence.md
[printer]: ./printer.md
[printTaskDefinition]: ./printtaskdefinition.md
[team]: ./team.md
[baseTask]: ./baseTask.md
[todoTask]: ./todotask.md
[To Do task]: ./todotask.md
[onlineMeeting]: ./onlinemeeting.md
