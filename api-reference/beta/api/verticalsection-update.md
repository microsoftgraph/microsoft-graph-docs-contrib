---
title: 'Update verticalSection'
description: "Update the properties of a verticalSection object."
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---
# Update verticalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [verticalSection](../resources/verticalSection.md) object.

If the vertical section does not exist, this method returns a `404 NotFound` response code.

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
PATCH /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [verticalSection](../resources/verticalSection.md) resource to update.

## Response

If successful, this method returns a `200 OK` response code and an updated [verticalSection](../resources/verticalSection.md) object in the response body.

If the vertical section does not exist, this method returns a `404 NotFound` response code.

## Examples

### Request

The following is an example of a request.

<!-- { "blockType": "ignored" } -->

```http
PATCH https://graph.microsoft.com/beta/sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/verticalSection
Content-Type: application/json

{
  "emphasis": "strong"
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "emphasis": "strong",
  "webparts":[
    {
      "id":"20a69b85-529c-41f3-850e-c93458aa74eb",
      "innerHtml":"<p>sample text in text web part</p>"
    }
  ]
}
```
