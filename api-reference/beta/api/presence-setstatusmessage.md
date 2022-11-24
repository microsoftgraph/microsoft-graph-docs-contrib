---
title: "presence: setStatusMessage"
description: "Set a presence status message for a user".
author: "afedorov"
ms.localizationpriority: medium
doc_type: apiPageType
ms.prod: "cloud-communications"
---

# presence: setStatusMessage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set the Teams Presence Status Message for a user. Optional expiration date and time can be supplied as well.

## Permissions
The following permission is required to call the API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Presence.ReadWrite                          |
| Delegated (personal Microsoft account) | Not Supported.                              |
| Application                            | Presence.ReadWrite.All                      |

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/presence/setStatusMessage
```

## Request headers
| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer \{token\}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter       | Type            |  Description                                 |
| --------------- | --------------- |------------------------------------------- |
| `statusMessage` | [microsoft.graph.presenceStatusMessage](../resources/presenceStatusMessage.md) | Status message that can be set to display a Teams Presence Status Message of a user. |

## Response
If successful, this method returns a `200 OK` response code.

## Examples

### Example 1: Set status message with expiry date

The following request sets the Teams Presence Status Message as "Hey I'm currently in a meeting." for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`, with the expiration on 2022-10-18 at 17:05:33.2079781 Pacific Standard Time.

#### Request

<!-- {
  "blockType": "request",
  "name": "setstatusmessage"
}-->

```msgraph-interactive
POST https://graph.microsoft.com/beta/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setStatusMessage
Content-Type: application/json

{
  "statusMessage": {
    "message": {
        "content": "Hey I'm currently in a meeting.",
        "contentType": "text"
    },
    "expiryDateTime": {
        "dateTime": "2022-10-18T17:05:33.2079781",
        "timeZone": "Pacific Standard Time"
    }
  }
}
```

---

#### Response

<!-- {
  "blockType": "response",
  "name": "setstatusmessage",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

### Example 2: Get status message of another user.

The following request sets the Teams Presence Status Message as "Hey I'm currently in a meeting." for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`. Then presence for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`is obtained on behalf of other user via a [getPresence](presence-get.md) request.

#### Set status message: request

<!-- {
  "blockType": "request",
  "name": "setstatusmessage-another-user"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setStatusMessage
Content-Type: application/json

{
  "statusMessage": {
    "message": {
      "content": "Hey I am available now",
      "contentType": "text"
    }
  }
}
```

---

#### Set status message: response

<!-- {
  "blockType": "response",
  "name": "setstatusmessage-another-user",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

#### Get another user presence: request
This request should be executed on behalf of another user.

<!-- {
  "blockType": "request",
  "name": "setstatusmessage-another-user-get-presence"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence
```

---

#### Get another user presence: response
Since this presence request does not qualify as a [self presence](presence-get.md#example-1-get-your-own-presence-information) request, `statusMessage.expiryDateTime` and `statusMessage.publishedDateTime` properties are not included in the response body.

<!-- {
  "blockType": "response",
  "name": "setstatusmessage-another-user-get-presence",
  "@odata.type": "microsoft.graph.presence",
  "truncated":"true"
} -->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "id": "fa8bf3dc-eca7-46b7-bad1-db199b62afc3",
  "availability": "Available",
  "activity": "Available",
  "outOfOfficeSettings": {
    "message": null,
    "isOutOfOffice": false
  },
  "statusMessage": {
    "message": {
      "content": "Hey I am available now",
      "contentType": "text"
    }
  }
}
```