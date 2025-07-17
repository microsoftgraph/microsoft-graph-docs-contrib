---
title: "Delete webPart"
description: "Delete a webPart object."
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
ms.date: 08/13/2024
---

# Delete webPart

Namespace: microsoft.graph

Delete a [webPart](../resources/webpart.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "webpart_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/webpart-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
DELETE /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/webParts/{webpart-id}
DELETE /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection/webparts/{webpart-index}
DELETE /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontal-section-id}/columns/{horizontal-section-column-id}/webparts/{webpart-index}
```
## Request headers

|Name|Description|
|:------|:------------|
|Authorization| Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| _if-match_ | eTag. If this request header is included and the eTag provided does not match the current tag on the item, a `412 Precondition Failed` response is returned and the item will not be deleted.|

## Request body

Don't supply a request body with this method.

## Response

If successful, this method returns a `204 No Content`. It does not return anything in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "delete-webpart", "scopes": "sites.readwrite.all" } -->

```http
DELETE https://graph.microsoft.com/v1.0/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.sitePage/webParts/29c08ca7-7f16-4c97-ba05-ea8d2850fc0e
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-webpart-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-webpart-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-webpart-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-webpart-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-webpart-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-webpart-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-webpart-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-webpart-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

---

### Response

The following example shows the response.

<!-- { "blockType": "response" } -->

```http
HTTP/1.1 204 No Content
```

<!--
{
  "type": "#page.annotation",
  "description": "Delete a webpart object.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "WebParts/Delete",
  "suppressions": []
}
-->
