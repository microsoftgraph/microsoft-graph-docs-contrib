---
title: "Use the Microsoft Graph API to get change notifications"
description: "Deliver change notifications to clients."
ms.localizationpriority: medium
author: "keylimesoda"
doc_type: conceptualPageType
ms.subservice: change-notifications
ms.date: 06/07/2024
---

# Use the Microsoft Graph API to get change notifications

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

The Microsoft Graph REST API can deliver change notifications to clients through various endpoints, including webhooks, Event Hubs, and Event Grid. To learn how to subscribe and receive notifications for your application, see [Set up notifications for changes in user data](/graph/change-notifications-overview).

[!INCLUDE [change-notifications-supported-resources-expanded](../../../concepts/includes/change-notifications-supported-resources-expanded.md)]

> **Note**: Any resource path that begins with `/users/{id}` can also accept `/me` to reference the signed-in user.

## Permissions

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription-post-subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type                        | Supported resource types                                                      |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated - work or school account     | [aiInteraction][], [alert][], [callRecording][], [callTranscript][], [channel][], [chat][], [chatMessage][] (preview), [contact][], [conversation][], [conversationMember][], [driveItem][], [event][], [group][], [list][], [message][], [offerShiftRequest][], [openShiftChangeRequest][], [presence][], [shift][], [swapShiftsChangeRequest][], [team][], [timeOffRequest][], [todoTask][], [user][], [baseTask][] (deprecated) |
| Delegated - personal Microsoft account | [contact][], [driveItem][], [event][], [list][], [message][], [todoTask][], [baseTask][] (deprecated) |
| Application                            | [aiInteraction][], [alert][], [callRecord][], [approvals][], [callRecording][], [callTranscript][], [channel][], [chat][], [chatMessage][], [contact][],  [conversationMember][], [driveItem][], [event][], [group][], [list][], [message][], [offerShiftRequest][], [onlineMeeting][], [openShiftChangeRequest][], [printer][], [printTaskDefinition][], [shift][], [swapShiftsChangeRequest][], [team][], [timeOffRequest][], [user][] |


## Related content

- [subscription resource type](subscription.md)
- [Training module: Use change notifications and track changes with Microsoft Graph](/training/modules/msgraph-changenotifications-trackchanges)
- [Lifecycle notifications](/graph/change-notifications-lifecycle-events)
- [Change notifications C# sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/csharp)
- [Change notifications Node.js sample](https://github.com/OfficeDev/Microsoft-Teams-Samples/blob/main/samples/graph-change-notification/nodejs)

<!-- Links -->
[aiInteraction]: /microsoft-365-copilot/extensibility/api/ai-services/interaction-export/resources/aiinteraction
[chat]: ./chat.md
[chatMessage]: ./chatmessage.md
[contact]: ./contact.md
[conversation]: ./conversation.md
[conversationMember]: ./conversationmember.md
[channel]: ./channel.md
[driveItem]: ./driveitem.md
[list]: ./list.md
[event]: ./event.md
[group]: ./group.md
[message]: ./message.md
[user]: ./user.md
[callRecord]: ./callrecords-callrecord.md
[alert]: ./alert.md
[offerShiftRequest]: ./offershiftrequest.md
[openShiftChangeRequest]: ./openshiftchangerequest.md
[presence]: ./presence.md
[printer]: ./printer.md
[printTaskDefinition]: ./printtaskdefinition.md
[shift]: ./shift.md
[swapShiftsChangeRequest]: ./swapshiftschangerequest.md
[team]: ./team.md
[timeOffRequest]: ./timeoffrequest.md
[baseTask]: ./baseTask.md
[todoTask]: ./todotask.md
[onlineMeeting]: ./onlinemeeting.md
[callTranscript]: ./calltranscript.md
[callRecording]: ./callrecording.md
[approvals]: ./approvalitem.md
