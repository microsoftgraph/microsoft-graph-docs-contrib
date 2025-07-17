---
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: ric.lewis
ms.subservice: change-notifications
ms.topic: include
ms.localizationpriority: high
ms.date: 11/07/2024
---

<!-- markdownlint-disable MD041-->

Currently, subscriptions are enabled for the following resources.

> **Note:** Subscriptions to resources marked with an asterisk (`*`) are only supported on the `/beta` endpoint.

- An [alert][] from the Microsoft Graph Security API.
- An [approvals][] request in Microsoft Teams.
- A [baseTask][] (deprecated) of a user in Microsoft To-Do.*
- A [callRecord][] produced after a call or meeting in Microsoft Teams.
- A [callRecording][] for an online meeting in Teams.
- A [callTranscript][] for an online meeting in Teams.
- A [channel][] in Microsoft Teams.
- A [chat][] in Microsoft Teams.
- A [chatMessage][] sent via teams or channels in Microsoft Teams.
- A [conversation][] in a Microsoft 365 group.
- A [conversationMember][conversationmember] in a team, channel, or chat in Microsoft Teams.
- Content in the hierarchy of a root folder [driveItem][] in OneDrive for Business or of a root folder or subfolder [driveItem][] in a user's personal OneDrive.
- A [group][] in Microsoft Entra ID.
- A [list][] under a SharePoint [site][].
- A [message][], [event][], or [contact][] in Outlook.
- An [online meeting][] in Microsoft Teams.*
- The [presence][] of a user in Microsoft Teams.
- A [team][team] in Microsoft Teams.
- A [printer][] (when a print job for the printer gets to JobFetchable state - ready to be fetched for printing) and a [printTaskDefinition][] in Universal Print. For more information, see [Subscribe to change notifications from cloud printing APIs](/graph/universal-print-webhook-notifications).
- A [todoTask][] of a user in Microsoft To-Do (webhooks are only available in the worldwide endpoint and no other national clouds).
- A [user][] in Microsoft Entra ID.

[channel]: /graph/api/resources/channel
[chat]: /graph/api/resources/chat
[contact]: /graph/api/resources/contact
[conversation]: /graph/api/resources/conversation
[conversationmember]: /graph/api/resources/conversationmember
[driveItem]: /graph/api/resources/driveitem
[list]: /graph/api/resources/list
[site]: /graph/api/resources/site
[event]: /graph/api/resources/event
[group]: /graph/api/resources/group
[message]: /graph/api/resources/message
[user]: /graph/api/resources/user
[alert]: /graph/api/resources/alert
[chatMessage]: /graph/api/resources/chatmessage
[callRecord]: /graph/api/resources/callrecords-callrecord
[presence]: /graph/api/resources/presence
[printer]: /graph/api/resources/printer
[printTaskDefinition]: /graph/api/resources/printtaskdefinition
[team]: /graph/api/resources/team
[todoTask]: /graph/api/resources/todotask
[online meeting]: /graph/api/resources/onlinemeeting
[baseTask]: /graph/api/resources/basetask
[callTranscript]: /graph/api/resources/calltranscript
[callRecording]: /graph/api/resources/callrecording
[approvals]: /graph/api/resources/approvalItem
