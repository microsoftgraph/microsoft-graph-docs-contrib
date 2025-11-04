---
title: "Create workbookCommentReply"
description: "Create a new workbookCommentReply."
ms.localizationpriority: medium
author: "AmandaHan123"
ms.subservice: "excel"
doc_type: "apiPageType"
ms.date: 09/05/2025
---

# Create workbookCommentReply

Namespace: microsoft.graph

Create a new [workbookCommentReply](../resources/workbookcommentreply.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workbookcomment_post_replies" } -->
[!INCLUDE [permissions-table](../includes/permissions/workbookcomment-post-replies-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/drive/items/{id}/workbook/comments/{id}/replies
POST /me/drive/root:/{item-path}:/workbook/comments/{id}/replies
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [workbookCommentReply](../resources/workbookcommentreply.md) object.

## Response

If successful, this method returns a `201 Created` response code and a new [workbookCommentReply](../resources/workbookcommentreply.md) object in the response body.

## Examples

### Example 1: Create a reply of a plain contentType

The following example shows how to create a reply of a `plain` **contentType**.

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_workbookcommentreply_from_workbookcomment",
  "sampleKeys": ["01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN","97A21473-8339-4BF0-BCB6-F55E4909FFB8"]
}-->

```http
POST https://graph.microsoft.com/beta/me/drive/items/01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN/workbook/comments/97A21473-8339-4BF0-BCB6-F55E4909FFB8/replies
Content-Type: application/json

{
  "content": "This is my reply to the comment.",
  "contentType": "plain"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-workbookcommentreply-from-workbookcomment-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-workbookcommentreply-from-workbookcomment-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-workbookcommentreply-from-workbookcomment-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-workbookcommentreply-from-workbookcomment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-workbookcommentreply-from-workbookcomment-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-workbookcommentreply-from-workbookcomment-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookCommentReply"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "content": "This is my reply to the comment.",
  "contentType": "plain",
  "id": "{97A21473-8339-4BF0-BCB6-F55E4909FFB8}",
  "richContent": "",
  "mentions": []
}
```

### Example 2: Create a reply of a mention contentType

The following example shows how to create a reply of a `mention` **contentType**.

#### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_workbookcommentreply_from_workbookcomment_mention",
  "sampleKeys": ["01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN","97A21473-8339-4BF0-BCB6-F55E4909FFB8"]
}-->

```http
POST https://graph.microsoft.com/beta/me/drive/items/01CYZLFJGUJ7JHBSZDFZFL25KSZGQTVAUN/workbook/comments/97A21473-8339-4BF0-BCB6-F55E4909FFB8/replies
Content-Type: application/json

{
  "richContent": "<at id=\"0\">Kate Kristensen</at> - Can you take a look?",
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
[!INCLUDE [sample-code](../includes/snippets/csharp/create-workbookcommentreply-from-workbookcomment-mention-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-workbookcommentreply-from-workbookcomment-mention-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-workbookcommentreply-from-workbookcomment-mention-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-workbookcommentreply-from-workbookcomment-mention-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-workbookcommentreply-from-workbookcomment-mention-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-workbookcommentreply-from-workbookcomment-mention-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookCommentReply"
} -->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "content": "@Kate Kristensen - Can you take a look?",
  "contentType": "mention",
  "id": "{97A21473-8339-4BF0-BCB6-F55E4909FFB8}",
  "richContent": "<at id=\"0\">Kate Kristensen</at> - Can you take a look?",
  "mentions": [
    {
      "id": 0,
      "name": "Kate Kristensen",
      "email": "kakri@contoso.com"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create workbookCommentReply",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


