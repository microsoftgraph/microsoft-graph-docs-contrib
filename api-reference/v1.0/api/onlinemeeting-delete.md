---
title: "Delete onlineMeeting"
description: "Delete an online meeting."
author: "awang119"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Delete onlineMeeting

Namespace: microsoft.graph

Delete an [onlineMeeting](../resources/onlinemeeting.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

Permissions for the following HTTP request:

<!-- { "blockType": "ignored" } -->

```http
DELETE /me/onlineMeetings/{meetingId}
```

<!-- { 
  "blockType": "permissions", 
  "name": "onlinemeeting_delete", 
  "requestUrls": ["DELETE /me/onlineMeetings/{meetingId}"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-delete-permissions.md)]

Permissions for the following HTTP request:

<!-- { "blockType": "ignored" } -->

```http
DELETE /users/{userId}/onlineMeetings/{meetingId}
```

<!-- { 
  "blockType": "permissions", 
  "name": "onlinemeeting_delete_2", 
  "requestUrls": ["DELETE /users/{userId}/onlineMeetings/{meetingId}"]
 } -->
[!INCLUDE [permissions-table](../includes/permissions/onlinemeeting-delete-2-permissions.md)]

> [!IMPORTANT]
> To use application permission for this API, tenant administrators must create an [application access policy](/graph/cloud-communication-online-meeting-application-access-policy) and grant it to a user to authorize the app configured in the policy to delete online meetings on behalf of that user (with user ID specified in the request path).

## HTTP request
To get an **onlineMeeting** using the meeting ID with delegated (`/me`) and app (`/users/{userId}`) permission:
<!-- { "blockType": "ignored" } -->
```http
DELETE /me/onlineMeetings/{meetingId}
DELETE /users/{userId}/onlineMeetings/{meetingId}
```

> [!NOTE]
> - **userId** is the object ID of a user in [Microsoft Entra admin center > user management page](https://entra.microsoft.com/#blade/Microsoft_AAD_IAM/UsersManagementMenuBlade). For more details, see [Configure application access to online meetings](/graph/cloud-communication-online-meeting-application-access-policy).
> - `meetingId` is the **id** of an [onlineMeeting](../resources/onlinemeeting.md) object.

## Request headers
| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

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

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-call-2-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-call-2-python-snippets.md)]
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

