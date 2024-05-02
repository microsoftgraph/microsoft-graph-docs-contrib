---
title: "List subscriptions"
description: "Retrieve a list of webhook subscriptions."
ms.localizationpriority: medium
author: "keylimesoda"
doc_type: apiPageType
ms.subservice: change-notifications
---

# List subscriptions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of webhook subscriptions.

The content of the response depends on the context in which the app is calling; for details, see the scenarios in the [Permissions](#permissions) section.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Depending on the resource and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

> [!NOTE]
> Some resources support change notifications in multiple scenarios, each of which may require different permissions. In those cases, use the resource path to differentiate the scenarios.

| Supported resource  | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
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
|[channel](../resources/channel.md) <br />`/teams/{id}/channels` <br /> All channels in a particular team in an organization. | Channel.ReadBasic.All, ChannelSettings.Read.All, Subscription.Read.All  | Not supported.  | Channel.ReadBasic.All, ChannelSettings.Read.All  |
|[chat](../resources/chat.md) <br />`/chats` <br />All chats in an organization. | Not supported.  | Not supported.  | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />`/chats/{id}` <br /> A particular chat. | Chat.ReadBasic, Chat.Read, Chat.ReadWrite, Subscription.Read.All | Not supported.  | ChatSettings.Read.Chat, ChatSettings.ReadWrite.Chat, Chat.Manage.Chat, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />`/appCatalogs/teamsApps/{id}/installedToChats` <br />All chats in an organization where a particular Teams app is installed. | Not supported.  | Not supported.  | Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[chatMessage](../resources/chatmessage.md) <br />`/teams/{id}/channels/{id}/messages` <br /> All messages and replies in a particular channel.| ChannelMessage.Read.All, Group.Read.All, Group.ReadWrite.All, Subscription.Read.All | Not supported.  | ChannelMessage.Read.Group, ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/teams/getAllMessages` <br />All channel messages in organization. | Not supported.  | Not supported.  | ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/chats/{id}/messages` <br /> All messages in a chat.| Chat.Read, Chat.ReadWrite, Subscription.Read.All | Not supported.  | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/chats/getAllMessages` <br /> All chat messages in an organization. | Not supported.  | Not supported.  | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) <br />`/users/{id}/chats/getAllMessages` <br />Chat messages for all chats a particular user is part of. | Chat.Read, Chat.ReadWrite, Subscription.Read.All | Not supported.  | Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) <br />`/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages` <br />Chat messages for all chats in an organization where a particular Teams app is installed. | Not supported. | Not supported. | Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[contact](../resources/contact.md) | Contacts.Read, Subscription.Read.All | Contacts.Read, Subscription.Read.All | Contacts.Read |
|[conversationMember](../resources/conversationmember.md) <br />`/chats/getAllMembers` <br /> Members of all chats in an organization.| Not supported.  | Not supported.  | ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />`/chats/{id}/members` <br /> Members of a particular chat.| ChatMember.Read, ChatMember.ReadWrite, Chat.ReadBasic, Chat.Read, Chat.ReadWrite, Subscription.Read.All | Not supported.  | ChatMember.Read.Chat, Chat.Manage.Chat, ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />`appCatalogs/teamsApps/{id}/installedToChats/getAllMembers` <br />Chat members for all chats in an organization where a particular Teams app is installed. | Not supported.  | Not supported.  | ChatMember.Read.WhereInstalled, ChatMember.ReadWrite.WhereInstalled, Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/getAllMembers` <br /> Members in all teams in an organization.| Not supported.  | Not supported.  | TeamMember.Read.All, TeamMember.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/{id}/members` <br /> Members in a particular team.| TeamMember.Read.All, Subscription.Read.All | Not supported.  | TeamMember.Read.All |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/{id}/channels/getAllMembers` <br /> Members in all private channels of a particular team.| Not supported.  | Not supported.  | ChannelMember.Read.All |
|[conversationMember](../resources/conversationmember.md) <br />`/teams/getAllChannels/getAllMembers` | Not supported. | Not supported. | ChannelMember.Read.All |
|[driveItem](../resources/driveitem.md) <br />User's personal OneDrive. | Not supported.  | Files.ReadWrite, Subscription.Read.All | Not supported.  |
|[driveItem](../resources/driveitem.md) <br />OneDrive for Business. | Files.ReadWrite.All, Subscription.Read.All | Not supported.  | Files.ReadWrite.All |
|[event](../resources/event.md) | Calendars.Read, Subscription.Read.All | Calendars.Read, Subscription.Read.All | Calendars.Read |
|[group](../resources/group.md) | Group.Read.All, Subscription.Read.All | Not supported.  | Group.Read.All |
|[group conversation](../resources/conversation.md) | Group.Read.All, Subscription.Read.All | Not supported.  | Not supported.  |
|[list](../resources/list.md) | Sites.ReadWrite.All, Subscription.Read.All | Not supported.  | Sites.ReadWrite.All |
|[message](../resources/message.md) | Mail.ReadBasic, Mail.Read, Subscription.Read.All | Mail.ReadBasic, Mail.Read, Subscription.Read.All | Mail.Read |
|[online meeting](../resources/onlinemeeting.md) | Not supported.  | Not supported.  | OnlineMeetings.Read.All, OnlineMeetings.ReadWrite.All |
|[presence](../resources/presence.md) | Presence.Read.All, Subscription.Read.All | Not supported.  | Not supported.  |
|[printer](../resources/printer.md) | Not supported.  | Not supported.  | Printer.Read.All, Printer.ReadWrite.All |
|[printTaskDefinition](../resources/printtaskdefinition.md) | Not supported.  | Not supported.  | PrintTaskDefinition.ReadWrite.All |
|[security alert](../resources/alert.md) | SecurityEvents.ReadWrite.All, Subscription.Read.All | Not supported.  | SecurityEvents.ReadWrite.All |
|[team](../resources/team.md) <br />`/teams` <br />All teams in an organization. | Not supported.  | Not supported.  | Team.ReadBasic.All, TeamSettings.Read.All |
|[team](../resources/team.md) <br />`/teams/{id}` <br />A particular team. | Team.ReadBasic.All, TeamSettings.Read.All, Subscription.Read.All | Not supported.  | Team.ReadBasic.All, TeamSettings.Read.All |
|[todoTask](../resources/todotask.md) | Tasks.ReadWrite, Subscription.Read.All | Tasks.ReadWrite, Subscription.Read.All | Not supported.  |
|[user](../resources/user.md) | User.Read.All, Subscription.Read.All | User.Read.All | User.Read.All |
|[baseTask](../resources/basetask.md) (deprecated) | Tasks.ReadWrite, Subscription.Read.All | Tasks.ReadWrite, Subscription.Read.All | Not supported.  |

> [!NOTE]
> The following permissions use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent):
> - OnlineMeetingRecording.Read.Chat
> - OnlineMeetingTranscript.Read.Chat
> - ChatSettings.Read.Chat
> - ChatSettings.ReadWrite.Chat
> - Chat.Manage.Chat
> - ChannelMessage.Read.Group
> - ChatMember.Read.Chat

