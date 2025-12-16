---
title: "chat: startMigration"
description: "Start the migration of external messages by enabling migration mode in an existing chat."
ms.localizationpriority: medium
author: "MehakAgarwal"
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 06/12/2025
---

# chat: startMigration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Start the migration of external messages by enabling migration mode in an existing [chat](../resources/chat.md). Import operations were limited to newly created standard channels that were in an empty state. For more information, see [Import third-party platform messages to Teams using Microsoft Graph](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams).

You can define a minimum timestamp for content migration that enables the import of messages from the past. The specified timestamp must be earlier than the current **createdDateTime** of the [chat](../resources/chat.md). Imported content is always limited by the **createdDateTime** of the target thread. An optional **createdDateTime** property in the payload allows you to update this value, but with strict rules:

- The **createdDateTime** can only be moved towards the past.
- The **createdDateTime** can't be updated to a value newer than the current **createdDateTime**.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

[!INCLUDE [chat-support](../../includes/supported-chats-for-import.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_startmigration" } -->
|Permission type|Least privileged permissions|Higher privileged permissions|
|:---|:---|:---|
|Delegated (work or school account)|Not supported.|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|Not supported.|
|Application|Teamwork.Migrate.All|Not available.|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /chats/{chat-id}/startMigration
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Optional|

## Request body

In the request body, supply a JSON representation of the following parameters.

| Parameter       | Type | Description |
|:---------------|:--------|:--------|
|conversationCreationDateTime|DateTimeOffset|The minimum timestamp for the messages to be migrated. The timestamp must be older than the current **createdDateTime** of the channel. If not provided, the current date and time is used. Optional.|

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Example 1: Start the migration in a chat

The following example shows how to start the migration in a chat.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "startMigration_chat",
  "sampleKeys": ["19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/chats/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/startMigration
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

### Example 2: Start the migration when a chat is already in migration mode

The following example shows how to start the migration when a chat is already in migration mode. This request fails with a `400 Bad Request` response.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "startMigration_chat_fail",
  "sampleKeys": ["19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/chats/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/startMigration
```

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 400 Bad Request
```

<!-- uuid: 5793eec6-0e5a-11eb-adc1-0242ac120002
2020-10-14 20:22:11 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "startMigration_ chat",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

## Related content

- [chat: completeMigration](chat-completemigration.md)
- [Import message with older timestamp](channel-post-messages.md#example-2-import-messages)
- [Get message import status](chatmessage-get.md)
- [channel: completeMigration](channel-completemigration.md)
- [channel: startMigration](channel-startmigration.md)
