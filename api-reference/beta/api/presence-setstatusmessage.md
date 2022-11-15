---
title: "presence: setStatusMessage"
description: "Set the status message for a user"
author: "afedorov"
ms.localizationpriority: medium
doc_type: apiPageType
ms.prod: "cloud-communications"
---

# presence: setStatusMessage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set the status message for a user. Optional expiration date and time can be supplied as well.

Status message text can be xml-sanitized which leads to having a different status message applied, see [example](#example-2-set-status-message-xml-sanitization).

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
| `statusMessage` | [microsoft.graph.presenceStatusMessage](../resources/presenceStatusMessage.md) | Status message that can be set to display a text message in presence. |

## Response
If successful, this method returns a `200 OK` response code.

## Examples

### Example 1: Set status message with expiry date

The following request sets the user status message as "Hey I'm currently in a meeting." for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`, with the expiration on 2022-10-18 at 17:05:33.2079781 Pacific Standard Time.

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

### Example 2: Set status message: xml sanitization

The first request sets the user status message as "Hey I'm currently in a meeting." for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`. Then user's self presence with status message is obtained using a [getPresence](presence-get.md) request.

#### Set status message: request

<!-- {
  "blockType": "request",
  "name": "setstatusmessage-xml-sanitization"
}-->
```msgraph-interactive
POST https://graph.microsoft.com/beta/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence/setStatusMessage
Content-Type: application/json

{
  "statusMessage": {
    "message": {
      "content": "<html>Hello world a<b</html>",
      "contentType": "text"
    }
  }
}
```

---

#### Set status message: response

<!-- {
  "blockType": "response",
  "name": "setstatusmessage-xml-sanitization",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

#### Get self presence: request

<!-- {
  "blockType": "request",
  "name": "setstatusmessage-xml-sanitization-get-me-presence"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/presence
```

---

#### Get self presence: response

<!-- {
  "blockType": "response",
  "name": "setstatusmessage-xml-sanitization-get-me-presence",
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
      "content": "Hello world a",
      "contentType": "text"
    },
    "publishedDateTime": "2022-10-18T00:07:15.4012511Z",
    "expiryDateTime": {
      "dateTime": "9999-12-31T23:59:59.9999999",
      "timeZone": "UTC",
    }
  }
}
```

### Example 3: Get status message of another user.

The following request sets the user status message as "Hey I'm currently in a meeting." for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`. Then presence for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`is obtained on behalf of other user via a [getPresence](presence-get.md) request.

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