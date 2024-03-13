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

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "horizontalsection_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/horizontalsection-get-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [horizontalSection](../resources/horizontalsection.md) object in the response body.

## Examples

### Example 1: Get a horizontalSection object

#### Request

The following example shows a request.

<!-- { "blockType": "ignored" } -->

``` http
GET https://graph.microsoft.com/beta/sites/{sitesId}/pages/{sitePageId}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontalSectionId}
```

#### Response

The following example shows the response.

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
