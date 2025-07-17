---
title: "Update subscription"
description: "Renew a subscription by extending its expiry time."
ms.localizationpriority: medium
author: "keylimesoda"
doc_type: apiPageType
ms.subservice: change-notifications
ms.date: 07/26/2024
---

# Update subscription

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Renew a subscription by extending its expiry time.

The table in the [Permissions](#permissions) section lists the resources that support subscribing to change notifications.

Subscriptions expire after a length of time that varies by resource type. In order to avoid missing change notifications, an app should renew its subscriptions well in advance of their expiry date. See [subscription](../resources/subscription.md) for maximum length of a subscription for each resource type.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Depending on the resource and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

> [!NOTE]
> Some resources support change notifications in multiple scenarios, each of which may require different permissions. In those cases, use the resource path to differentiate the scenarios.

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
|[aiInteraction](../resources/aiinteraction.md)  <br /> `copilot/users/{userId}/interactionHistory/getAllEnterpriseInteractions`  <br /> Copilot AI interactions that a particular user is part of. | AiEnterpriseInteraction.Read  | Not supported.  | AiEnterpriseInteraction.Read.All, AiEnterpriseInteraction.Read.User  |
|[aiInteraction](../resources/aiinteraction.md)  <br /> `copilot/interactionHistory/getAllEnterpriseInteractions`  <br /> Copilot AI interactions in an organization. | Not supported.  | Not supported.  | AiEnterpriseInteraction.Read.All  |
|[approvalItems](../resources/approvalItem.md) | Not supported.  | Not supported.  | ApprovalSolution.ReadWrite.All  |
|[callRecord](../resources/callrecords-callrecord.md) | Not supported.  | Not supported.  | CallRecords.Read.All  |
|[callRecording](../resources/callrecording.md) <br /> `communications/onlineMeetings/getAllRecordings` <br /> Any recording becomes available in the tenant. | Not supported. | Not supported. | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `communications/onlineMeetings/{onlineMeetingId}/recordings`  <br /> Any recording becomes available for a specific meeting. | OnlineMeetingRecording.Read.All | Not supported. | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `users/{userId}/onlineMeetings/getAllRecordings`  <br /> A call recording that becomes available in a meeting organized by a specific user. | OnlineMeetingRecording.Read.All | Not supported. | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllRecordings`  <br /> A call recording that becomes available in a meeting where a particular Teams app is installed. | Not supported. | Not supported. | OnlineMeetingRecording.Read.All, OnlineMeetingRecording.Read.Chat |
|[callTranscript](../resources/calltranscript.md) <br /> `communications/onlineMeetings/getAllTranscripts` <br /> Any transcript becomes available in the tenant. | Not supported.  | Not supported.  | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `communications/onlineMeetings/{onlineMeetingId}/transcripts` <br /> Any transcript becomes available for a specific meeting. | OnlineMeetingTranscript.Read.All | Not supported.  | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `users/{userId}/onlineMeetings/getAllTranscripts` <br /> A call transcript that becomes available in a meeting organized by a specific user. | OnlineMeetingTranscript.Read.All | Not supported. | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllTranscripts`  <br /> A call transcript that becomes available in a meeting where a particular Teams app is installed. | Not supported. | Not supported. | OnlineMeetingTranscript.Read.All, OnlineMeetingTranscript.Read.Chat |
|[channel](../resources/channel.md) <br />`/teams/getAllChannels` <br /> All channels in an organization. | Not supported.   | Not supported.  | Channel.ReadBasic.All, ChannelSettings.Read.All |
|[channel](../resources/channel.md) <br />`/teams/{id}/channels` <br /> All channels in a particular team in an organization.  | Channel.ReadBasic.All, ChannelSettings.Read.All  | Not supported.  | Channel.ReadBasic.All, ChannelSettings.Read.All  |
|[chat](../resources/chat.md) <br />`/chats` <br />All chats in an organization.  | Not supported.  | Not supported.  | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />`/chats/{id}` <br /> A particular chat.| Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported.  | ChatSettings.Read.Chat, ChatSettings.ReadWrite.Chat, Chat.Manage.Chat, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />`/appCatalogs/teamsApps/{id}/installedToChats` <br />All chats in an organization where a particular Teams app is installed.| Not supported.  | Not supported.  | Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[chat](../resources/chat.md) <br />`/users/{id}/chats` <br /> All chats that a particular user is part of. | Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported. | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) <br />`/teams/{id}/channels/{id}/messages` <br /> All messages and replies in a particular channel. | ChannelMessage.Read.All, Group.Read.All, Group.ReadWrite.All | Not supported.  | ChannelMessage.Read.Group, ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/teams/getAllMessages` <br />All channel messages in organization. | Not supported.  | Not supported.  | ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/chats/{id}/messages` <br /> All messages in a chat. | Chat.Read, Chat.ReadWrite | Not supported.  | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/chats/getAllMessages` <br /> All chat messages in an organization. | Not supported.  | Not supported.  | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/users/{id}/chats/getAllMessages` <br />Chat messages for all chats a particular user is part of. | Chat.Read, Chat.ReadWrite | Not supported.  | Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) <br />`/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages` <br />Chat messages for all chats in an organization where a particular Teams app is installed. | Not supported.  | Not supported.  | Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[contact](../resources/contact.md) | Contacts.Read | Contacts.Read | Contacts.Read |
|[conversationMember](../resources/conversationmember.md) <br />`/chats/getAllMembers` <br /> Members of all chats in an organization. | Not supported.  | Not supported.  | ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />`/chats/{id}/members` <br /> Members of a particular chat. | ChatMember.Read, ChatMember.ReadWrite, Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported.  | ChatMember.Read.Chat, Chat.Manage.Chat, ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />`/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers` <br />Chat members for all chats in an organization where a particular Teams app is installed. | Not supported. | Not supported. | ChatMember.Read.WhereInstalled, ChatMember.ReadWrite.WhereInstalled, Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/getAllMembers` <br /> Members in all teams in an organization. | Not supported.  | Not supported.  | TeamMember.Read.All, TeamMember.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/{id}/members` <br /> Members in a particular team. | TeamMember.Read.All | Not supported.  | TeamMember.Read.All |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/{id}/channels/getAllMembers` <br /> Members in all private channels of a particular team. | Not supported.  | Not supported.  | ChannelMember.Read.All |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/getAllChannels/getAllMembers` | Not supported. | Not supported. | ChannelMember.Read.All |
|[driveItem](../resources/driveitem.md) (user's personal OneDrive) | Not supported.  | Files.ReadWrite | Not supported.  |
|[driveItem](../resources/driveitem.md) (OneDrive for work or school) | Files.ReadWrite.All | Not supported.  | Files.ReadWrite.All |
|[event](../resources/event.md) | Calendars.Read | Calendars.Read | Calendars.Read |
|[group](../resources/group.md) | Group.Read.All | Not supported.  | Group.Read.All |
|[group conversation](../resources/conversation.md) | Group.Read.All | Not supported.  | Not supported.  |
|[list](../resources/list.md) | Sites.ReadWrite.All | Not supported.  | Sites.ReadWrite.All |
|[message](../resources/message.md) | Mail.ReadBasic, Mail.Read | Mail.ReadBasic, Mail.Read | Mail.Read |
|[offerShiftRequest](../resources/offershiftrequest.md) <br />`/teams/{id}/schedule/offerShiftRequests` <br />Changes to any offer shift request in a team. | Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[online meeting](../resources/onlinemeeting.md) | Not supported.  | Not supported.  | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All |
|[openShiftChangeRequest](../resources/openshiftchangerequest.md) <br />`/teams/{id}/schedule/openShiftChangeRequests` <br />Changes to any open shift request in a team.| Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[presence](../resources/presence.md) | Presence.Read.All | Not supported.  | Not supported.  |
|[printer](../resources/printer.md) | Not supported.  | Not supported.  | Printer.Read.All, Printer.ReadWrite.All |
|[printTaskDefinition](../resources/printtaskdefinition.md) | Not supported.  | Not supported.  | PrintTaskDefinition.ReadWrite.All |
|[security alert](../resources/alert.md) | SecurityEvents.ReadWrite.All | Not supported.  | SecurityEvents.ReadWrite.All |
|[shift](../resources/shift.md) <br />`/teams/{id}/schedule/shifts` <br />Changes to any shift in a team. | Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[swapShiftsChangeRequest](../resources/swapshiftschangerequest.md) <br />`/teams/{id}/schedule/swapShiftsChangeRequests` <br />Changes to any swap shift request in a team.| Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[team](../resources/team.md) <br />`/teams` <br />All teams in an organization. | Not supported.  | Not supported.  | Team.ReadBasic.All, TeamSettings.Read.All |
|[team](../resources/team.md) <br />`/teams/{id}` <br />A particular team. | Team.ReadBasic.All, TeamSettings.Read.All | Not supported.  | Team.ReadBasic.All, TeamSettings.Read.All |
|[timeOffRequest](../resources/timeoffrequest.md) <br />`/teams/{id}/schedule/timeOffRequests` <br />Changes to any time off request in a team. | Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[todoTask](../resources/todotask.md) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported.  |
|[user](../resources/user.md) | User.Read.All | User.Read.All | User.Read.All |
|[virtualEventWebinar](../resources/virtualeventwebinar.md) | VirtualEvent.Read | Not supported. | VirtualEvent.Read.All |
|[baseTask](../resources/basetask.md) (deprecated) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported.  |

> [!NOTE]
> The following permissions use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent):
> - OnlineMeetingRecording.Read.Chat
> - OnlineMeetingTranscript.Read.Chat
> - ChatSettings.Read.Chat
> - ChatSettings.ReadWrite.Chat
> - Chat.Manage.Chat
> - ChannelMessage.Read.Group
> - ChatMember.Read.Chat
> - AiEnterpriseInteraction.Read.User

