---
title: "subscription: reauthorize"
description: "Reauthorize a subscription when you receive a reauthorizationRequired challenge."
author: "keylimesoda"
ms.localizationpriority: medium
ms.subservice: change-notifications
doc_type: apiPageType
ms.date: 08/01/2024
---

# subscription: reauthorize
Namespace: microsoft.graph

Reauthorize a subscription when you receive a **reauthorizationRequired** challenge.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Depending on the resource and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

> **Note**: 
>
> Some resources support change notifications in multiple scenarios, each of which may require different permissions. In those cases, use the resource path to differentiate the scenarios.
>
> Permissions marked with * use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
|[baseTask](../resources/todotask.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported. |
|[callRecord](../resources/callrecords-callrecord.md) | Not supported. | Not supported. | CallRecords.Read.All  |
|[callRecording](../resources/callrecording.md) <br /> `communications/onlineMeetings/getAllRecordings` <br /> All recordings in an organization. | Not supported.  | Not supported.  | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `communications/onlineMeetings/{onlineMeetingId}/recordings` <br /> All recordings for a specific meeting. | OnlineMeetingRecording.Read.All | Not supported.  | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `users/{userId}/onlineMeetings/getAllRecordings`  <br /> A call recording that becomes available in a meeting organized by a specific user. | OnlineMeetingRecording.Read.All | Not supported. | OnlineMeetingRecording.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `communications/onlineMeetings/getAllTranscripts` <br /> All transcripts in an organization. | Not supported.  | Not supported.  | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `communications/onlineMeetings/{onlineMeetingId}/transcripts` <br /> All transcripts for a specific meeting. | OnlineMeetingTranscript.Read.All | Not supported.  | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `users/{userId}/onlineMeetings/getAllTranscripts` <br /> A call transcript that becomes available in a meeting organized by a specific user. | OnlineMeetingTranscript.Read.All | Not supported. | OnlineMeetingTranscript.Read.All |
|[channel](../resources/channel.md) <br />/teams/getAllChannels <br /> All channels in an organization. | Not supported.  | Not supported. | Channel.ReadBasic.All, ChannelSettings.Read.All |
|[channel](../resources/channel.md) <br />/teams/{id}/channels <br /> All channels in a particular team in an organization.  | Channel.ReadBasic.All, ChannelSettings.Read.All  | Not supported. | Channel.ReadBasic.All, ChannelSettings.Read.All  |
|[chat](../resources/chat.md) <br />/chats <br />All chats in an organization.  | Not supported. | Not supported. | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />/chats/{id} <br /> A particular chat. | Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported. | ChatSettings.Read.Chat*, ChatSettings.ReadWrite.Chat*, Chat.Manage.Chat*, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />/appCatalogs/teamsApps/{id}/installedToChats <br />All chats in an organization where a particular Teams app is installed. | Not supported | Not supported | Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[chat](../resources/chat.md) <br />`/users/{id}/chats` <br /> All chats that a particular user is part of. | Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported. | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) <br />/teams/{id}/channels/{id}/messages <br /> All messages and replies in a particular channel. | ChannelMessage.Read.All, Group.Read.All, Group.ReadWrite.All | Not supported. | ChannelMessage.Read.Group*, ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />/teams/getAllMessages <br />All channel messages in organization. | Not supported. | Not supported. | ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />/chats/{id}/messages <br /> All messages in a chat. | Chat.Read, Chat.ReadWrite | Not supported. | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />/chats/getAllMessages. <br /> All chat messages in an organization. | Not supported. | Not supported. | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />/users/{id}/chats/getAllMessages <br />Chat messages for all chats a particular user is part of. | Chat.Read, Chat.ReadWrite | Not supported. | Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) <br />/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages <br />Chat messages for all chats in an organization where a particular Teams app is installed. | Not supported | Not supported | Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[contact](../resources/contact.md) | Contacts.Read | Contacts.Read | Contacts.Read |
|[conversationMember](../resources/conversationmember.md) <br />/chats/getAllMembers <br /> Members of all chats in an organization. | Not supported. | Not supported. | ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />/chats/{id}/members <br /> Members of a particular chat. | ChatMember.Read, ChatMember.ReadWrite, Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported. | ChatMember.Read.Chat*, Chat.Manage.Chat*, ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers <br />Chat members for all chats in an organization where a particular Teams app is installed. | Not supported. | Not supported. | ChatMember.Read.WhereInstalled, ChatMember.ReadWrite.WhereInstalled, Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[conversationMember](../resources/conversationmember.md) <br />/teams/getAllMembers <br /> Members in all teams in an organization. | Not supported. | Not supported. | TeamMember.Read.All, TeamMember.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />/teams/{id}/members <br /> Members in a particular team. | TeamMember.Read.All | Not supported. | TeamMember.Read.All |
|[conversationMember](../resources/conversationmember.md) <br />/teams/{id}/channels/getAllMembers <br /> Members in all private channels of a particular team. | Not supported. | Not supported. | ChannelMember.Read.All |
|[conversationMember](../resources/conversationmember.md) (/teams/getAllChannels/getAllMembers) | Not supported. | Not supported. | ChannelMember.Read.All |
|[driveItem](../resources/driveitem.md) (user's personal OneDrive) | Not supported. | Files.ReadWrite | Not supported. |
|[driveItem](../resources/driveitem.md) (OneDrive for Business) | Files.ReadWrite.All | Not supported. | Files.ReadWrite.All |
|[event](../resources/event.md) | Calendars.Read | Calendars.Read | Calendars.Read |
|[group](../resources/group.md) | Group.Read.All | Not supported. | Group.Read.All |
|[group conversation](../resources/conversation.md) | Group.Read.All | Not supported. | Not supported. |
|[list](../resources/list.md) | Sites.ReadWrite.All | Not supported. | Sites.ReadWrite.All |
|[message](../resources/message.md) | Mail.ReadBasic, Mail.Read | Mail.ReadBasic, Mail.Read | Mail.Read |
|[offerShiftRequest](../resources/offershiftrequest.md)<br/>(/teams/{id}/schedule/offerShiftRequests)<br/>Changes to any offer shift request in a team. | Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[openShiftChangeRequest](../resources/openshiftchangerequest.md)<br/>(/teams/{id}/schedule/openShiftChangeRequests)<br/>Changes to any open shift request in a team.| Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[online meeting](../resources/onlinemeeting.md) | Not supported | Not supported | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All |
|[presence](../resources/presence.md) | Presence.Read.All | Not supported. | Not supported. |
|[printer](../resources/printer.md) | Not supported. | Not supported. | Printer.Read.All, Printer.ReadWrite.All |
|[printTaskDefinition](../resources/printtaskdefinition.md) | Not supported. | Not supported. | PrintTaskDefinition.ReadWrite.All |
|[security alert](../resources/alert.md) | SecurityEvents.ReadWrite.All | Not supported. | SecurityEvents.ReadWrite.All |
|[shift](../resources/shift.md)<br/>(/teams/{id}/schedule/shifts)<br/>Changes to any shift in a team. | Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[swapShiftsChangeRequest](../resources/swapshiftschangerequest.md)<br/>(/teams/{id}/schedule/swapShiftsChangeRequests) <br/>Changes to any swap shift request in a team.| Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[team](../resources/team.md) <br />/teams <br />All teams in an organization. | Not supported. | Not supported. | Team.ReadBasic.All, TeamSettings.Read.All |
|[team](../resources/team.md) <br />/teams/{id} <br />A particular team. | Team.ReadBasic.All, TeamSettings.Read.All | Not supported. | Team.ReadBasic.All, TeamSettings.Read.All |
|[timeOffRequest](../resources/timeoffrequest.md)<br/>(/teams/{id}/schedule/timeOffRequests)<br/>Changes to any time off request in a team. | Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[todoTask](../resources/todotask.md) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported. |
|[user](../resources/user.md) | User.Read.All | User.Read.All | User.Read.All |


[!INCLUDE [teams-subscription-notes](../../includes/teams-subscription-notes.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /subscriptions/{subscriptionsId}/reauthorize
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "subscriptionthis.reauthorize"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/subscriptions/{subscriptionsId}/reauthorize
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/subscriptionthisreauthorize-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/subscriptionthisreauthorize-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/subscriptionthisreauthorize-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/subscriptionthisreauthorize-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/subscriptionthisreauthorize-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/subscriptionthisreauthorize-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/subscriptionthisreauthorize-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/subscriptionthisreauthorize-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

