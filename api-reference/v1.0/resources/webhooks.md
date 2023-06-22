---
title: "Overview:  Microsoft Graph API change notifications"
description: "Deliver change notifications to clients."
ms.localizationpriority: high
author: "keylimesoda"
ms.prod: "change-notifications"
doc_type: conceptualPageType
ms.date: 09/10/2022
---

# Microsoft Graph API change notifications

Namespace: microsoft.graph

This document provides technical details for  the change notifications APIs in Microsoft Graph.  For details on getting started using these APIs, including how to subscribe to and handle incoming notifications, please start here: [Set up notifications for changes in user data](/graph/webhooks).

The Microsoft Graph REST API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes.

[!INCLUDE [change-notifications-supported-resources-expanded](../../../concepts/includes/change-notifications-supported-resources-expanded.md)]

> **Note**: Any resource path that begins with `/users/{id}` can also accept `/me` to reference the signed-in user.

## Permissions

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription-post-subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type                        | Supported resource types                                                      |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated - work or school account     | [alert][], [channel][], [contact][], [conversation][], [conversationMember][], [driveItem][], [event][], [group][], [list][], [message][], [team][], [todoTask][], [user][]|
| Delegated - personal Microsoft account | [contact][], [driveItem][], [event][], [list][], [message][], [todoTask][]                                        |
| Application                            | [alert][], [callRecord][], [channel][], [chatMessage][], [contact][], [conversationMember][], [driveItem][], [event][], [group][], [list][], [message][], [printer][], [printTaskDefinition][], [team][], [user][]|

## See also

- [subscription resource type](./subscription.md)
- [Training module: Use change notifications and track changes with Microsoft Graph](/training/modules/msgraph-changenotifications-trackchanges)
- [Lifecycle notifications](/graph/webhooks-lifecycle)
- [Change notification C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/csharp)
- [Change notification Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/nodejs)

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
[printer]: ./printer.md
[printTaskDefinition]: ./printtaskdefinition.md
[team]: ./team.md
[To Do task]: ./todotask.md
[todoTask]: ./todotask.md
