---
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: ric.lewis
ms.prod: "change-notifications"
ms.topic: include
ms.localizationpriority: high
---

<!-- markdownlint-disable MD041-->

Rich notifications are available for the following resources.

> [!NOTE]
> Rich notifications for subscriptions to endpoints marked with an asterisk (*) are only available on the `/beta` endpoint.

| Resource | Supported resource paths | Limitations |
|--|--|--|
| Outlook [event][] | Changes to all events in a user's mailbox: `/users/{id}/events` | Requires `$select` to return only a subset of properties in the rich notification. For more information, see [Change notifications for Outlook resources](/graph/outlook-change-notifications-overview). |
| Outlook [message][] | Changes to all messages in a user's mailbox: `/users/{id}/messages` <br/><br/>Changes to messages in a user's inbox: `/users/{id}/mailFolders/{id}/messages` | Requires `$select` to return only a subset of properties in the rich notification. For more information, see [Change notifications for Outlook resources](/graph/outlook-change-notifications-overview). |
| Outlook personal [contact][] | Changes to all personal contacts in a user's mailbox: `/users/{id}/contacts` <br/><br/>Changes to all personal contacts in a user's contactFolder: `/users/{id}/contactFolders/{id}/contacts`| Requires `$select` to return only a subset of properties in the rich notification. For more information, see [Change notifications for Outlook resources](/graph/outlook-change-notifications-overview). |
| Teams [callRecording][] | All recordings in an organization: `communications/onlineMeetings/getAllRecordings` <br><br> All recordings for a specific meeting: `communications/onlineMeetings/{onlineMeetingId}/recordings` <br><br> A call recording that becomes available in a meeting organized by a specific user: `users/{id}/onlineMeetings/getAllRecordings` <br><br> A call recording that becomes available in a meeting where a particular Teams app is installed: `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllRecordings` * | Maximum subscription quotas: <li> Per app and online-meeting combination: 1 <li> Per app and user combination: 1 <li> Per user (for subscriptions tracking recordings in all onlineMeetings organized by the user): 10 subscriptions. <li> Per organization: 10,000 total subscriptions. |
| Teams [callTranscript][] | All transcripts in an organization: `communications/onlineMeetings/getAllTranscripts` <br><br> All transcripts for a specific meeting: `communications/onlineMeetings/{onlineMeetingId}/transcripts` <br><br> A call transcript that becomes available in a meeting organized by a specific user: `users/{id}/onlineMeetings/getAllTranscripts` <br><br> A call transcript that becomes available in a meeting where a particular Teams app is installed: `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllTrancripts` * | Maximum subscription quotas: <li> Per app and online-meeting combination: 1 <li> Per app and user combination: 1 <li> Per user (for subscriptions tracking transcripts in all onlineMeetings organized by the user): 10 subscriptions. <li> Per organization: 10,000 total subscriptions. |
| Teams [channel][] | Changes to channels in all teams: `/teams/getAllChannels`<br/><br/>Changes to channel in a specific team: `/teams/{id}/channels` | - |
| Teams [chat][] | Changes to any chat in the tenant: `/chats`<br/><br/>Changes to a specific chat: `/chats/{id}` | - |
| Teams [chatMessage][] | Changes to chat messages in all channels in all teams: `/teams/getAllMessages`<br/><br/>Changes to chat messages in a specific channel: `/teams/{id}/channels/{id}/messages`<br/><br/>Changes to chat messages in all chats: `/chats/getAllMessages`<br/><br/>Changes to chat messages in a specific chat: `/chats/{id}/messages`<br/><br/>Changes to chat messages in all chats a particular user is part of: `/users/{id}/chats/getAllMessages` | Doesn't support using `$select` to return only selected properties. The rich notification consists of all the properties of the changed instance. |
| Teams [conversationMember][] | Changes to membership in a specific team: `/teams/{id}/members`<br/><br/><!-- Changes to membership in all channels under a specific team:  `/teams/{id}/channels/getAllMembers` --><br/><br/>Changes to membership in a specific chat: `/chats/{id}/members`<!-- <br/><br/>Changes to membership for all Teams chats: `/chats/getAllMembers`<br/><br/>Changes to membership for all channels across the entire tenant: `/teams/getAllChannels/getAllMembers` * --> | - |
| Teams [onlineMeeting][] * | Changes to an online meeting: `/communications/onlineMeetings/?$filter=JoinWebUrl eq '{joinWebUrl}` * | Doesn't support using `$select` to return only selected properties. The rich notification consists of all the properties of the changed instance. |
| Teams [presence][] | Changes to a single user's presence: `/communications/presences/{id}` | Doesn't support using `$select` to return only selected properties. The rich notification consists of all the properties of the changed instance. |
| Teams [team][] | Changes to any team in the tenant: `/teams`<br/><br/>Changes to a specific team: `/teams/{id}` | - |

[channel]: /graph/api/resources/channel
[chat]: /graph/api/resources/chat
[contact]: /graph/api/resources/contact
[conversationmember]: /graph/api/resources/conversationmember
[event]: /graph/api/resources/event
[message]: /graph/api/resources/message
[chatMessage]: /graph/api/resources/chatmessage
[presence]: /graph/api/resources/presence
[team]: /graph/api/resources/team
[onlineMeeting]: /graph/api/resources/onlinemeeting
[callTranscript]: /graph/api/resources/calltranscript
[callRecording]: /graph/api/resources/callrecording
