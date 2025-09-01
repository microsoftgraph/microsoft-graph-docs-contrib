---
title: "Create workbookComment"
description: "Create a new workbookComment."
ms.localizationpriority: medium
author: "AmandaHan123"
ms.subservice: "excel"
doc_type: "apiPageType"
ms.date: 09/01/2025
---

# Create workbookComment

Namespace: microsoft.graph

Create a new [workbookComment](../resources/workbookcomment.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "workbookcomment-post-comments" } -->
[!INCLUDE [permissions-table](../includes/permissions/workbookcomment-post-comments-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /me/drive/items/{id}/workbook/comments
POST /me/drive/root:/{item-path}:/workbook/comments
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

In the request body, supply a JSON representation of a [workbookComment](../resources/workbookcomment.md) object.

## Response

If successful, this method returns a `201 Created` response code and a new [workbookComment](../resources/workbookcomment.md) object in the response body.

## Examples

### Request

The following example shows a request to add a comment of plain type.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_workbookcomment_from_workbook"
}-->

```http
POST https://graph.microsoft.com/beta/drive/items/{id}/workbook/comments
Content-type: application/json

{
  "cellAddress": "Sheet1!A1",
  "content": "This is my comment.",
  "contentType": "plain"
}
```
---

The following example shows a request to add a comment of mention type.

# [HTTP](#tab/http)

```http
POST https://graph.microsoft.com/beta/drive/items/{id}/workbook/comments
Content-type: application/json

{
  "cellAddress": "Sheet1!A1",
  "richContent": "<at id=\"0\">Kate Kristensen</at> - This is my comment.",
  "mentions": [{
        "id": 0,
        "name": "Kate Kristensen",
        "email": "kakri@contoso.com"
        }],
  "contentType": "mention"
}
```

### Response

The following example shows the response when the reply is plain type.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookComment"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "content": "This is my comment.",
  "contentType": "plain",
  "id": "{97A21473-8339-4BF0-BCB6-F55E4909FFB8}",
  "cellAddress": "Sheet1!A1",
  "richContent": "",
  "mentions": []
}
```
---

The following example shows the response when the comment is mention type.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookComment"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "content": "@Kate Kristensen - This is my comment.",
  "contentType": "mention",
  "id": "{97A21473-8339-4BF0-BCB6-F55E4909FFB8}",
  "richContent": "<at id=\"0\">Kate Kristensen</at> - Can you take a look?",
  "mentions": [{
        "id": 0,
        "name": "Kate Kristensen",
        "email": "kakri@contoso.com"
  }],
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


