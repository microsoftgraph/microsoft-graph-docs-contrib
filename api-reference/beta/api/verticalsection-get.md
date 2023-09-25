---
title: 'Get verticalSection'
description: 'Read the properties and relationships of a verticalSection object.'
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Get verticalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [verticalSection](../resources/verticalsection.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | Sites.Read.All, Sites.ReadWrite.All         |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | Sites.Read.All, Sites.ReadWrite.All         |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/verticalSection
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [verticalSection](../resources/verticalsection.md) object in the response body.

## Examples

### Example 1: Get a verticalSection object
#### Request

The following is an example of a request.

<!-- { "blockType": "ignored" } -->

```http
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/verticalSection
```

#### Response

The following is an example of the response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.verticalSection"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.verticalSection",
  "emphasis": "neutral"
}
```

### Example 2: Get a verticalSection object using select and expand
#### Request

With `select` and `expand` statements, you can retrieve verticalSection metadata and associated webParts in a single request.

<!-- { "blockType": "ignored" } -->

```http
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/verticalSection?select=emphasis,expand=webparts
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.verticalSection"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "emphasis": "neutral",
  "webparts":[{
    "id": "1212fc8d-dd6b-408a-8d5d-9f1cc787efbb",
    "innerHtml": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vel.</p>"
  }]
}
```
