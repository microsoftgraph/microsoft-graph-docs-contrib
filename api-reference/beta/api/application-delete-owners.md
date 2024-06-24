---
title: "Remove owner"
description: "Remove an owner from an application."
author: "sureshja"
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: apiPageType
---

# Remove owner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove an owner from an [application](../resources/application.md). As a recommended best practice, apps should have at least two owners.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "application_delete_owners" } -->
[!INCLUDE [permissions-table](../includes/permissions/application-delete-owners-permissions.md)]

## HTTP request

You can address the application using either its **id** or **appId**. **id** and **appId** are referred to as the **Object ID** and **Application (Client) ID**, respectively, in app registrations in the Microsoft Entra admin center.
<!-- { "blockType": "ignored" } -->
```http
DELETE /applications/{id}/owners/{id}/$ref
DELETE /applications(appId='{appId}')/owners/{id}/$ref
```

> [!CAUTION]
> If `/$ref` is not appended to the request and the calling app has permissions to manage the user who is the app owner, the user will also be deleted from Microsoft Entra ID; otherwise, a `403 Forbidden` error is returned. You can restore deleted users through the [Restore deleted items API](directory-deleteditems-restore.md).

## Request headers
| Name | Description|
|:---- |:---------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, supply the identifier of the directory object to be assigned as owner.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

The following example shows the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "application_delete_owners"
}-->

```http
DELETE https://graph.microsoft.com/beta/applications/{id}/owners/{id}/$ref
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/application-delete-owners-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/application-delete-owners-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/application-delete-owners-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/application-delete-owners-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/application-delete-owners-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/application-delete-owners-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/application-delete-owners-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/application-delete-owners-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Remove owner",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
