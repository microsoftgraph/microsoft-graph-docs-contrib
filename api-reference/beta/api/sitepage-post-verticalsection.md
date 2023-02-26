---
title: 'Create verticalSection'
description: "Create a verticalSection in a page"
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---
# Create verticalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [verticalSection](../resources/verticalSection.md) object in a given [sitePage](../resources/sitepage.md). 

A [sitePage](../resources/sitepage.md) can only have one vertical section. If a vertical section already exists, this method returns a `409 Conflict` response code.

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
PUT /sites/{site-id}/pages/{page-id}/canvasLayout/verticalSection
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [verticalSection](../resources/verticalSection.md) resource to create.

## Response

If successful, this method returns a `201 Created` response code and a created [verticalSection](../resources/verticalSection.md) object in the response body.

If the vertical section already exists, this method returns a `409 Conflict` response code.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "create_verticalSection"
}
-->

```http
PUT https://graph.microsoft.com/beta/sites/{site-id}/pages/{page-id}/canvasLayout/verticalSection
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

### Response

The following is an example of the response

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
