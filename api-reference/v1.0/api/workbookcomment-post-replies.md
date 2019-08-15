---
title: "Create workbookCommentReply"
description: "Use this API to create a new workbookCommentReply."
localization_priority: Normal
author: "grangeryy"
ms.prod: ""
doc_type: "apiPageType"
---

# Create workbookCommentReply

Use this API to create a new workbookCommentReply.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | Not supported. |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /drive/root/workbook/comments/{id}/replies
POST /me/drive/root/workbook/comments/{id}/replies
POST /workbooks/{id}/workbook/comments/{id}/replies
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply a JSON representation of [workbookCommentReply](../resources/workbookcommentreply.md) object.

## Response

If successful, this method returns `201, Created` response code and a new [workbookCommentReply](../resources/workbookcommentreply.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "create_workbookcommentreply_from_workbookcomment"
}-->

```http
POST https://graph.microsoft.com/v1.0/drive/root/workbook/comments/{id}/replies
Content-type: application/json

{
  "content": "content-value",
  "contentType": "contentType-value"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.workbookCommentReply"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "content": "content-value",
  "contentType": "contentType-value",
  "id": "id-value"
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
