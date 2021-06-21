---
title: "Presence: clearPresence"
description: "Clear the presence information for a user's application presence session."
author: "jsandoval-msft"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "cloud-communications"
---

# Presence: clearPresence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!IMPORTANT]
> 
> For details about the concept of presence sessions, see [Presence: setPresence - concept: presence sessions](presence-setpresence.md#concept-presence-sessions).

The application can clear its presence session. If it is the user's only presence session, the user's presence will change to `Offline/Offline`.

## Permissions
The following permission is required to call the API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Not Supported.                              |
| Delegated (personal Microsoft account) | Not Supported.                              |
| Application                            | Presence.ReadWrite.All                      |

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/presence/clearPresence
```

## Request headers
| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter | Type   | Description                                   |
| :-------- | :----- | :-------------------------------------------- |
| sessionId | string | The ID of the application's presence session. |


> [!IMPORTANT]
> 
> The ID of the application should be provided as the `sessionId`.

## Response
If successful, this method returns a `200 OK` response code.

If the presence session did not exist, this method returns a `404 NotFound` response code.

## Examples

### Example 1: Clear the application's presence session
Below example shows the application with ID `22553876-f5ab-4529-bffb-cfe50aa89f87` updating its presence session for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`.

#### Request

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