[!INCLUDE [teams-subscription-notes](../../includes/teams-subscription-notes.md)]

<!-- ### aiInteraction -->
[!INCLUDE [copilot-aiinteraction-subscription-notes.md](../../includes/copilot-aiinteraction-subscription-notes.md)]

### driveItem

More limitations apply to subscriptions on OneDrive items. The limitations apply to creating as well as managing (getting, updating, and deleting) subscriptions.

On a personal OneDrive, you can subscribe to the root folder or any subfolder in that drive. On OneDrive for work or school, you can subscribe to only the root folder. Change notifications are sent for the requested changes on the subscribed folder or any file, folder, or other **driveItem** instances in its hierarchy. You can't subscribe to **drive** or **driveItem** instances that aren't folders, such as individual files.

### contact, event, and message

You can subscribe to changes in Outlook **contact**, **event**, or **message** resources and optionally specify in the POST request payload whether to include encrypted resource data in notifications.

[!INCLUDE [outlook-subscription-notes](../../includes/outlook-subscription-notes.md)]

### onlineMeetings, presence

**onlineMeetings** and **presence** subscriptions require [encryption](/graph/webhooks-with-resource-data) for notifications with resource data. Subscription creation fails if [encryptionCertificate](../resources/subscription.md) and [encryptionCertificateId](../resources/subscription.md) aren't specified if resource data is desired in notifications.
For details about presence and online meeting subscriptions, see [Get change notifications for presence updates in Microsoft Teams](/graph/changenotifications-for-presence) and [Get change notifications for online meetings](/graph/changenotifications-for-onlinemeeting).

