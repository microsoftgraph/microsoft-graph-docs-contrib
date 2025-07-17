---
title: "Get addLargeGalleryViewOperation"
description: "Get the status of an operation that adds the large gallery view to a call."
author: "navali-msft"
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
ms.date: 04/04/2024
---

# Get addLargeGalleryViewOperation

Namespace: microsoft.graph

Get the status of an [operation](../resources/addlargegalleryviewoperation.md) that adds the large gallery view to a call.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "addlargegalleryviewoperation_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/addlargegalleryviewoperation-get-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /app/calls/{callId}/operations/{id}
GET /communications/calls/{callId}/operations/{id}
```

> **Note:** The `/app` path is deprecated. Going forward, use the `/communications` path.

## Request headers

| Name          | Description               |
|:--------------|:--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [addLargeGalleryViewOperation](../resources/addlargegalleryviewoperation.md) object in the response body.

## Example

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get-addLargeGalleryViewOperation-1",
  "sampleKeys": ["57dab8b1-894c-409a-b240-bd8beae78896", "e33176d4-836a-4fd7-b95a-d11bda52811d"]
}-->

```msgraph-interactive
GET https://graph.microsoft.com/v1.0/communications/calls/57dab8b1-894c-409a-b240-bd8beae78896/operations/e33176d4-836a-4fd7-b95a-d11bda52811d
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-addlargegalleryviewoperation-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-addlargegalleryviewoperation-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-addlargegalleryviewoperation-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-addlargegalleryviewoperation-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-addlargegalleryviewoperation-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-addlargegalleryviewoperation-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-addlargegalleryviewoperation-1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-addlargegalleryviewoperation-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "name": "get-addLargeGalleryViewOperation-1",
  "truncated": true,
  "@odata.type": "microsoft.graph.addLargeGalleryViewOperation"
} -->
```http
HTTP/1.1 200 OK

{
  "@odata.type": "#microsoft.graph.addLargeGalleryViewOperation",
  "clientContext": "785f4929-92ca-497b-863f-c778c77c9758",
  "id": "e33176d4-836a-4fd7-b95a-d11bda52811d",
  "resultInfo": null,
  "status": "completed"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get the status of addLargeGalleryView operation.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
