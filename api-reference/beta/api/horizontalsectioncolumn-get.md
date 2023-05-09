---
title: 'Get horizontalSectionColumn'
description: 'Read the properties and relationships of a horizontalSectionColumn object.'
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: apiPageType
---

# Get horizontalSectionColumn

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [horizontalSectionColumn](../resources/horizontalsectioncolumn.md) object.

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
GET /sites/{sitesId}/pages/{sitePageId}/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}
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

If successful, this method returns a `200 OK` response code and a [horizontalSectionColumn](../resources/horizontalsectioncolumn.md) object in the response body.

## Examples

### Example 1: Get a horizontalSectionColumn
#### Request

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_horizontalsectioncolumn_e1"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-horizontalsectioncolumn-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-horizontalsectioncolumn-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-horizontalsectioncolumn-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-horizontalsectioncolumn-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-horizontalsectioncolumn-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-horizontalsectioncolumn-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.horizontalSectionColumn"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.horizontalSectionColumn",
    "id": "1",
    "width": 6
  }
}
```
### Example 2: Get a horizontalSectionColumn using select and expand
#### Request

With `select` and `expand` statements, you can retrieve horizontalSectionColumn metadata and associated webParts in a single request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_horizontalSectionColumn_e2"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/canvasLayout/horizontalSections/{horizontalSectionId}/columns/{horizontalSectionColumnId}?select=id,expand=webparts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-horizontalsectioncolumn-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-horizontalsectioncolumn-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-horizontalsectioncolumn-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-horizontalsectioncolumn-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-horizontalsectioncolumn-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-horizontalsectioncolumn-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response


<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.horizontalSectionColumn"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.horizontalSectionColumn",
    "id": "1",
    "webparts":[{
      "@odata.type": "#microsoft.graph.textWebPart",
      "id": "1212fc8d-dd6b-408a-8d5d-9f1cc787efbb",
      "innerHtml": "<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque vel.</p>"
    }]
  }
}
```
