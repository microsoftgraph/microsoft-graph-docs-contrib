---
title: 'Update horizontalSection'
description: "Update the properties of a horizontalSection object."
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---
# Update horizontalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [horizontalSection](../resources/horizontalSection.md) object.

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
PATCH /sites/{site-id}/pages/{page-id}/canvasLayout/horizontalSections/{horizontalSectionId}
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [horizontalSection](../resources/horizontalSection.md) resource to update.

## Response

If successful, this method returns a `200 OK` response code and an updated [horizontalSection](../resources/horizontalSection.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_horizontalsection"
}
-->

```http
PATCH https://graph.microsoft.com/beta/sites/{site-id}/pages/{page-id}/canvasLayout/horizontalSections/{horizontalSectionId}
Content-Type: application/json

{
  "emphasis": "strong",
  "layout": "twoColumns",
}
```

### Response

The following is an example of the response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.horizontalSection",
  "truncated": true
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "emphasis": "strong",
  "layout": "twoColumns",
  "id": "3",
  "columns": [
    {
      "id": "1",
      "width": 6
    },
    {
      "id": "2",
      "width": 6
    }
  ]
}
```
