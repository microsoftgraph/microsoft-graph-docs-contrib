---
title: "presence: clearUserPreferredPresence"
description: "Clear the preferred availability and activity status for a user."
author: "benjaminlee"
ms.localizationpriority: medium
doc_type: apiPageType
ms.prod: "cloud-communications"
---

# presence: clearUserPreferredPresence

Namespace: microsoft.graph

Clear the preferred availability and activity status for a user.

## Permissions
The following permission is required to call the API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Presence.ReadWrite                          |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Presence.ReadWrite.All                      |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/presence/clearUserPreferredPresence
```

## Request headers
| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply an empty JSON object `{}` for this method.

## Response
If successful, this method returns a `200 OK` response code.

## Examples

### Request

The following is an example of a request that clears the preferred availability and activity status for a user.
<!-- {
  "blockType": "request",
  "name": "clearUserPreferredPresence",
  "sampleKeys": ["fa8bf3dc-eca7-46b7-bad1-db199b62afc3"]
}-->

```msgraph-interactive
POST https://graph.microsoft.com/v1.0/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/clearUserPreferredPresence
Content-Type: application/json

{

}
```

---


### Response

The following is an example of a response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```
