---
title: "Use the Microsoft Graph API to get change notifications"
description: "Deliver change notifications to clients."
ms.localizationpriority: medium
author: "jumasure"
doc_type: conceptualPageType
ms.prod: "change-notifications"
---

# Use the Microsoft Graph API to get change notifications

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

The Microsoft Graph REST API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes. For more details, including how to subscribe to and handle incoming notifications, see [Set up notifications for changes in user data](/graph/webhooks).

Using the Microsoft Graph API, an app can subscribe to changes in the resources in the table below. Apply the resource path corresponding to your scenario as specified when [creating a subscription](/graph/api/subscription-post-subscriptions). 

| **Resource** | **Supported resource paths** | **Resource data can be included in notifications**                  |
|:----------------|:------------|:-----------------------------------------|
| Cloud printing [printer][] | Changes when a print job is ready to be downloaded (JobFetchable event):<br>`/print/printers/{id}/jobs` | No |
| Cloud printing [printTaskDefinition][] | Changes when there is a valid job in the queue (JobStarted event) :<br>`/print/printtaskdefinition/{id}/tasks` | No |
| [driveItem][] on OneDrive for Business | Changes to content within the hierarchy of the _root folder_:<br>`/drives/{id}/root`<br> `/users/{id}/drive/root` | No |
| [driveItem][] on OneDrive (personal) | Changes to content within the hierarchy of _any folder_:<br>`/users/{id}/drive/root` | No |
| [group][] | Changes to all groups:<br>`/groups` <br>Changes to a specific group:<br>`/groups/{id}`<br>Changes to owners of a specific group:<br>`/groups/{id}/owners`<br>Changes to members of a specific group:<br>`/groups/{id}/members` | No |
| [list][] under a SharePoint [site][] | `/sites/{id}/lists/{id}` | No |
| Microsoft 365 group [conversation][] | Changes to a group's conversations:<br>`groups/{id}/conversations` | No |
| Outlook [event][] | Changes to all events in a user's mailbox:<br>`/users/{id}/events` | Yes |
| Outlook [message][] | Changes to all messages in a user's mailbox: <br>`/users/{id}/messages`<br>Changes to messages in a user's Inbox:<br>`/users/{id}/mailFolders('inbox')/messages` | Yes |
| Outlook personal [contact][] | Changes to all personal contacts in a user's mailbox:<br>`/users/{id}/contacts` | Yes |
| Security [alert][] | Changes to a specific alert:<br>`/security/alerts/{id}` <br>Changes to filtered alerts:<br> `/security/alerts/?$filter`| No |
| Teams [callRecord][] | Changes to _all_ call records: `/communications/callRecords` | No |
| Teams [channel][] | Changes to channels in all teams:<br>`/teams/getAllChannels` <br>Changes to channel in a specific team:<br>`/teams/{id}/channels` | Yes |
| Teams [chat][] | Changes to any chat in the tenant:<br>`/chats` <br>Changes to a specific chat:<br>`/chats/{id}`<br>Changes to any chat in the tenant a particular Teams app is installed to:<br>`/appCatalogs/teamsApps{id}/installedToChats` | Yes |
| Teams [chatmessage][] | Changes to chat messages in all channels in all teams:<br>`/teams/getAllMessages` <br>Changes to chat messages in a specific channel:<br>`/teams/{id}/channels/{id}/messages`<br>Changes to chat messages in all chats:<br>`/chats/getAllMessages` <br>Changes to chat messages in a specific chat:<br>`/chats/{id}/messages`<br>Changes to chat messages in all chats a particular user is part of:<br>`/users/{id}/chats/getAllMessages`<br>Changes to chat messages in all the chats in the tenant that a particular Teams app is installed to:<br>`/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages` | Yes |
| Teams [conversationMember][] | Changes to membership in a specific team:<br>`/teams/{id}/members` <br> Changes to membership in a specific chat:<br>`/chats/{id}/members` <br> Changes to membership in all chats:<br>`/chats/getAllMembers` <br> Changes to membership in all channels under a specific team:<br>`/teams/{id}/channels/getAllMembers`<br>Changes to membership in all the chats in the tenant that a particular Teams app is installed to:<br>`/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers` | Yes |
| Teams [onlineMeeting][] | Changes to an online meeting: <br>`/communications/onlineMeetings/?$filter=JoinWebUrl eq {joinWebUrl}` | Yes |
| Teams [presence][] | Changes to a single user's presence: `/communications/presences/{id}` <br> Changes to multiple user presences:<br> `/communications/presences?$filter=id in ({id},{id}...)` | Yes |
| Teams [team][] | Changes to any team in the tenant:<br>`/teams` <br>Changes to a specific team:<br>`/teams/{id}` | Yes |
| To Do [baseTask][] (deprecated) | Changes to all task in a specific task list:<br>`/me/tasks/lists/{baseTaskListId}/tasks`<br>Changes to all tasks:<br>`/me/tasks/lists/alltasks` | No |
| [To Do task][] | Changes to all task in a specific task list:<br>`/me/todo/lists/{todoTaskListId}/tasks` | No |
| [user][] | Changes to all users:<br>`/users` <br>Changes to a specific user:<br>`/users/{id}`| No |


> **Note**: Any resource path that begins with `/users/{id}` can also accept `/me` to reference the signed-in user.

## Permissions

In general, subscription operations require read permission to the resource. For example, to get notifications for messages, your app needs the `Mail.Read` permission. The [create subscription](../api/subscription-post-subscriptions.md) article lists permissions needed for each resource type. The following table lists the types of permissions your app can request to use webhooks for specific resource types.

| Permission type                        | Supported resource types                                                      |
| :------------------------------------- | :------------------------------------------------------------------------------------ |
| Delegated - work or school account     | [alert][], [baseTask][] (deprecated), [channel][], [chat][], [contact][], [conversation][], [conversationMember][], [driveItem][], [list][], [event][], [group][], [message][], [user][], [presence][], [chatMessage][] (preview), [team][], [todoTask][] |
| Delegated - personal Microsoft account | [baseTask][] (deprecated), [contact][], [driveItem][], [list][], [event][], [message][], [todoTask][]                                   |
| Application                            | [alert][], [channel][], [chat][], [contact][], [driveItem][], [list][], [event][], [group][], [message][], [user][], [callRecord][], [chatMessage][], [conversationMember][], [onlinemeeting][], [printer][], [printTaskDefinition][], [team][] |

## See also

- [Subscription resource type](subscription.md)
- [List subscriptions](../api/subscription-list.md)
- [Get subscription](../api/subscription-get.md)
- [Create subscription](../api/subscription-post-subscriptions.md)
- [Update subscription](../api/subscription-update.md)
- [Delete subscription](../api/subscription-delete.md)

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