Response results are based on the context of the calling app. The following sections describe the common scenarios.

### Basic scenarios

Most commonly, an application wants to retrieve subscriptions that it originally created for the currently signed-in user or all users in the directory (work/school accounts). These scenarios don't require any special permissions beyond the ones the app used originally to create its subscriptions.

| Context of the calling app | Response contains |
|:-----|:---------------- |
| App is calling on behalf of the signed-in user (delegated permission). <br/>-and-<br/>App has the original permission required to [create the subscription](subscription-post-subscriptions.md).<br/><br/>**Note:** This scenario applies to both personal Microsoft accounts and work/school accounts. | Subscriptions created by **the app** for the signed-in user only. |
| App is calling on behalf of itself (application permission).<br/>-and-<br/>App has the original permission required to [create the subscription](subscription-post-subscriptions.md).<br/><br/>Note: This scenario only applies to work/school accounts.| Subscriptions created by **the app** for itself or any user in the directory.|

### Advanced scenarios

In some cases, an app wants to retrieve subscriptions created by other apps. For example, a user wants to see all subscriptions created by any app on their behalf. Or, an administrator who wants to see all subscriptions from all apps in their directory.
For such scenarios, a delegated permission Subscription.Read.All is required.

| Context of the calling app | Response contains |
|:-----|:---------------- |
| App is calling on behalf of the signed-in user (delegated permission). *The user is a non-admin*. <br/>-and-<br/>App has the permission Subscription.Read.All<br/><br/>Note: This scenario applies to both personal Microsoft accounts and work/school accounts. | Subscriptions created by **any app** for the signed-in user only. |
| App is calling on behalf of the signed-in user (delegated permission). *The user is an admin*.<br/>-and-<br/>App has the permission Subscription.Read.All<br/><br/>Note: This scenario only applies to work/school accounts. | Subscriptions created by **any app** for **any user** in the directory.|

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /subscriptions
```

## Optional query parameters

This method doesn't support the [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [subscription](../resources/subscription.md) objects in the response body.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_subscriptions"
}-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/subscriptions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-subscriptions-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-subscriptions-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-subscriptions-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-subscriptions-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-subscriptions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-subscriptions-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-subscriptions-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-subscriptions-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.subscription",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#subscriptions",
  "value": [
    {
      "id": "0fc0d6db-0073-42e5-a186-853da75fb308",
      "resource": "Users",
      "applicationId": "24d3b144-21ae-4080-943f-7067b395b913",
      "changeType": "updated,deleted",
      "clientState": null,
      "notificationUrl": "https://webhookappexample.azurewebsites.net/api/notifications",
      "lifecycleNotificationUrl":"https://webhook.azurewebsites.net/api/send/lifecycleNotifications",
      "expirationDateTime": "2018-03-12T05:00:00Z",
      "creatorId": "8ee44408-0679-472c-bc2a-692812af3437",
      "latestSupportedTlsVersion": "v1_2",
      "encryptionCertificate": "",
      "encryptionCertificateId": "",
      "includeResourceData": false,
      "notificationContentType": "application/json"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "List subscriptions",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

> **Note:** the `clientState` property value is not returned for security purposes.

When a request returns multiple pages of data, the response includes an `@odata.nextLink` property to help you manage the results. To learn more, see [Paging Microsoft Graph data in your app](/graph/paging).
