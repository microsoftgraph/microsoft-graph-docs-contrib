---
title: "Complete migration for a channel"
description: "End the message migration mode on the channel resource."
localization_priority: Normal
author: "laujan"
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Complete migration for a channel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Complete the message migration mode on a [channel](../resources/channel.md) in a team.

## Permissions

The following permission is required to call this API. To learn more, *see* [Permissions](/graph/permissions-reference).

|Permission type      | Permission  |
|:--------------------|:---------------------------------------------------------|
|Application | Teamwork.Migrate.All|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{teamId}/channels/{channelId}/completeMigration
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example

### Request

The following is an example of the request.
<!-- markdownlint-disable MD025 -->
<!-- markdownlint-disable MD022 -->
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "completeMigration_channel"
}-->

```http
POST https://graph.microsoft.com/beta/teams/teamId/completeMigration
```
<!-- markdownlint-disable MD001 -->
<!-- markdownlint-disable MD024 -->
### Response

The following is an example of the response.
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
  "description": "completeMigration_ channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
