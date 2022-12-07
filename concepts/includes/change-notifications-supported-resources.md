---
author: jumasure
ms.topic: include
ms.date: 12/07/2022
ms.localizationpriority: medium
---

<!-- markdownlint-disable MD041-->

Currently, subscriptions are enabled for the following resources.

> **Note** Subscriptions marked with an asterisk (*) are supported in the `/beta` endpoint only.

- An [alert][] from the Microsoft Graph Security API.
- A [baseTask][] (deprecated) of a user in Microsoft To-Do.*
- A [callRecord][] produced after a call or meeting in Microsoft Teams.
- A [channel][] in Microsoft Teams.
- A [chat][] in Microsoft Teams.
- A [chatMessage][] sent via teams or channels in Microsoft Teams.
- A [conversation][] in a Microsoft 365 group.
- A [conversationMember](./conversationmember.md) in a team, channel, or chat in Microsoft Teams.
- Content in the hierarchy of a root folder [driveItem][] in OneDrive for Business, or of a root folder or subfolder [driveItem][] in a user's personal OneDrive.
- A [group][] in Azure Active Directory.
- A [list][] under a SharePoint [site][].
- A [message][], [event][], or [contact][] in Outlook.
- An [online meeting][] in Microsoft Teams.*
- The [presence][] of a user in Microsoft Teams.
- A [team](./team.md) in Microsoft Teams.
- A [printer][] (when a print job for the printer gets to JobFetchable state - ready to be fetched for printing) and a [printTaskDefinition][] in Universal Print. For more information, see [Subscribe to change notifications from cloud printing APIs](/graph/universal-print-webhook-notifications).
- A [todoTask][] of a user in Microsoft To Do.
- A [user][] in Azure Active Directory.

[channel]: ./channel.md
[chat]: ./chat.md
[contact]: ./contact.md
[conversation]: ./conversation.md
[driveItem]: ./driveitem.md
[list]: ./list.md
[site]: ./site.md
[event]: ./event.md
[group]: ./group.md
[message]: ./message.md
[user]: ./user.md
[alert]: ./alert.md
[chatMessage]: ./chatmessage.md
[callRecord]: ./callrecords-callrecord.md
[presence]: ./presence.md
[printer]: ./printer.md
[printTaskDefinition]: ./printtaskdefinition.md
[team]: ./team.md
[todoTask]: ./todotask.md
[online meeting]: ./onlinemeeting.md
[baseTask]: ./basetask.md
