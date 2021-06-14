---
title: "Clear presence"
description: "Clear the presence information for a user's application presence session."
author: "jsandoval-msft"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "cloud-communications"
---

# Clear presence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> Please refer to [Set presence - concept: presence sessions](presence-set.md#concept-presence-sessions) for the concept of presence sessions.

The application can clear its presence session. If a user's only presence session (all sessions from Teams clients and applications adding together) gets cleared, the user's presence will change to `Offline/Offline`.

## Permissions
The following permission is required to call the API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions            |
| :-------------- | :--------------------- |
| Application     | Presence.ReadWrite.All |

## HTTP Request
Request to clear a presence session:
<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/presence/clearPresence
```

## Request headers
| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required. |
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter | Type   | Description                                   |
| :-------- | :----- | :-------------------------------------------- |
| sessionId | string | The ID of the application's presence session. |


> [!IMPORTANT]
> * When calling this API, the ID of the application should be supplied as the `sessionId`.

## Response
If successful, this method returns a `200 OK` response code.

If the presence session did not exist, this method returns a `404 NotFound` response code.

## Examples

### Example 1: Clear the application's presence session
Below example shows the application with ID `22553876-f5ab-4529-bffb-cfe50aa89f87` updating its presence session for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "clear--presence"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/clearPresence
Content-Type: application/json

{
  "sessionId": "22553876-f5ab-4529-bffb-cfe50aa89f87"
}
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```