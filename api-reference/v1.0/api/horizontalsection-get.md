---
title: 'Get horizontalSection'
description: 'Read the properties and relationships of a horizontalSection object.'
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: apiPageType
ms.date: 06/10/2024
---

# Get horizontalSection

Namespace: microsoft.graph

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
GET /sites/{site-id}/pages/{page-id}/microsoft.graph.sitePage/canvasLayout/horizontalSections/{horizontal-section-id}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [horizontalSection](../resources/horizontalsection.md) object in the response body.

## Examples

### Example 1: Get a horizontalSection object

#### Request

The following is an example of a request.

<!-- { "blockType": "ignored" } -->

``` http
GET https://graph.microsoft.com/v1.0/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.sitePage/canvasLayout/horizontalSections/1
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

With `$select` and `$expand` statements, you can retrieve horizontalSection metadata and column information in a single request.

<!-- { "blockType": "ignored" } -->

``` http
GET https://graph.microsoft.com/v1.0/sites/7f50f45e-714a-4264-9c59-3bf43ea4db8f/pages/df69e386-6c58-4df2-afc0-ab6327d5b202/microsoft.graph.sitePage/canvasLayout/horizontalSections/1?$select=id&$expand=columns
```

#### Response

The following is an example of a request.

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
