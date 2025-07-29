---
title: "call: stopRecording"
ms.date: 11/15/2024
description: "Stop the recording of a call."
author: "calvintang"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# call: stopRecording

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Stop the recording of a call.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "call_stoprecording" } -->
[!INCLUDE [permissions-table](../includes/permissions/call-stoprecording-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->

```http
POST /communications/calls/{id}/microsoft.graph.StopRecording
```

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type | application/json. Required. |

## Request body

Don't supply a request body for this method.

## Response

This method returns a `202 Accepted` response code and a [stopRecordingOperation](../resources/stoprecordingoperation.md) object created for this request.

## Example

The following example shows how to call this API.

### Request

The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "call-stopRecording"
}-->

```http
POST https://graph.microsoft.com/beta/communications/calls/02000980-58ea-4bf2-bb77-8ba548da56f7/microsoft.graph.StopRecording
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/call-stoprecording-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/call-stoprecording-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/call-stoprecording-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/call-stoprecording-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/call-stoprecording-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/call-stoprecording-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response
The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "call-stopRecording",
  "truncated": true,
  "@odata.type": "microsoft.graph.stopRecordingOperation"
} -->

```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/beta/communications/calls/02000980-58ea-4bf2-bb77-8ba548da56f7/operations/2d7ab59c-f8bd-4911-8302-6d58ab60e338

{
  "@odata.type": "#microsoft.graph.stopRecordingOperation",
  "clientContext": "clientContext-value",
  "status": "completed"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2024-11-12 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "call: stopRecording",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
