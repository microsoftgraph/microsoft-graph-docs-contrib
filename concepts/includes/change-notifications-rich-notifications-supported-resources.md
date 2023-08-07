---
author: FaithOmbongi
ms.reviewer: ric.lewis
ms.prod: "change-notifications"
ms.topic: include
ms.localizationpriority: high
---

<!-- markdownlint-disable MD041-->

Rich notifications are available for the following resources.

> [!NOTE]
> Rich notifications for subscriptions to endpoints marked with an asterisk (*) are available on the `/beta` endpoint only.

| Resource | Supported resource paths | Limitations |
|--|--|--|
| Outlook [event][] * | Changes to all events in a user's mailbox: `/users/{id}/events` * | Requires `$select` to return only a subset of properties in the rich notification. For more information, see [Change notifications for Outlook resources](/graph/outlook-change-notifications-overview). |
| Outlook [message][] * | Changes to all messages in a user's mailbox: `/users/{id}/messages` *<br/><br/>Changes to messages in a user's inbox: `/users/{id}/mailFolders/{id}/messages` * | Requires `$select` to return only a subset of properties in the rich notification. For more information, see [Change notifications for Outlook resources](/graph/outlook-change-notifications-overview). |
| Outlook personal [contact][] * | Changes to all personal contacts in a user's mailbox: `/users/{id}/contacts` *<br/><br/>Changes to all personal contacts in a user's contactFolder: `/users/{id}/contactFolders/{id}/contacts` * | Requires `$select` to return only a subset of properties in the rich notification. For more information, see [Change notifications for Outlook resources](/graph/outlook-change-notifications-overview). |
| Teams [callTranscript][] <sup>*<sup> | Any transcript becomes available in the tenant: `communications/onlineMeetings/getAllTranscripts` <br><br> Any transcript becomes available for a specific meeting: `communications/onlineMeetings/{onlineMeetingId}/transcripts` | Maximum subscription quotas: <li> Per app and online-meeting combination: 1 <li> Per organization: 10,000 total subscriptions. |
| Teams [channel][] | Changes to channels in all teams: `/teams/getAllChannels`<br/><br/>Changes to channel in a specific team: `/teams/{id}/channels` | - |
| Teams [chat][] | Changes to any chat in the tenant: `/chats`<br/><br/>Changes to a specific chat: `/chats/{id}` | - |
| Teams [chatMessage][] | Changes to chat messages in all channels in all teams: `/teams/getAllMessages`<br/><br/>Changes to chat messages in a specific channel: `/teams/{id}/channels/{id}/messages`<br/><br/>Changes to chat messages in all chats: `/chats/getAllMessages`<br/><br/>Changes to chat messages in a specific chat: `/chats/{id}/messages`<br/><br/>Changes to chat messages in all chats a particular user is part of: `/users/{id}/chats/getAllMessages` | Does not support using `$select` to return only selected properties. The rich notification consists of all the properties of the changed instance. |
| Teams [channel][] | Changes to channels in all teams: `/teams/getAllChannels`<br/><br/>Changes to channel in a specific team: `/teams/{id}/channels` | - |
| Teams [conversationMember][] | Changes to membership in a specific team: `/teams/{id}/members`<br/><br/><!-- Changes to membership in all channels under a specific team:  `/teams/{id}/channels/getAllMembers` --><br/><br/>Changes to membership in a specific chat: `/chats/{id}/members`<!-- <br/><br/>Changes to membership for all Teams chats: `/chats/getAllMembers`<br/><br/>Changes to membership for all channels across the entire tenant: `/teams/getAllChannels/getAllMembers` * --> | - |
| Teams [onlineMeeting][] * | Changes to an online meeting: `/communications/onlineMeetings/?$filter=JoinWebUrl eq '{joinWebUrl}` * | Does not support using `$select` to return only selected properties. The rich notification consists of all the properties of the changed instance. |
| Teams [presence][] | Changes to a single user's presence: `/communications/presences/{id}` | Does not support using `$select` to return only selected properties. The rich notification consists of all the properties of the changed instance. |
| Teams [team][] | Changes to any team in the tenant: `/teams`<br/><br/>Changes to a specific team: `/teams/{id}` | - |

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
[onlineMeeting]: /graph/api/resources/onlinemeeting
[baseTask]: /graph/api/resources/basetask
[callTranscript]: /graph/api/resources/calltranscript
