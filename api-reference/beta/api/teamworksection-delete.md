---
title: "Delete teamworkSection"
description: "Delete a user-defined section from a user's teamwork."
author: "jsinghmokha"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 03/08/2026
---

# Delete teamworkSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a user-defined [section](../resources/teamworksection.md) from a user's [teamwork](../resources/userteamwork.md). System-defined sections can't be deleted.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworksection_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworksection-delete-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /users/{user-id}/teamwork/sections/{teamworkSection-id}
```

## Request headers

| Header | Value |
|:-------|:------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |
| If-Match | The value of the **@microsoft.graph.sectionsVersion** annotation returned when you [list sections](userteamwork-list-sections.md), or the **@odata.etag** value from any previously retrieved [section](../resources/teamworksection.md). Required for optimistic concurrency control. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

The following errors are possible.

| Response code | Message |
|:---|:---|
| `403 Forbidden` | This section is system-generated and cannot be modified. System-defined sections can't be deleted. |
| `404 Not Found` | The specified section was not found. |
| `412 Precondition Failed` | The `If-Match` header value doesn't match the current section hierarchy version. [List sections](userteamwork-list-sections.md) again to retrieve the current **@microsoft.graph.sectionsVersion** annotation and retry. |
| `428 Precondition Required` | The `If-Match` header is required for this operation. |

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_teamworksection",
  "sampleKeys": ["10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f", "a1b2c3d4-e5f6-7890-abcd-ef1234567890"]
}-->
```http
DELETE https://graph.microsoft.com/beta/users/10f8c3a6-3e2a-4e8b-9c7d-5a4b6c8d9e0f/teamwork/sections/a1b2c3d4-e5f6-7890-abcd-ef1234567890
If-Match: "1742515200"
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-teamworksection-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-teamworksection-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-teamworksection-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-teamworksection-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-teamworksection-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-teamworksection-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}-->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: f6a7b890-1234-5678-9abc-def012345678
2026-03-08 00:00:00 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Delete teamworkSection",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}
-->
