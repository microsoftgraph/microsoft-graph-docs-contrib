---
title: 'Create verticalSection'
description: "Create a verticalSection in a page"
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
ms.topic: reference
---
# Create verticalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [verticalSection](../resources/verticalSection.md) object in a given [sitePage](../resources/sitepage.md). 

A [sitePage](../resources/sitepage.md) can only have one vertical section. If a vertical section already exists, this method returns a `409 Conflict` response code.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sitepage_post_verticalsection" } -->
[!INCLUDE [permissions-table](../includes/permissions/sitepage-post-verticalsection-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
PUT /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [verticalSection](../resources/verticalSection.md) resource to create.

## Response

If successful, this method returns a `201 Created` response code and a created [verticalSection](../resources/verticalSection.md) object in the response body.

If the vertical section already exists, this method returns a `409 Conflict` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)

<!-- { "blockType": "ignored" } -->

```http
PUT https://graph.microsoft.com/beta/sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection
Content-Type: application/json

{
  "emphasis": "soft",
  "webparts":[
    {
      "id":"20a69b85-529c-41f3-850e-c93458aa74eb",
      "innerHtml":"<p>sample text in text web part</p>"
    }
  ]
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-verticalsection-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-verticalsection-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.verticalSection",
  "truncated": true
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "emphasis": "soft",
  "webparts":[
    {
      "id":"20a69b85-529c-41f3-850e-c93458aa74eb",
      "innerHtml":"<p>sample text in text web part</p>"
    }
  ]
}
```
