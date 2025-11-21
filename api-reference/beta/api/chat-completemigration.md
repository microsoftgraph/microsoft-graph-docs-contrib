---
title: "chat: completeMigration"
description: "Complete the migration of external messages by removing migration mode from a chat."
ms.localizationpriority: medium
author: "MehakAgarwal"
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 06/12/2025
---

# chat: completeMigration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complete the migration of external messages by removing migration mode from a [chat](../resources/chat.md). Complete migration operations were initially restricted to newly created standard channels using migration templates specifically designed for the initial migration process. For more information, see [Import third-party platform messages to Teams using Microsoft Graph](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams).

After a **completeMigration** request is made for an existing or new chat, you can start a migration session by calling [chat: startMigration](chat-startmigration.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

[!INCLUDE [chat-support](../../includes/supported-chats-for-import.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_completemigration" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-completemigration-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /chats/{chat-id}/completeMigration
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Example 1: Complete the migration of external messages in a chat

The following example shows how to complete the migration of external messages in a chat.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "completeMigration_chat",
  "sampleKeys": ["19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/chats/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/completeMigration
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

### Example 2: Complete the migration when a chat is already in migration mode

The following example shows how to complete the migration when a chat is already in migration mode. This request fails with a `400 Bad Request` response.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "completeMigration_chat_fail",
  "sampleKeys": ["19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/chats/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/completeMigration
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
  "description": "completeMigration_ channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

## Related content

- [chat: startMigration](chat-startmigration.md)
- [Import message with older timestamp](channel-post-messages.md#example-2-import-messages)
- [Get message import status](chatmessage-get.md)
- [channel: completeMigration](channel-completemigration.md)
- [channel: startMigration](channel-startmigration.md)
