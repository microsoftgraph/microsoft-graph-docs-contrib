---
title: "List subscriptions"
description: "Retrieve the properties and relationships of webhook subscriptions, based on the app ID, the user, and the user's role with a tenant."
ms.localizationpriority: high
author: "keylimesoda"
ms.subservice: change-notifications
doc_type: apiPageType
ms.date: 08/01/2024
ms.custom: sfi-ga-nochange
---

# List subscriptions

Namespace: microsoft.graph

Retrieve the properties and relationships of webhook subscriptions, based on the app ID, the user, and the user's role with a tenant.

The content of the response depends on the context in which the app is calling; for details, see the scenarios in the [Permissions](#permissions) section.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

This API supports the following permission scopes; to learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
|[callRecord](../resources/callrecords-callrecord.md) (/communications/callRecords) | Not supported | Not supported | CallRecords.Read.All  |
|[callRecording](../resources/callrecording.md) <br /> `communications/onlineMeetings/getAllRecordings` <br /> All recordings in an organization. | Not supported.  | Not supported.  | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `communications/onlineMeetings/{onlineMeetingId}/recordings` <br /> All recordings for a specific meeting. | OnlineMeetingRecording.Read.All | Not supported.  | OnlineMeetingRecording.Read.All |
|[callRecording](../resources/callrecording.md) <br /> `users/{userId}/onlineMeetings/getAllRecordings`  <br /> A call recording that becomes available in a meeting organized by a specific user. | OnlineMeetingRecording.Read.All | Not supported. | OnlineMeetingRecording.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `communications/onlineMeetings/getAllTranscripts` <br /> All transcripts in an organization. | Not supported.  | Not supported.  | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `communications/onlineMeetings/{onlineMeetingId}/transcripts` <br /> All transcripts for a specific meeting. | OnlineMeetingTranscript.Read.All | Not supported.  | OnlineMeetingTranscript.Read.All |
|[callTranscript](../resources/calltranscript.md) <br /> `users/{userId}/onlineMeetings/getAllTranscripts` <br /> A call transcript that becomes available in a meeting organized by a specific user. | OnlineMeetingTranscript.Read.All | Not supported. | OnlineMeetingTranscript.Read.All |
|[channel](../resources/channel.md) (/teams/getAllChannels – all channels in an organization) | Not supported  | Not supported | Channel.ReadBasic.All, ChannelSettings.Read.All |
|[channel](../resources/channel.md) (/teams/{id}/channels) | Channel.ReadBasic.All, ChannelSettings.Read.All, Subscription.Read.All  | Not supported | Channel.ReadBasic.All, ChannelSettings.Read.All  |
|[chat](../resources/chat.md) (/chats – all chats in an organization) | Not supported | Not supported | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) (/chats/{id}) | Chat.ReadBasic, Chat.Read, Chat.ReadWrite, Subscription.Read.All | Not supported | ChatSettings.Read.Chat*, ChatSettings.ReadWrite.Chat*, Chat.Manage.Chat*, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />/appCatalogs/teamsApps/{id}/installedToChats <br />All chats in an organization where a particular Teams app is installed. | Not supported | Not supported | Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[chat](../resources/chat.md) <br />`/users/{id}/chats` <br /> All chats that a particular user is part of. | Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported. | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) (/teams/{id}/channels/{id}/messages) | ChannelMessage.Read.All, Group.Read.All, Group.ReadWrite.All, Subscription.Read.All | Not supported | ChannelMessage.Read.Group*, ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) (/teams/getAllMessages -- all channel messages in organization) | Not supported | Not supported | ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) (/chats/{id}/messages) | Chat.Read, Chat.ReadWrite, Subscription.Read.All | Not supported | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) (/chats/getAllMessages -- all chat messages in organization) | Not supported | Not supported | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) (/users/{id}/chats/getAllMessages -- chat messages for all chats a particular user is part of) | Chat.Read, Chat.ReadWrite | Not supported | Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) <br />/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages <br />Chat messages for all chats in an organization where a particular Teams app is installed. | Not supported. | Not supported. | Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[contact](../resources/contact.md) | Contacts.Read, Subscription.Read.All | Contacts.Read, Subscription.Read.All | Contacts.Read |
|[conversationMember](../resources/conversationmember.md) (/teams/{id}/channels/getAllMembers) | Not supported | Not supported | ChannelMember.Read.All |
|[conversationMember](../resources/conversationmember.md) (/chats/getAllMembers) | Not supported | Not supported | ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) (/chats/{id}/members) | ChatMember.Read, ChatMember.ReadWrite, Chat.ReadBasic, Chat.Read, Chat.ReadWrite, Subscription.Read.All | Not supported | ChatMember.Read.Chat*, Chat.Manage.Chat*, ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers <br />Chat members for all chats in an organization where a particular Teams app is installed. | Not supported | Not supported | ChatMember.Read.WhereInstalled, ChatMember.ReadWrite.WhereInstalled, Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[conversationMember](../resources/conversationmember.md) (/teams/{id}/members) | TeamMember.Read.All, Subscription.Read.All | Not supported | TeamMember.Read.All |
|[driveItem](../resources/driveitem.md) (user's personal OneDrive) | Not supported | Files.ReadWrite, Subscription.Read.All | Not supported |
|[driveItem](../resources/driveitem.md) (OneDrive for work or school) | Files.ReadWrite.All, Subscription.Read.All | Not supported | Files.ReadWrite.All |
|[event](../resources/event.md) | Calendars.Read, Subscription.Read.All | Calendars.Read, Subscription.Read.All | Calendars.Read |
|[group](../resources/group.md) | Group.Read.All, Subscription.Read.All | Not supported | Group.Read.All |
|[group conversation](../resources/conversation.md) | Group.Read.All, Subscription.Read.All | Not supported | Not supported |
|[list](../resources/list.md) | Sites.ReadWrite.All, Subscription.Read.All | Not supported | Sites.ReadWrite.All |
|[message](../resources/message.md) | Mail.ReadBasic, Mail.Read, Subscription.Read.All | Mail.ReadBasic, Mail.Read, Subscription.Read.All | Mail.Read |
|[offerShiftRequest](../resources/offershiftrequest.md)<br/>(/teams/{id}/schedule/offerShiftRequests)<br/>Changes to any offer shift request in a team. | Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[openShiftChangeRequest](../resources/openshiftchangerequest.md)<br/>(/teams/{id}/schedule/openShiftChangeRequests)<br/>Changes to any open shift request in a team.| Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[presence](../resources/presence.md) | Presence.Read.All, Subscription.Read.All | Not supported | Not supported |
|[printer](../resources/printer.md) | Not supported | Not supported | Printer.Read.All, Printer.ReadWrite.All |
|[printTaskDefinition](../resources/printtaskdefinition.md) | Not supported | Not supported | PrintTaskDefinition.ReadWrite.All |
|[security alert](../resources/alert.md) | SecurityEvents.ReadWrite.All, Subscription.Read.All | Not supported | SecurityEvents.ReadWrite.All |
|[shift](../resources/shift.md)<br/>(/teams/{id}/schedule/shifts)<br/>Changes to any shift in a team. | Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[swapShiftsChangeRequest](../resources/swapshiftschangerequest.md)<br/>(/teams/{id}/schedule/swapShiftsChangeRequests) <br/>Changes to any swap shift request in a team.| Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[team](../resources/team.md) (/teams – all teams in an organization) | Not supported | Not supported | Team.ReadBasic.All, TeamSettings.Read.All |
|[team](../resources/team.md) (/teams/{id}) | Team.ReadBasic.All, TeamSettings.Read.All, Subscription.Read.All | Not supported | Team.ReadBasic.All, TeamSettings.Read.All |
|[timeOffRequest](../resources/timeoffrequest.md)<br/>(/teams/{id}/schedule/timeOffRequests)<br/>Changes to any time off request in a team. | Schedule.Read.All, Schedule.ReadWrite.All| Not supported. | Schedule.Read.All, Schedule.ReadWrite.All |
|[todoTask](../resources/todotask.md) | Tasks.ReadWrite, Subscription.Read.All | Tasks.ReadWrite, Subscription.Read.All | Not supported |
|[user](../resources/user.md) | User.Read.All, Subscription.Read.All | User.Read.All | User.Read.All |

> **Note**: Permissions marked with * use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

Response results are based on the context of the calling app. The following sections describe the common scenarios.

### Basic scenarios

Most commonly, an application wants to retrieve subscriptions that it originally created for the currently signed-in user, or for all users in the directory (work/school accounts). These scenarios don't require any special permissions beyond the ones the app used originally to create its subscriptions.

| Context of the calling app | Response contains |
|:-----|:---------------- |
| App is calling on behalf of the signed-in user (delegated permission). <br/>-and-<br/>App has the original permission required to [create the subscription](subscription-post-subscriptions.md).<br/><br/>Note: This applies to both personal Microsoft accounts and work/school accounts. | Subscriptions created by **this app** for the signed-in user only. |
| App is calling on behalf of itself (application permission).<br/>-and-<br/>App has the original permission required to [create the subscription](subscription-post-subscriptions.md).<br/><br/>**Note:** This applies to work/school accounts only.| Subscriptions created by **this app** for itself or for any user in the directory.|

### Advanced scenarios

In some cases, an app wants to retrieve subscriptions created by other apps. For example, a user wants to see all subscriptions created by any app on their behalf. Or, a Global Administrator might want to see all subscriptions from all apps in their directory.
For such scenarios, a delegated permission Subscription.Read.All is required.

| Context of the calling app | Response contains |
|:-----|:---------------- |
| App is calling on behalf of the signed-in user (delegated permission). *The user is a non-admin*. <br/>-and-<br/>App has the permission Subscription.Read.All<br/><br/>Note: This applies to both personal Microsoft accounts and work/school accounts. | Subscriptions created by **any app** for the signed-in user only. |
| App is calling on behalf of the signed-in user (delegated permission). *The user is a Global Administrator*.<br/>-and-<br/>App has the permission Subscription.Read.All<br/><br/>Note: This applies to work/school accounts only. | Subscriptions created by **any app** for **any user** in the directory.|

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
| Authorization  | string  |Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

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
GET https://graph.microsoft.com/v1.0/subscriptions
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
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#subscriptions",
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
<!-- {
  "type": "#page.annotation",
  "description": "List subscriptions",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

> **Note:** the `clientState` property value is not returned for security purposes.

When a request returns multiple pages of data, the response includes an `@odata.nextLink` property to help you manage the results. To learn more, see [Paging Microsoft Graph data in your app](/graph/paging).
