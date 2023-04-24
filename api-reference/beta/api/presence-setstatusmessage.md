---
title: "presence: setStatusMessage"
description: "Set a presence status message for a user."
author: "afedorov"
ms.localizationpriority: medium
doc_type: apiPageType
ms.prod: "cloud-communications"
---

# presence: setStatusMessage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set a presence status message for a user. An optional expiration date and time can be supplied.

## Permissions
The following permission is required to call the API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Presence.ReadWrite                          |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Not supported.                              |

## HTTP Request
<!-- { "blockType": "ignored" } -->
```http
POST /users/{userId}/presence/setStatusMessage
```

## Request headers
| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, provide a JSON object with the following parameters.

| Parameter       | Type            |  Description                                 |
| --------------- | --------------- |------------------------------------------- |
| `statusMessage` | [microsoft.graph.presenceStatusMessage](../resources/presencestatusmessage.md) |It can be set to display the presence status message of a user. |

## Response
If successful, this method returns a `200 OK` response code.

## Examples

### Example 1: Set status message with expiry date

The following request sets the presence status message as "Hey I'm currently in a meeting." for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`, with the expiration on `2022-10-18 at 17:05:33.2079781 Pacific Standard Time`.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "setstatusmessage"
}-->

```http
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/setstatusmessage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/setstatusmessage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/setstatusmessage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/setstatusmessage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/setstatusmessage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/setstatusmessage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

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

### Example 2: Set status message of another user

The following request sets the presence status message as "Hey I'm currently in a meeting." for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3`. Then presence for user `fa8bf3dc-eca7-46b7-bad1-db199b62afc3` is obtained on behalf of other user via a [getPresence](presence-get.md) request.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "setstatusmessage-another-user"
}-->
```http
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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/setstatusmessage-another-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/setstatusmessage-another-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/setstatusmessage-another-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/setstatusmessage-another-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/setstatusmessage-another-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/setstatusmessage-another-user-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "name": "setstatusmessage-another-user",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

### Example 3:  Get another user presence
This request should be executed on behalf of another user.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "setstatusmessage-another-user-get-presence"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/fa8bf3dc-eca7-46b7-bad1-db199b62afc3/presence
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/setstatusmessage-another-user-get-presence-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/setstatusmessage-another-user-get-presence-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/setstatusmessage-another-user-get-presence-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/setstatusmessage-another-user-get-presence-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/setstatusmessage-another-user-get-presence-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/setstatusmessage-another-user-get-presence-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
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
