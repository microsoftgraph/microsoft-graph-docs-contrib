---
title: "team: getAllMessages"
description: "Get messages from teams that a user is a participant in."
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# team: getAllMessages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all messages from [teams](../resources/team.md) that a user is a participant in.

## Permissions

The following permissions are required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Application | Team.Read.All |

> [!NOTE]
> Before calling this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/team/getAllMessages
```

## Optional query parameters

This operation supports [date range parameters](/graph/query-parameters) to customize the response, as shown in the following example.

```http
GET /users/{id}/team/getAllMessages?$top=50&$filter=lastModifiedDateTime gt 2020-06-04T18:03:11.591Z and lastModifiedDateTime lt 2020-06-05T21:00:09.413Z
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required. |

## Response

If successful, this method returns a `200 OK` response code and a [team](../resources/team.md) object in the response body.

## Example

### Request

```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id}/team/getAllMessages
```

### Response


```
