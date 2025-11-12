---
title: "channel: startMigration"
description: "Start the migration of external messages by enabling migration mode in the existing channel"
ms.localizationpriority: medium
author: "MehakAgarwal"
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 06/12/2025
---

# channel: startMigration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The API allows users to enable migration mode on existing channels. Previously, users were only allowed to initiate import operations on newly created Standard Channels in the empty state ([import-external-messages-to-teams](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams)).

Users are also allowed to define a minimum timestamp for content to be migrated, allowing them to import messages in the past. Provided timestamp is required to be older than the current `createdDateTime` for a [channel](../resources/channel.md).

Provided timestamp is used to replace the existing `createdDateTime` of the [channel](../resources/channel.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

[!INCLUDE [channel-support](../../includes/supported-channels-for-import.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_startmigration" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-completemigration-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST  /teams/{team-id}/channels/{channel-id}/startMigration
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Optional request body

You can optionally provide a request body to specify the minimum timestamp for the messages to be migrated. If you don't provide a request body, the API uses the current date and time as the minimum timestamp.

```json
{
  "conversationCreationDateTime": "2024-01-01T00:00:00Z"
}
```

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example1: Start Migration on an existing channel with a specific timestamp

### Request

The following example shows a request.
<!-- markdownlint-disable MD025 -->
<!-- markdownlint-disable MD022 -->

<!-- {
  "blockType": "request",
  "name": "startMigration_channel",
  "sampleKeys": ["57fb72d0-d811-46f4-8947-305e6072eaa5", "19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/startMigration
```

<!-- markdownlint-disable MD001 -->
<!-- markdownlint-disable MD024 -->
### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

## Example 2: Start migration when channel is already in migration mode.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "startMigration_channel1",
  "sampleKeys": ["57fb72d0-d811-46f4-8947-305e6072eaa5", "19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/startMigration
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
  "description": "startMigration_ channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

## Related content

- [channel-completeMigration](channel-completemigration.md)
- [Import-message-with-older-timestamp](channel-post-messages.md#example-2-import-messages)
- [get-channel-migration-status](channel-get.md#example-1-get-a-channel)
- [chat-completeMigration](chat-completemigration.md)
- [chat-startMigration](chat-startmigration.md)
