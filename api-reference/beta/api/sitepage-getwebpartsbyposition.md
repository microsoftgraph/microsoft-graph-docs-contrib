---
title: "sitepage: getWebPartsByPosition"
description: "Get a collection of webParts by position information"
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
---

# sitepage: getWebPartsByPosition

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of [webPart](../resources/webpart.md) by providing [webPartPosition](../resources/webpartposition.md) information.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sitepage_getwebpartsbyposition" } -->
[!INCLUDE [permissions-table](../includes/permissions/sitepage-getwebpartsbyposition-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /sites/{siteId}/pages/{sitePageId}/microsoft.graph.sitePage/getWebPartsByPosition
```

## Function parameters

In the request URL, provide one or more following parameters with a valid value.

| Parameter           | Type    | Description                                                                                                                                                    |
| :------------------ | :------ | :------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| columnId            | Double  | Indicate the identifier of the column where the WebPart located in. Only works if `horizontalSectionId` is provided.                                           |
| horizontalSectionId | Double  | Indicate the horizontal section where the WebPart located in.                                                                                                  |
| isInVerticalSection | boolean | Indicate whether the WebPart located in the vertical section.                                                                                                  |
| webPartIndex        | Double  | Index of the current WebPart. Represents the order of WebPart in this column or section. Only works if either `columnId` or `isInVerticalSection` is provided. |

## Optional query parameters

This method supports the  `$expand`, `$filter`, and `$select` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [webPart](../resources/webpart.md) objects in the response body.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_webparts_by_position"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/sites/{siteId}/pages/{sitePageId}/microsoft.graph.sitePage/getWebPartsByPosition?isInVerticalSection=true
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-webparts-by-position-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.webPart)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.textWebPart",
      "id": "d79d70af-27ea-4208-8dce-23c3bf678664",
      "innerHtml": "<h2>How do you get started?</h2>"
    }
  ]
}
```
