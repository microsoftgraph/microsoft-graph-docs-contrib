---
title: "Create workbookComment"
description: "Create a new workbookComment object."
ms.localizationpriority: medium
author: "AmandaHan123"
ms.subservice: "excel"
doc_type: "apiPageType"
ms.date: 09/05/2025
---

# Create workbookComment

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [workbookComment](../resources/workbookcomment.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workbookcomment_post_comments" } -->
[!INCLUDE [permissions-table](../includes/permissions/workbookcomment-post-comments-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/drive/items/{id}/workbook/comments
POST /me/drive/root:/{item-path}:/workbook/comments
POST /users/{id}/drive/items/{id}/workbook/comments
POST /users/{id}/drive/root:/{id}:/workbook/comments
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [workbookComment](../resources/workbookcomment.md) object.

## Response

If successful, this method returns a `201 Created` response code and a new [workbookComment](../resources/workbookcomment.md) object in the response body.

## Examples

### Example 1: Create a comment of a plain contentType

The following example shows how to create a comment of a `plain` **contentType**.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_workbookcomment_from_workbook",
  "sampleKeys": ["01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN"]
}-->

```http
POST https://graph.microsoft.com/beta/me/drive/items/01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN/workbook/comments
Content-Type: application/json

{
  "cellAddress": "Sheet1!A1",
  "content": "This is my comment.",
  "contentType": "plain"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-workbookcomment-from-workbook-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-workbookcomment-from-workbook-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-workbookcomment-from-workbook-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-workbookcomment-from-workbook-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-workbookcomment-from-workbook-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-workbookcomment-from-workbook-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookComment"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "content": "This is my comment.",
  "contentType": "plain",
  "id": "{97A21473-8339-4BF0-BCB6-F55E4909FFB8}",
  "cellAddress": "Sheet1!A1",
  "richContent": "",
  "mentions": []
}
```

### Example 2: Create a comment of a mention contentType

The following example shows how to create a comment of a `mention` **contentType**.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_workbookcomment_from_workbook_mention",
  "sampleKeys": ["01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN"]
}-->

```http
POST https://graph.microsoft.com/beta/me/drive/items/01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN/workbook/comments
Content-Type: application/json

{
  "cellAddress": "Sheet1!A1",
  "richContent": "<at id=\"0\">Kate Kristensen</at> - This is my comment.",
  "mentions": [
    {
      "id": 0,
      "name": "Kate Kristensen",
      "email": "kakri@contoso.com"
    }
  ],
  "contentType": "mention"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-workbookcomment-from-workbook-mention-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-workbookcomment-from-workbook-mention-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-workbookcomment-from-workbook-mention-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-workbookcomment-from-workbook-mention-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-workbookcomment-from-workbook-mention-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-workbookcomment-from-workbook-mention-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookComment"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "content": "@Kate Kristensen - This is my comment.",
  "contentType": "mention",
  "id": "{97A21473-8339-4BF0-BCB6-F55E4909FFB8}",
  "richContent": "<at id=\"0\">Kate Kristensen</at> - This is my comment.",
  "mentions": [
    {
      "id": 0,
      "name": "Kate Kristensen",
      "email": "kakri@contoso.com"
    }
  ],
  "cellAddress": "Sheet1!A1"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create workbookComment",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


