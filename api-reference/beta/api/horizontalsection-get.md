---
title: 'Get horizontalSection'
description: 'Read the properties and relationships of a horizontalSection object.'
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Get horizontalSection

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [horizontalSection](../resources/horizontalsection.md) object.

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
GET /sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}
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

If successful, this method returns a `200 OK` response code and a [horizontalSection](../resources/horizontalsection.md) object in the response body.

## Examples

### Example 1: Get a horizontalSection object

#### Request

The following is an example of a request.

<!-- { "blockType": "ignored" } -->

``` http
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}
```

#### Response

The following is an example of the response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.horizontalSection"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "layout": "twoColumns",
  "id": "1",
  "emphasis": "soft"
}
```

### Example 2: Get a horizontalSection object using select and expand
#### Request

With `select` and `expand` statements, you can retrieve horizontalSection metadata and column information in a single request.

<!-- { "blockType": "ignored" } -->

``` http
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}?select=id,expand=columns
```

#### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.horizontalSection"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "layout": "twoColumns",
  "id": "1",
  "columns":[{
    "id": "1",
    "width": 6
  },{
    "id": "2",
    "width": 6
  }]
}
```
