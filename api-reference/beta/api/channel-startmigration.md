---
title: "channel: startMigration"
description: "Start the migration of external messages by enabling migration mode in an existing channel."
ms.localizationpriority: medium
author: "MehakAgarwal"
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 06/12/2025
---

# channel: startMigration

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Start the migration of external messages by enabling migration mode in an existing [channel](../resources/channel.md). Import operations were limited to newly created standard channels that were in an empty state. For more information, see [Import third-party platform messages to Teams using Microsoft Graph](/microsoftteams/platform/graph-api/import-messages/import-external-messages-to-teams).

Users are also allowed to define a minimum timestamp for content to be migrated, allowing them to import messages from the past. The provided timestamp must be older than the current **createdDateTime** for a [channel](../resources/channel.md). The provided timestamp is used to replace the existing **createdDateTime** of the [channel](../resources/channel.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

[!INCLUDE [channel-support](../../includes/supported-channels-for-import.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_startmigration" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-startmigration-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST  /teams/{team-id}/channels/{channel-id}/startMigration
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
|conversationCreationDateTime|DateTimeOffset|The minimum timestamp for the messages to be migrated. The timestamp must be older than the current **createdDateTime** of the channel. If not provided, the current date and time is used.|

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Example 1: Start the migration on an existing channel with a specific timestamp

The following example shows how to start the migration on an existing channel with a specific timestamp.
#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "startMigration_channel",
  "sampleKeys": ["57fb72d0-d811-46f4-8947-305e6072eaa5", "19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/startMigration
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Start the migration when a channel is already in migration mode

The following example shows how to start the migration when a channel is already in migration mode. This request fails with a `400 Bad Request` response.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "startMigration_channel_fail",
  "sampleKeys": ["57fb72d0-d811-46f4-8947-305e6072eaa5", "19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/teams/57fb72d0-d811-46f4-8947-305e6072eaa5/channels/19:4b6bed8d24574f6a9e436813cb2617d8@thread.tacv2/startMigration
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
  "description": "startMigration_ channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

## Related content

- [channel: completeMigration](channel-completemigration.md)
- [Import message with older timestamp](channel-post-messages.md#example-2-import-messages).
- [Get channel migration status](channel-get.md#example-1-get-a-channel).
- [chat: completeMigration](chat-completemigration.md)
- [chat: startMigration](chat-startmigration.md)
