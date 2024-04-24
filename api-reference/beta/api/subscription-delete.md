---
title: "Delete subscription"
description: "Delete a subscription."
ms.localizationpriority: medium
author: "keylimesoda"
doc_type: apiPageType
ms.subservice: change-notifications
---

# Delete subscription

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a subscription.

For the list of resources that support subscribing to change notifications, see the table in the [Permissions](#permissions) section.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Depending on the resource and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

> [!NOTE]
> Some resources support change notifications in multiple scenarios, each of which may require different permissions. In those cases, use the resource path to differentiate the scenarios.

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
|[callRecord](../resources/callrecords-callrecord.md) | Not supported. | Not supported. | CallRecords.Read.All  |
|[callRecording](../resources/callrecording.md) <br /> `communications/onlineMeetings/getAllRecordings` <br /> Any recording becomes available in the tenant. | Not supported. | Not supported. | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `communications/onlineMeetings/{onlineMeetingId}/recordings`  <br /> Any recording becomes available for a specific meeting. | OnlineMeetingRecording.Read.All | Not supported. | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `users/{userId}/onlineMeetings/getAllRecordings`  <br /> A call recording that becomes available in a meeting organized by a specific user. | OnlineMeetingRecording.Read.All | Not supported. | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllRecordings`  <br /> A call recording that becomes available in a meeting where a particular Teams app is installed. | Not supported. | Not supported. | OnlineMeetingRecording.Read.All, OnlineMeetingRecording.Read.Chat |
|[callTranscript](../resources/calltranscript.md) <br /> `communications/onlineMeetings/getAllTranscripts` <br /> Any transcript becomes available in the tenant. | Not supported. | Not supported. | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `communications/onlineMeetings/{onlineMeetingId}/transcripts` <br /> Any transcript becomes available for a specific meeting. | OnlineMeetingTranscript.Read.All | Not supported. | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `users/{userId}/onlineMeetings/getAllTranscripts` <br /> A call transcript that becomes available in a meeting organized by a specific user. | OnlineMeetingTranscript.Read.All | Not supported. | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllTranscripts`  <br /> A call transcript that becomes available in a meeting where a particular Teams app is installed. | Not supported. | Not supported. | OnlineMeetingTranscript.Read.All, OnlineMeetingTranscript.Read.Chat |
|[channel](../resources/channel.md) <br />`/teams/getAllChannels` <br /> All channels in an organization. | Not supported.  | Not supported. | Channel.ReadBasic.All, ChannelSettings.Read.All |
|[channel](../resources/channel.md) <br />`/teams/{id}/channels` <br /> All channels in a particular team in an organization.  | Channel.ReadBasic.All, ChannelSettings.Read.All  | Not supported. | Channel.ReadBasic.All, ChannelSettings.Read.All  |
|[chat](../resources/chat.md) <br />`/chats` <br />All chats in an organization.  | Not supported. | Not supported. | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />`/chats/{id}` <br /> A particular chat. | Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported. | ChatSettings.Read.Chat, ChatSettings.ReadWrite.Chat, Chat.Manage.Chat, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />`/appCatalogs/teamsApps/{id}/installedToChats` <br />All chats in an organization where a particular Teams app is installed. | Not supported.  | Not supported.  | Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[chat](../resources/chat.md) <br />`/users/{id}/chats` <br /> All chats a particular user is part of. | Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported. | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) <br />`/teams/{id}/channels/{id}/messages` <br /> All messages and replies in a particular channel. | ChannelMessage.Read.All, Group.Read.All, Group.ReadWrite.All | Not supported. | ChannelMessage.Read.Group, ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/teams/getAllMessages` <br />All channel messages in organization. | Not supported. | Not supported. | ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/chats/{id}/messages` <br /> All messages in a chat. | Chat.Read, Chat.ReadWrite | Not supported. | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/chats/getAllMessages` <br /> All chat messages in an organization. | Not supported. | Not supported. | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/users/{id}/chats/getAllMessages` <br />Chat messages for all chats a particular user is part of. | Chat.Read, Chat.ReadWrite | Not supported. | Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) <br />`/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages` <br />Chat messages for all chats in an organization where a particular Teams app is installed. | Not supported.  | Not supported.  | Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[contact](../resources/contact.md) | Contacts.Read | Contacts.Read | Contacts.Read |
|[conversationMember](../resources/conversationmember.md) <br />`/chats/getAllMembers` <br /> Members of all chats in an organization. | Not supported. | Not supported. | ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />`/chats/{id}/members` <br /> Members of a particular chat. | ChatMember.Read, ChatMember.ReadWrite, Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported. | ChatMember.Read.Chat, Chat.Manage.Chat, ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />`/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers` <br />Chat members for all chats in an organization where a particular Teams app is installed. | Not supported. | Not supported. | ChatMember.Read.WhereInstalled, ChatMember.ReadWrite.WhereInstalled, Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/getAllMembers` <br /> Members in all teams in an organization. | Not supported. | Not supported. | TeamMember.Read.All, TeamMember.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/{id}/members` <br /> Members in a particular team. | TeamMember.Read.All | Not supported. | TeamMember.Read.All |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/{id}/channels/getAllMembers` <br /> Members in all private channels of a particular team. | Not supported. | Not supported. | ChannelMember.Read.All |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/getAllChannels/getAllMembers` | Not supported. | Not supported. | ChannelMember.Read.All |
|[driveItem](../resources/driveitem.md) (user's personal OneDrive) | Not supported. | Files.ReadWrite | Not supported. |
|[driveItem](../resources/driveitem.md) (OneDrive for Business) | Files.ReadWrite.All | Not supported. | Files.ReadWrite.All |
|[event](../resources/event.md) | Calendars.Read | Calendars.Read | Calendars.Read |
|[group](../resources/group.md) | Group.Read.All | Not supported. | Group.Read.All |
|[group conversation](../resources/conversation.md) | Group.Read.All | Not supported. | Not supported. |
|[list](../resources/list.md) | Sites.ReadWrite.All | Not supported. | Sites.ReadWrite.All |
|[message](../resources/message.md) | Mail.ReadBasic, Mail.Read | Mail.ReadBasic, Mail.Read | Mail.Read |
|[online meeting](../resources/onlinemeeting.md) | Not supported.  | Not supported.  | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All |
|[presence](../resources/presence.md) | Presence.Read.All | Not supported. | Not supported. |
|[printer](../resources/printer.md) | Not supported. | Not supported. | Printer.Read.All, Printer.ReadWrite.All |
|[printTaskDefinition](../resources/printtaskdefinition.md) | Not supported. | Not supported. | PrintTaskDefinition.ReadWrite.All |
|[security alert](../resources/alert.md) | SecurityEvents.ReadWrite.All | Not supported. | SecurityEvents.ReadWrite.All |
|[team](../resources/team.md) <br />`/teams` <br />All teams in an organization. | Not supported. | Not supported. | Team.ReadBasic.All, TeamSettings.Read.All |
|[team](../resources/team.md) <br />`/teams/{id}` <br />A particular team. | Team.ReadBasic.All, TeamSettings.Read.All | Not supported. | Team.ReadBasic.All, TeamSettings.Read.All |
|[todoTask](../resources/todotask.md) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported. |
|[user](../resources/user.md) | User.Read.All | User.Read.All | User.Read.All |
|[virtualEventWebinar](../resources/virtualeventwebinar.md) | VirtualEvent.Read | Not supported. | VirtualEvent.Read.All |
|[baseTask](../resources/todotask.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported. |

> [!NOTE]
> The following permissions use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent):
> - OnlineMeetingRecording.Read.Chat
> - OnlineMeetingTranscript.Read.Chat
> - ChatSettings.Read.Chat
> - ChatSettings.ReadWrite.Chat
> - Chat.Manage.Chat
> - ChannelMessage.Read.Group
> - ChatMember.Read.Chat

[!INCLUDE [teams-subscription-notes](../../includes/teams-subscription-notes.md)]

### driveItem

More limitations apply to subscriptions on OneDrive items. The limitations apply to creating as well as managing (getting, updating, and deleting) subscriptions.

On a personal OneDrive, you can subscribe to the root folder or any subfolder in that drive. On OneDrive for Business, you can subscribe to only the root folder. Change notifications are sent for the requested types of changes on the subscribed folder or any file, folder, or other **driveItem** instances in its hierarchy. You can't subscribe to **drive** or **driveItem** instances that aren't folders, such as individual files.

### contact, event, and message

You can subscribe to changes in Outlook **contact**, **event**, or **message** resources and optionally specify in the POST request payload whether to include encrypted resource data in notifications.

[!INCLUDE [outlook-subscription-notes](../../includes/outlook-subscription-notes.md)]

### onlineMeetings, presence

**onlineMeetings** and **presence** subscriptions require [encryption](/graph/webhooks-with-resource-data) for notifications with resource data. Subscription creation fails if [encryptionCertificate](../resources/subscription.md) and [encryptionCertificateId](../resources/subscription.md) aren't specified if resource data is desired in notifications.
For details about online meeting subscriptions, see [Get change notifications for online meetings](/graph/changenotifications-for-onlinemeeting).

### virtualEventWebinar

Subscriptions on virtual events support only basic notifications and are limited to a few entities of a virtual event. For more information on the supported subscription types, see [Get change notifications for Microsoft Teams virtual event updates](/graph/changenotifications-for-virtualevent).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /subscriptions/{subscription-id}
```

## Request headers

| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

For details about how errors are returned, see [Error responses][error-response].

## Example

### Request

The followng example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_subscription"
}-->

```http
DELETE https://graph.microsoft.com/beta/subscriptions/7f105c7d-2dc5-4530-97cd-4e7ae6534c07
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-subscription-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-subscription-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-subscription-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-subscription-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-subscription-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-subscription-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-subscription-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-subscription-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

[error-response]: /graph/errors

<!--
{
  "type": "#page.annotation",
  "description": "Delete subscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