### virtualEventWebinar

Subscriptions on virtual events support only basic notifications and are limited to a few entities of a virtual event. For more information about the supported subscription types, see [Get change notifications for Microsoft Teams virtual event updates](/graph/changenotifications-for-virtualevent).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /subscriptions/{id}
```

## Request headers

| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|


## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Name       | Type | Description|
|:-----------|:------|:----------|
| expirationDateTime  | DateTimeOffset  | Specifies the date and time in UTC when the subscription expires. For the maximum supported subscription, the length of time varies depending on the resource. |

## Response

If successful, this method returns a `200 OK` response code and [subscription](../resources/subscription.md) object in the response body.

For details about how errors are returned, see [Error responses][error-response].

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_subscription"
}-->

```http
PATCH https://graph.microsoft.com/beta/subscriptions/{id}
Content-type: application/json

{
   "expirationDateTime":"2016-11-22T18:23:45.9356913Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-subscription-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-subscription-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-subscription-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-subscription-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-subscription-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-subscription-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-subscription-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-subscription-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id":"7f105c7d-2dc5-4530-97cd-4e7ae6534c07",
  "resource":"me/messages",
  "applicationId": "24d3b144-21ae-4080-943f-7067b395b913",
  "changeType":"created,updated",
  "clientState":"secretClientValue",
  "notificationUrl":"https://webhook.azurewebsites.net/api/send/myNotifyClient",
  "lifecycleNotificationUrl":"https://webhook.azurewebsites.net/api/send/lifecycleNotifications",
  "expirationDateTime":"2016-11-22T18:23:45.9356913Z",
  "creatorId": "8ee44408-0679-472c-bc2a-692812af3437",
  "latestSupportedTlsVersion": "v1_2",
  "encryptionCertificate": "",
  "encryptionCertificateId": "",
  "includeResourceData": false,
  "notificationContentType": "application/json"
}
```

[error-response]: /graph/errors

<!--
{
  "type": "#page.annotation",
  "description": "Update subscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
