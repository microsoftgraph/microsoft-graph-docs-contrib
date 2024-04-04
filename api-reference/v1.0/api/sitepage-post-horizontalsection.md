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

Create a [horizontalSection](../resources/horizontalSection.md) object in a given [sitePage](../resources/sitepage.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.ReadWrite.All                         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.ReadWrite.All                         |

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
| Authorization | Bearer {token}. Required.   |
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
POST https://graph.microsoft.com/v1.0/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.sitePage/canvasLayout/horizontalSections
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
