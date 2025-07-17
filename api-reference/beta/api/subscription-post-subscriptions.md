---
title: "Create subscription"
description: "Subscribes a listener application to receive change notifications when data on a Microsoft Graph resource changes."
ms.localizationpriority: medium
author: "keylimesoda"
doc_type: apiPageType
ms.subservice: change-notifications
ms.date: 07/26/2024
---

# Create subscription

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Subscribes a listener application to receive change notifications when the requested type of changes occur to the specified resource in Microsoft Graph.

To identify the resources for which you can create subscriptions and the limitations on subscriptions, see [Set up notifications for changes in resource data: Supported resources](/graph/webhooks#supported-resources).

Some resources support rich notifications, that is, notifications that include resource data. For more information about these resources, see [Set up change notifications that include resource data: Supported resources](/graph/webhooks-with-resource-data#supported-resources).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Creating a subscription requires read permission to the resource. For example, to get change notifications on messages, your app needs the Mail.Read permissions.

Depending on the resource and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing the permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

> [!NOTE]
> - Due to security restrictions, Microsoft Graph subscriptions do not support write access permissions when only read access permissions are needed.
> - Some resources support change notifications in multiple scenarios, each of which may require different permissions. In those cases, use the resource path to differentiate the scenarios.

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
|[chat](../resources/chat.md) <br />`/chats` <br />All chats in an organization. | Not supported.  | Not supported.  | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />`/chats/{id}` <br /> A particular chat.| Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported.  | ChatSettings.Read.Chat, ChatSettings.ReadWrite.Chat, Chat.Manage.Chat, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />`/appCatalogs/teamsApps/{id}/installedToChats` <br />All chats in an organization where a particular Teams app is installed. | Not supported.  | Not supported.  | Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
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
|[onlineMeeting](../resources/onlinemeeting.md) | Not supported.  | Not supported.  | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All |
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
|[virtualEventTownhall](../resources/virtualeventtownhall.md) | VirtualEvent.Read | Not supported. | VirtualEvent.Read.All |
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

OneDrive for work or school and SharePoint support sending your application notifications of security events that occur on a **driveItem**. To subscribe to these events, add the `prefer:includesecuritywebhooks` header to your request to create a subscription. After the subscription is created, you will receive notifications when the permissions on an item change. This header applies to SharePoint and OneDrive for work or school but not consumer OneDrive accounts.

### contact, event, and message

You can subscribe to changes in Outlook **contact**, **event**, or **message** resources and optionally specify in the POST request payload whether to include encrypted resource data in notifications.

[!INCLUDE [outlook-subscription-notes](../../includes/outlook-subscription-notes.md)]

### onlineMeetings, presence

Subscriptions on **onlineMeetings** and **presence** require the **encryptionCertificate** and **encryptionCertificateId** property when [creating a subscription](/graph/webhooks-with-resource-data#creating-a-subscription) for notifications with encrypted resource data. For more information, see [setting up change notifications to include resource data](/graph/webhooks-with-resource-data).
For details about online meeting subscriptions, see [Get change notifications for online meetings](/graph/changenotifications-for-onlinemeeting).

### virtualEventWebinar and virtualEventTownhall

Subscriptions on virtual events support only basic notifications and are limited to a few entities of a virtual event. For more information about the supported subscription types, see [Get change notifications for Microsoft Teams virtual event updates](/graph/changenotifications-for-virtualevent).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /subscriptions
```

## Request headers

| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of [subscription](../resources/subscription.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [subscription](../resources/subscription.md) object in the response body.

For details about how errors are returned, see [Error responses][error-response].

## Example

### Request

In the request body, supply a JSON representation of the [subscription](../resources/subscription.md) object.
The `clientState` and `latestSupportedTlsVersion` fields are optional.

This request creates a subscription for change notifications about new mail received by the currently signed-in user.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_subscription_from_subscriptions"
}-->

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-type: application/json

{
   "changeType": "created",
   "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
   "resource": "me/mailFolders('Inbox')/messages",
   "expirationDateTime":"2016-11-20T18:23:45.9356913Z",
   "clientState": "secretClientValue",
   "latestSupportedTlsVersion": "v1_2"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-subscription-from-subscriptions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-subscription-from-subscriptions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-subscription-from-subscriptions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-subscription-from-subscriptions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-subscription-from-subscriptions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-subscription-from-subscriptions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-subscription-from-subscriptions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-subscription-from-subscriptions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation of the [subscription](../resources/subscription.md) object.
The `clientState` and `latestSupportedTlsVersion` fields are optional.

#### Duplicate subscription behavior

Duplicate subscriptions aren't allowed. When a subscription request contains the same values for **changeType** and **resource** that an existing subscription contains, the request fails with an HTTP error code `409 Conflict`, and the error message `Subscription Id <> already exists for the requested combination`.

#### Resources examples

The following are valid values for the resource property.

| Resource type | Examples |
|:------ |:----- |
|[approvalItems](../resources/approvalItem.md)|`solution/approval/approvalItems`|
|[callRecord](../resources/callrecords-callrecord.md)|`communications/callRecords`|
|[callRecording](../resources/callrecording.md)| `communications/onlineMeetings/getAllRecordings`, `communications/onlineMeetings/{onlineMeetingId}/recordings`, `users/{userId}/onlineMeetings/getAllRecordings`, `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllRecordings`|
|[callTranscript](../resources/calltranscript.md) | `communications/onlineMeetings/getAllTranscripts`, `communications/onlineMeetings/{onlineMeetingId}/transcripts`, `users/{userId}/onlineMeetings/getAllTranscripts`, `appCatalogs/teamsApps/{id}/installedToOnlineMeetings/getAllTranscripts`|
|[channel](../resources/channel.md)|`/teams/getAllChannels`, `/teams/{id}/channels`|
|[chat](../resources/chat.md)|`/chats`, `/chats/{id}`|
|[chatMessage](../resources/chatmessage.md) | `chats/{id}/messages`, `chats/getAllMessages`, `teams/{id}/channels/{id}/messages`, `teams/getAllMessages` |
|[contact](../resources/contact.md)|`me/contacts`|
|[conversationMember](../resources/conversationmember.md)|`/chats/{id}/members`, `/chats/getAllMembers`, `/teams/{id}/members`, `/teams/getAllMembers`, `/teams/{id}/channels/getAllMembers`|
|[driveItem](../resources/driveitem.md)|`me/drive/root`|
|[event](../resources/event.md)|`me/events`|
|[group](../resources/group.md)|`groups`|
|[group conversation](../resources/conversation.md)|`groups('{id}')/conversations`|
|[list](../resources/list.md)|`sites/{site-id}/lists/{list-id}`|
|[message](../resources/message.md)|`me/mailfolders('inbox')/messages`, `me/messages`|
|[onlineMeeting](../resources/onlinemeeting.md)|`/communications/onlineMeetings/?$filter=JoinWebUrl eq '{JoinWebUrl}'`|
|[presence](../resources/presence.md)| `/communications/presences/{id}` (single user), `/communications/presences?$filter=id in ('{id}','{id}',…)` (multiple users)|
|[printer](../resources/printer.md) |`print/printers/{id}/jobs`|
|[printTaskDefinition](../resources/printtaskdefinition.md)|`print/taskDefinitions/{id}/tasks`|
|[team](../resources/team.md)|`/teams`, `/teams/{id}`|
|[user](../resources/user.md)|`users`|
|[todoTask](../resources/todotask.md) | `/me/todo/lists/{todoTaskListId}/tasks`|
|[security alert](../resources/alert.md)|`security/alerts?$filter=status eq 'NewAlert'`|
|[baseTask](../resources/basetask.md) (deprecated) | `/me/tasks/lists/{Id}/tasks`|

> [!NOTE]
> Any path starting with `me` can also be used with `users/{id}` instead of `me` to target a specific user instead of the current user.

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#subscriptions/$entity",
  "id": "7f105c7d-2dc5-4530-97cd-4e7ae6534c07",
  "resource": "me/mailFolders('Inbox')/messages",
  "applicationId": "24d3b144-21ae-4080-943f-7067b395b913",
  "changeType": "created",
  "clientState": "secretClientValue",
  "notificationUrl": "https://webhook.azurewebsites.net/api/send/myNotifyClient",
  "expirationDateTime": "2016-11-20T18:23:45.9356913Z",
  "creatorId": "8ee44408-0679-472c-bc2a-692812af3437",
  "latestSupportedTlsVersion": "v1_2",
  "notificationContentType": "application/json"
}
```

#### Notification endpoint validation

The subscription notification endpoint (specified in the **notificationUrl** property) must be capable of responding to a validation request as described in [Set up notifications for changes in user data](/graph/webhooks#notification-endpoint-validation). If validation fails, the request to create the subscription returns a 400 Bad Request error.

[error-response]: /graph/errors

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Create subscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
