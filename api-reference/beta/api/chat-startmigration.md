---
title: "chat: startMigration"
description: "Start the migration of external messages by enabling migration mode in existing chat"
ms.localizationpriority: medium
author: "MehakAgarwal"
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 06/12/2025
---

# channel: startMigration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The API will allow users to enable migration mode on existing chats. Previously, users were only allowed to initiate import operations on newly created Standard Channels in empty state ([import-external-messages-to-teams](https://learn.microsoft.com/en-us/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams)).

This API expands import capabilities to

1) New Chats (Group, 1:1, and Federated)
2) Existing Chats (Group, 1:1, and Federated).

Starts the message migration process by populating `migration mode` to `inProgress` for a [chat](../resources/chat.md).

Users are also allowed to define minimum timestamp for contents to be migrated, allowing them to import messages in the past. Provided timestamp is required to be older than the current `createdDateTime` for a [chat](../resources/chat.md).

Provided timestamp will be used to replace existing `createdDateTime` of the [chat](../resources/chat.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_startmigration" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-completemigration-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST   /chats/{chat-id}/startMigration
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Optional Request body

You can optionally provide a request body to specify the minimum timestamp for the messages to be migrated. If you don't provide a request body, the API will use the current date and time as the minimum timestamp.

```json
{
  "conversationCreatedDateTime": "2024-01-01T00:00:00Z"
}
```

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

### Request

Here's an example  of the request.
<!-- markdownlint-disable MD025 -->
<!-- markdownlint-disable MD022 -->

# [HTTP]
<!-- {
  "blockType": "request",
  "name": "startMigration_channel",
  "sampleKeys": ["57fb72d0-d811-46f4-8947-305e6072eaa5", "19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```http
POST https://graph.microsoft.com/beta/chats/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/startMigration
```

<!-- markdownlint-disable MD001 -->
<!-- markdownlint-disable MD024 -->
### Response

Here's an example  of the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
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

- [chat-completeMigration](chat-completemigration.md)
- [Import-message-with-older-timestamp](channel-post-messages.md#example-2-import-messages)
- [get-message-import-status](chatmessage-get.md)
