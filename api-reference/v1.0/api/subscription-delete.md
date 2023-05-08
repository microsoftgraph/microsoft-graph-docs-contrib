---
title: "Delete subscription"
description: "Delete a subscription."
ms.localizationpriority: medium
author: "jumasure"
doc_type: apiPageType
ms.prod: "change-notifications"
---

# Delete subscription

Namespace: microsoft.graph

Delete a subscription.

For the list of resources that support subscribing to change notifications, see the table in the [Permissions](#permissions) section.

## Permissions

Depending on the resource and the permission type (delegated or application) requested, the permission specified in the following table is the least privileged required to call this API. To learn more, including [taking caution](/graph/auth/auth-concepts#best-practices-for-requesting-permissions) before choosing more privileged permissions, search for the following permissions in [Permissions](/graph/permissions-reference).

| Supported resource | Delegated (work or school account) | Delegated (personal Microsoft account) | Application |
|:-----|:-----|:-----|:-----|
|[callRecord](../resources/callrecords-callrecord.md) | Not supported. | Not supported. | CallRecords.Read.All |
|[channel](../resources/channel.md) (/teams/getAllChannels – all channels in an organization) | Not supported  | Not supported | Channel.ReadBasic.All, ChannelSettings.Read.All |
|[channel](../resources/channel.md) (/teams/{id}/channels) | Channel.ReadBasic.All, ChannelSettings.Read.All  | Not supported | Channel.ReadBasic.All, ChannelSettings.Read.All  |
|[chat](../resources/chat.md) (/chats – all chats in an organization) | Not supported | Not supported | Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) (/chats/{id}) | Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported | ChatSettings.Read.Chat*, ChatSettings.ReadWrite.Chat*, Chat.Manage.Chat*, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[chat](../resources/chat.md) <br />/appCatalogs/teamsApps/{id}/installedToChats <br />All chats in an organization where a particular Teams app is installed. | Not supported | Not supported | Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[chatMessage](../resources/chatmessage.md) (/teams/{id}/channels/{id}/messages) | ChannelMessage.Read.All | Not supported. |  ChannelMessage.Read.Group*, ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) (/teams/getAllMessages -- all channel messages in organization) | Not supported. | Not supported. | ChannelMessage.Read.All  |
|[chatMessage](../resources/chatmessage.md) (/chats/{id}/messages) | Not supported. | Not supported. | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) (/chats/getAllMessages -- all chat messages in organization) | Not supported. | Not supported. | Chat.Read.All  |
|[chatMessage](../resources/chatmessage.md) (/users/{id}/chats/getAllMessages -- chat messages for all chats a particular user is part of) | Chat.Read, Chat.ReadWrite | Not supported | Chat.Read.All, Chat.ReadWrite.All |
|[chatMessage](../resources/chatmessage.md) <br />/appCatalogs/teamsApps/{id}/installedToChats/getAllMessages <br />Chat messages for all chats in an organization where a particular Teams app is installed. | Not supported | Not supported | Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[contact](../resources/contact.md) | Contacts.Read | Contacts.Read | Contacts.Read |
|[conversationMember](../resources/conversationmember.md) (/chats/getAllMembers) | Not supported | Not supported | ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) (/chats/{id}/members) | ChatMember.Read, ChatMember.ReadWrite, Chat.ReadBasic, Chat.Read, Chat.ReadWrite | Not supported | ChatMember.Read.Chat*, Chat.Manage.Chat*, ChatMember.Read.All, ChatMember.ReadWrite.All, Chat.ReadBasic.All, Chat.Read.All, Chat.ReadWrite.All |
|[conversationMember](../resources/conversationmember.md) <br />/appCatalogs/teamsApps/{id}/installedToChats/getAllMembers <br />Chat members for all chats in an organization where a particular Teams app is installed. | Not supported. | Not supported. | ChatMember.Read.WhereInstalled, ChatMember.ReadWrite.WhereInstalled, Chat.ReadBasic.WhereInstalled, Chat.Read.WhereInstalled, Chat.ReadWrite.WhereInstalled |
|[conversationMember](../resources/conversationmember.md) (/teams/{id}/members) | TeamMember.Read.All | Not supported | TeamMember.Read.All |
|[conversationMember](../resources/conversationmember.md) (/teams/{id}/channels/getAllMembers) | Not supported | Not supported | ChannelMember.Read.All |
|[driveItem](../resources/driveitem.md) (user's personal OneDrive) | Not supported. | Files.ReadWrite | Not supported. |
|[driveItem](../resources/driveitem.md) (OneDrive for Business) | Files.ReadWrite.All | Not supported. | Files.ReadWrite.All |
|[event](../resources/event.md) | Calendars.Read | Calendars.Read | Calendars.Read |
|[group](../resources/group.md) | Group.Read.All | Not supported. | Group.Read.All |
|[group conversation](../resources/conversation.md) | Group.Read.All | Not supported. | Not supported. |
|[list](../resources/list.md) | Sites.ReadWrite.All | Not supported. | Sites.ReadWrite.All |
|[message](../resources/message.md) | Mail.ReadBasic, Mail.Read | Mail.ReadBasic, Mail.Read | Mail.Read |
|[printer](../resources/printer.md) | Not supported. | Not supported. | Printer.Read.All, Printer.ReadWrite.All |
|[printTaskDefinition](../resources/printtaskdefinition.md) | Not supported. | Not supported. | PrintTaskDefinition.ReadWrite.All |
|[security alert](../resources/alert.md) | SecurityEvents.ReadWrite.All | Not supported. | SecurityEvents.ReadWrite.All |
|[team](../resources/team.md) (/teams – all teams in an organization) | Not supported | Not supported | Team.ReadBasic.All, TeamSettings.Read.All |
|[team](../resources/team.md) (/teams/{id}) | Team.ReadBasic.All, TeamSettings.Read.All | Not supported | Team.ReadBasic.All, TeamSettings.Read.All |
|[todoTask](../resources/todotask.md) | Tasks.ReadWrite | Tasks.ReadWrite | Not supported |
|[user](../resources/user.md) | User.Read.All | User.Read.All | User.Read.All |


> **Note**: Permissions marked with * use [resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent).

[!INCLUDE [teams-subscription-notes](../../includes/teams-subscription-notes.md)]

### driveItem

Additional limitations apply for subscriptions on OneDrive items. The limitations apply to creating as well as managing (getting, updating, and deleting) subscriptions.

On a personal OneDrive, you can subscribe to the root folder or any subfolder in that drive. On OneDrive for Business, you can subscribe to only the root folder. Change notifications are sent for the requested types of changes on the subscribed folder, or any file, folder, or other **driveItem** instances in its hierarchy. You cannot subscribe to **drive** or **driveItem** instances that are not folders, such as individual files.

### contact, event, and message

You can subscribe to changes in Outlook **contact**, **event**, or **message** resources.

[!INCLUDE [outlook-subscription-notes](../../includes/outlook-subscription-notes.md)]


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

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

For details about how errors are returned, see [Error responses][error-response].

## Example

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_subscription"
}-->

```http
DELETE https://graph.microsoft.com/v1.0/subscriptions/7f105c7d-2dc5-4530-97cd-4e7ae6534c07
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-subscription-csharp-snippets.md)]
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

---

### Response

The following is an example of the response.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 204 No Content
```

[error-response]: /graph/errors

<!-- {
  "type": "#page.annotation",
  "description": "Delete subscription",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

