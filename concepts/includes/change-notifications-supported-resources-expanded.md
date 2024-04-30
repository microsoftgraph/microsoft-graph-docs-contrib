---
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: ric.lewis
ms.subservice: change-notifications
ms.topic: include
ms.localizationpriority: high
---

<!-- markdownlint-disable MD041-->

An app can subscribe to changes on the Microsoft Graph resources listed in the table.

> [!NOTE]
> Subscriptions to resources marked with an asterisk (`*`) are only available on the `/beta` endpoint.

| Resource | Supported resource paths | Limitations |
|---|---|---|
| Cloud printing [printer][] | Changes when a print job is ready to be downloaded (jobFetchable event): `/print/printers/{id}/jobs` | - |
| Cloud printing [printTaskDefinition][] | Changes when there's a valid job in the queue (jobStarted event): `/print/printtaskdefinition/{id}/tasks` | - |
| [driveItem][] on OneDrive (personal) | Changes to content within the hierarchy of _any folder_: `/users/{id}/drive/root` | - |
| [driveItem][] on OneDrive for Business | Changes to content within the hierarchy of the _root folder_: `/drives/{id}/root` , `/users/{id}/drive/root` | - |
| [group][] | Changes to all groups: `/groups`  <br><br> Changes to a specific group: `/groups/{id}` <br><br> Changes to owners of a specific group:  `/groups/{id}/owners` <br><br> Changes to members of a specific group: `/groups/{id}/members` | Maximum subscription quotas: <li> Per app (for all tenants combined): 50,000 total subscriptions. <li> Per tenant (for all applications combined): 1000 total subscriptions across all apps. <li> Per app and tenant combination: 100 total subscriptions.<br/><br/>Not supported for Azure AD B2C tenants.<br/><br/>**NOTE:** Creation and soft-deletion of groups also trigger the `updated` **changeType**. |
| [list][] under a SharePoint [site][] | Changes to content within the _list_:  `/sites/{site-id}/lists/{list-id}` | - |
| Microsoft 365 group [conversation][] | Changes to a group's conversations: `groups/{id}/conversations` | - |
| Outlook [message][] | Changes to all messages in a user's mailbox: `/users/{id}/messages` , `/me/messages` <br><br> Changes to messages in a user's Inbox: `/users/{id}/mailFolders('inbox')/messages` , `/me/mailFolders('inbox')/messages` | A maximum of 1,000 active subscriptions per mailbox for all applications is allowed. |
| Outlook [event][] | Changes to all events in a user's mailbox: `/users/{id}/events` , `/me/events` | A maximum of 1,000 active subscriptions per mailbox for all applications is allowed. |
| Outlook personal [contact][] | Changes to all personal contacts in a user's mailbox: `/users/{id}/contacts` , `/me/contacts` | A maximum of 1,000 active subscriptions per mailbox for all applications is allowed. |
| Security [alert][] | Changes to a specific alert: `/security/alerts/{id}` <br><br>Changes to filtered alerts: `/security/alerts/?$filter={parameters}` | For more information, see [Security API alerts](/graph/api/resources/security-api-overview?view=graph-rest-beta#alerts&preserve-view=true).|
| Teams [callRecord][] | Changes to _all_ call records: `/communications/callRecords` | Maximum subscription quotas: <li> Per organization: 100 total subscriptions.<br/><br/>**NOTE:** Creation of call records also trigger the `updated` **changeType**. |
| Teams [callRecording][] | All recordings in an organization: `communications/onlineMeetings/getAllRecordings` <br><br> All recordings for a specific meeting: `communications/onlineMeetings/{onlineMeetingId}/recordings` <br><br> A call recording that becomes available in a meeting organized by a specific user: `users/{id}/onlineMeetings/getAllRecordings` <br><br> A call recording that becomes available in a meeting where a particular Teams app is installed: `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllRecordings` * | Maximum subscription quotas: <li> Per app and online-meeting combination: 1 <li> Per app and user combination: 1 <li> Per user (for subscriptions tracking recordings in all onlineMeetings organized by the user): 10 subscriptions. <li> Per organization: 10,000 total subscriptions. |
| Teams [callTranscript][] | All transcripts in an organization: `communications/onlineMeetings/getAllTranscripts` <br><br> All transcripts for a specific meeting: `communications/onlineMeetings/{onlineMeetingId}/transcripts` <br><br> A call transcript that becomes available in a meeting organized by a specific user: `users/{id}/onlineMeetings/getAllTranscripts` <br><br> A call transcript that becomes available in a meeting where a particular Teams app is installed: `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllTrancripts` * | Maximum subscription quotas: <li> Per app and online-meeting combination: 1 <li> Per app and user combination: 1 <li> Per user (for subscriptions tracking transcripts in all onlineMeetings organized by the user): 10 subscriptions. <li> Per organization: 10,000 total subscriptions. |
| Teams [chat][] | Changes to any chat in the tenant: `/chats`  <br><br> Changes to a specific chat: `/chats/{id}` <br><br> Changes to all chats in an organization where a particular Teams app is installed: `/appCatalogs/teamsApps/{id}/installedToChats`  | Maximum subscription quotas: <li> Per app and chat combination: 1 subscription. <li> Per organization: 10,000 total subscriptions. |
| Teams [chatMessage][] | Changes to chat messages in all channels in all teams: `/teams/getAllMessages` <br><br> Changes to chat messages in a specific channel: `/teams/{id}/channels/{id}/messages` <br><br> Changes to chat messages in all chats: `/chats/getAllMessages`  <br><br> Changes to chat messages in a specific chat: `/chats/{id}/messages` <br><br> Changes to chat messages in all chats a particular user is part of: `/users/{id}/chats/getAllMessages` <br><br> Changes to chat messages for all chats in an organization where a particular Teams app is installed: `/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages` | Maximum subscription quotas: <li> Per app and channel or chat combination: 1 subscription. <li> Per user (for subscriptions tracking chat messages in all chats the user is part of): 10 subscriptions. <li> Per organization: 10,000 total subscriptions. |
| Teams [channel][] | Changes to channels in all teams: `/teams/getAllChannels` <br><br> Changes to channel in a specific team: `/teams/{id}/channels` | Maximum subscription quotas: <li> Per app and team combination: 1 subscription. <li> Per organization: 10,000 total subscriptions. |
| Teams [conversationMember][] | Changes to membership in a specific team: `/teams/{id}/members` <br><br> Changes to membership in all channels under a specific team: `teams/{id}/channels/getAllMembers` <br><br> Changes to membership in a specific chat: `/chats/{id}/members`  <br><br> Changes to membership for all chats in an organization where a particular Teams app is installed: `/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers` <br><br> Changes to membership in all chats: `/chats/getAllMembers` | Maximum subscription quotas: <li> Per app and team combination: 1 subscription. <li> Per organization: 10,000 total subscriptions. |
| [offerShiftRequest][] | Changes to any offer shift request in a team: /teams/{teamId}/schedule/offerShiftRequests | Maximum subscription quotas: <li> Per resource path and application combination: 1 subscription per tenant.<li> Per resource path and user combination: 10 delegated user subscriptions per tenant. |
| Teams [onlineMeeting][] <sup>*<sup> | Changes to an online meeting: `/communications/onlineMeetings/?$filter=JoinWebUrl eq {joinWebUrl}` |  |
| [openShiftChangeRequest][] | Changes to any open shift request in a team: /teams/{id}/schedule/openShiftChangeRequests | Maximum subscription quotas:<li> Per app and resource path combination: 1.<li> Per user and resource path combination: 10 subscriptions.<li> Per organization: 10,000 total subscriptions. |
| Teams [presence][] | Changes to a single user's presence:  `/communications/presences/{id}` <br><br> Changes to multiple user presences:  `/communications/presences?$filter=id in ({id},{id}...)` |  |
| [shift][] | Changes to any shift in a team: teams/{teamId}/schedule/shifts | Maximum subscription quotas:<li> Per app and resource path combination: 1.<li> Per user and resource path combination: 10 subscriptions.<li> Per organization: 10,000 total subscriptions. |
| [swapShiftsChangeRequest][] | Changes to any swap shift request in a team: /teams/{teamId}/schedule/swapShiftsChangeRequests | Maximum subscription quotas:<li> Per app and resource path combination: 1.<li> Per user and resource path combination: 10 subscriptions.<li> Per organization: 10,000 total subscriptions. |
| Teams [team][] | Changes to any team in the tenant: `/teams` <br><br> Changes to a specific team: `/teams/{id}` | Maximum subscription quotas: <li> Per app and team combination: 1 subscription. <li> Per organization: 10,000 total subscriptions. |
| [timeOffRequest][] | Changes to any time off in a team: teams/{teamId}/schedule/timeOffRequests | Maximum subscription quotas:<li> Per app and resource path combination: 1.<li> Per user and resource path combination: 10 subscriptions.<li> Per organization: 10,000 total subscriptions. |
| [todoTask][] | Changes to all task in a specific task list: `/me/todo/lists/{todoTaskListId}/tasks` | - |
| [user][] | Changes to all users: `/users` <br><br> Changes to a specific user: `/users/{id}` | Maximum subscription quotas: <li> Per app (for all tenants combined): 50,000 total subscriptions. <li> Per tenant (for all applications combined): 1000 total subscriptions across all apps <li> Per app and tenant combination: 100 total subscriptions.<br/><br/>Not supported for personal Microsoft accounts like outlook.com.<br/><br/>Not supported for Azure AD B2C tenants.<br/><br/>**NOTE:** Creation and soft-deletion of users also trigger the `updated` **changeType**. |

> [!NOTE]
> Many resources have limits or quotas on how many subscriptions can be made against that resource.  When exceeding that limit, attempts to create a subscription will result in a `403 Forbidden` error response. The **message** property of the error response will explain the limit that has been exceeded.

Some of these resources support rich notifications (notifications with resource data). For more information about resources that support rich notifications, see [Set up change notifications that include resource data](/graph/webhooks-with-resource-data#supported-resources).

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
[offershiftrequest]: /graph/api/resources/offershiftrequest
[openshiftchangerequest]: /graph/api/resources/openshiftchangerequest
[presence]: /graph/api/resources/presence
[printer]: /graph/api/resources/printer
[printTaskDefinition]: /graph/api/resources/printtaskdefinition
[shift]: /graph/api/resources/shift
[swapshiftschangerequest]: /graph/api/resources/swapshiftschangerequest
[team]: /graph/api/resources/team
[timeoffrequest]: /graph/api/resources/timeoffrequest
[todoTask]: /graph/api/resources/todotask
[onlineMeeting]: /graph/api/resources/onlinemeeting
[callTranscript]: /graph/api/resources/calltranscript
[callRecording]: /graph/api/resources/callrecording
