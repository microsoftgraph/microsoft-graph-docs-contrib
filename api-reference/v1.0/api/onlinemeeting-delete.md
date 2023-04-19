---
title: "Delete onlineMeeting"
description: "Delete an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.prod: "cloud-communications"
doc_type: apiPageType
---

# Delete onlineMeeting

Namespace: microsoft.graph

Delete an [onlineMeeting](../resources/onlinemeeting.md) object.

## Permissions

| Permission type | Permissions (from least to most privileged)                  |
| :-------------- | :----------------------------------------------------------- |
| Delegated (work or school account)     | OnlineMeetings.ReadWrite              |
| Delegated (personal Microsoft account) | Not supported.                        |
| Application                            | OnlineMeetings.ReadWrite.All*         |

To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to delete online meetings on behalf of that user (with user ID specified in the request path).

## HTTP request
To get an **onlineMeeting** using the meeting ID with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" } -->
```http
DELETE /me/onlineMeetings/{meetingId}
DELETE /users/{userId}/onlineMeetings/{meetingId}
```

> [!NOTE]
> - `userId` is the object ID of a user in [Azure user management portal](https://portal.azure.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade). For more details, see [Configure application access to online meetings](/graph/cloud-communication-online-meeting-application-access-policy).
> - `meetingId` is the **id** of an [onlineMeeting](../resources/onlinemeeting.md) object.

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request
The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "sampleKeys": ["550fae72-d251-43ec-868c-373732c2704f_19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype"],
  "name": "delete-call-2"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/me/onlineMeetings/550fae72-d251-43ec-868c-373732c2704f_19:meeting_M2IzYzczNTItYmY3OC00MDlmLWJjMzUtYmFiMjNlOTY4MGEz@thread.skype
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-call-2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-call-2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-call-2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-call-2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-call-2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-call-2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete call",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->

