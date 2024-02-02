---
title: 'Create horizontalSection'
description: "Create a horizontalSection in a page"
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---
# Create horizontalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [horizontalSection](../resources/horizontalSection.md) object in a given [sitePage](../resources/sitepage.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sitepage_post_horizontalsection" } -->
[!INCLUDE [permissions-table](../includes/permissions/sitepage-post-horizontalsection-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/horizontalSections
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [horizontalSection](../resources/horizontalSection.md) resource to create.

## Response

If successful, this method returns a `201 Created` response code and a created [horizontalSection](../resources/horizontalSection.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- { "blockType": "ignored" } -->

```http
POST https://graph.microsoft.com/beta/sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/horizontalSections
Content-Type: application/json

{
  "emphasis": "soft",
  "layout": "oneColumn",
  "id": "3",
  "columns": [
    {
      "id": "1",
      "width": 12,
      "webparts":[
        {
          "id":"20a69b85-529c-41f3-850e-c93458aa74eb",
          "innerHtml":"<p>sample text in text web part</p>"
        }
      ]
    }
  ]
}
```

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.horizontalSection",
  "truncated": true
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "emphasis": "soft",
  "layout": "oneColumn",
  "id": "3",
  "columns": [
    {
      "id": "1",
      "width": 12,
      "webparts":[
        {
          "id":"20a69b85-529c-41f3-850e-c93458aa74eb",
          "innerHtml":"<p>sample text in text web part</p>"
        }
      ]
    }
  ]
}
```
