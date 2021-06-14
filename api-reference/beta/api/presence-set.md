---
title: "Set presence"
description: "Set the presence information for a user's application presence session."
author: "jsandoval-msft"
localization_priority: Normal
doc_type: apiPageType
ms.prod: "cloud-communications"
---

# Set presence

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

### Concept: presence sessions
A user could have multiple presence sessions as the user could be on multiple Teams clients (desktop, mobile and web). Each Teams client has an independent presence session and the user's presence is an aggregated state from all the sessions behind.

Similarly an application can have its own presence session for a user and be able to update the state.

The precedence for how session states are aggregated is summarized as follows:
* User-configured > app-configured (user-configured state overrides others)
* Among app-configured: DoNotDisturb (currently not supported for set presence) > Busy > Available > Away

### Timeout, expiration and keep alive
A presence session may **time out** and **expire**, so the application needs to call this API before the **timeout**, to maintain the desired state for the session; or before the **expiration**, to keep the session alive.

A presence session can time out if the availability is `Available` and the timeout is 5 minutes. When it times out, the presence state would fade way in stages. For example if an application sets the presence session as `Available/Available`, the state would change to `Available/AvailableInactive` in 5 minutes with the first timeout, then `Away/Away` in another 5 minutes with the second timeout.

The expiration of a presence session is configurable with the `expirationDuration` parameter. When a session expires it becomes `Offline`.

## Permissions
The following permission is required to call the API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type | Permissions            |
| :-------------- | :--------------------- |
| Application     | Presence.ReadWrite.All |

## HTTP Request
Request to set a presence session:
<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/presence/setPresence
```
## Request headers
| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter          | Type     | Description                                                                                            |
| :----------------- | :------- | :----------------------------------------------------------------------------------------------------- |
| sessionId          | string   | The ID of the application's presence session.                                                          |
| availability       | string   | The base presence information.                                                                         |
| activity           | string   | The supplemental information to availability.                                                          |
| expirationDuration | duration | The expiration of the app presence session. The value is represented in ISO 8601 format for durations. |

> [!IMPORTANT]
> * When calling this API, the ID of the application should be supplied as the `sessionId`.

Supported combinations of `availability` and `activity` are:

| availability | activity          | Description                                              |
| :----------- | :---------------- | :------------------------------------------------------- |
| Available    | Available         | Updates the presence session as Available.               |
| Busy         | InACall           | Updates the presence session as Busy, InACall.           |
| Busy         | InAConferenceCall | Updates the presence session as Busy, InAConferenceCall. |
| Away         | Away              | Updates the presence session as Away.                    |

## Response
If successful, this method returns a `200 OK` response code.

## Examples

### Example 1: Set the application's presence session or keep it alive
Below example shows the application with ID `22553876-f5ab-4529-bffb-cfe50aa89f87` setting its presence session for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "set-presence"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setPresence
Content-Type: application/json

{
  "sessionId": "22553876-f5ab-4529-bffb-cfe50aa89f87",
  "availability": "Available",
  "activity": "Available",
  "expirationDuration": "PT1H"
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
