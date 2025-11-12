---
title: "Channel: completeMigration"
description: "Complete the migration of external messages by removing migration mode from a channel."
ms.localizationpriority: medium
author: "RamjotSingh"
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Channel: completeMigration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complete migration on existing channels or new channels. Previously, users were only allowed to initiate complete migration operations on newly created standard channels by creating migration templates, which were created for the initial migration flow. ([import-external-messages-to-teams](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams)).

**Points to note:**

1) When a channel is created in migration mode for the initial import flow, the new API `Migration mode` from a [channel](../resources/channel.md) in a team is updated to **Completed** instead of being dropped, and the state is marked to chat/channels permanently. `Migration mode` is a special state that prevents certain operations, like sending messages and adding members, during the data migration process. Parent team won't be marked with migration mode.
As team can't enter migration mode. its children channels can (general, standard, private and shared).

2) For **existing** channels, which are already in migration mode, the API completes the message migration process by populating `migration mode` to `Completed` for a [channel](../resources/channel.md) in a team.

After a **completeMigration** request is made for existing or new channels, you can still import more messages into the team by calling [start migration on channel](channel-startmigration.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

[!INCLUDE [channel-support](../../includes/supported-channels-for-import.md)]

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

## Example 1: Complete Migration when channel is in migration mode.

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "completeMigration_channel",
  "sampleKeys": ["57fb72d0-d811-46f4-8947-305e6072eaa5", "19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/completeMigration
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

## Example 2: Complete migration when channel isn't in migration mode

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "completeMigration_channel1",
  "sampleKeys": ["57fb72d0-d811-46f4-8947-305e6072eaa5", "19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/completeMigration
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.channel"
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

- [channel-startMigration](channel-startmigration.md)
- [Import-message-with-older-timestamp](channel-post-messages.md#example-2-import-messages)
- [get-channel-migration-status](channel-get.md#example-1-get-a-channel)
- [chat-completeMigration](chat-completemigration.md)
- [chat-startMigration](chat-startmigration.md)
