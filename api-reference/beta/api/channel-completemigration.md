---
title: "channel: completeMigration"
description: "Complete migration on existing channels or new channels."
ms.localizationpriority: medium
author: "RamjotSingh"
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 04/05/2024
---

# channel: completeMigration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complete migration on existing [channels](../resources/channel.md) or new channels. Complete migration operations were initially restricted to newly created standard channels using migration templates specifically designed for the initial migration process. For more information, see [Import third-party platform messages to Teams using Microsoft Graph](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams).

Consider the following points when completing migration for new and existing channels:

- When a channel is created in migration mode for the initial import flow, the property **migrationMode** for a [channel](../resources/channel.md) in a team is updated to `completed` instead of being dropped, and the state is permanently marked for chats or channels. Migration mode is a special state that prevents certain operations, such as sending messages and adding members, during the data migration process. The parent team isn't marked with migration mode, as teams can't enter migration mode; only their child channels (general, standard, private, and shared) can.
- For *existing* channels that are already in migration mode, the API completes the message migration process by updating **migrationMode** to `completed` for a [channel](../resources/channel.md) in a team.

After a **completeMigration** request is made for existing or new channels, you can still import more messages into the team by calling [channel: startMigration](channel-startmigration.md).

[!INCLUDE [channel-support](../../includes/supported-channels-for-import.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_completemigration" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-completemigration-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/channels/{channel-id}/completeMigration
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

### Example 1: Complete the migration when a channel is in migration mode

The following example shows how to complete the migration when a channel is in migration mode.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "completeMigration_channel",
  "sampleKeys": ["57fb72d0-d811-46f4-8947-305e6072eaa5", "19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/completeMigration
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

### Example 2: Complete the migration when a channel isn't in migration mode

The following example shows how to complete the migration when a channel isn't in migration mode. This request fails with a `400 Bad Request` response.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "completeMigration_channel_fail",
  "sampleKeys": ["57fb72d0-d811-46f4-8947-305e6072eaa5", "19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/completeMigration
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

- [channel: startMigration](channel-startmigration.md)
- [Import message with older timestamp](channel-post-messages.md#example-2-import-messages).
- [Get channel migration status](channel-get.md#example-1-get-a-channel).
- [chat: completeMigration](chat-completemigration.md)
- [chat: startMigration](chat-startmigration.md)
