---
title: "List zones"
description: "Get a list of the zone objects and their properties."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List zones

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [zone](../resources/security-zone.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-security-list-zones-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-security-list-zones-permissions.md)]

[!INCLUDE [rbac-security-zone-apis-read](../includes/rbac-for-apis/rbac-security-zone-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/zones
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$count`, `$orderby`, `$top`, `$skip`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). The default and maximum page sizes are 1000 zones objects.

The following table lists the filter and orderby query support for each property.

|Property|$filter operators|$orderby|
|:---|:---|:---|
|created/dateTime|`ge`, `le`, `gt`, `lt`|✓|
|description|`eq`, `contains`||
|displayName|`eq`, `contains`|✓|
|id|`eq`||
|modified/dateTime|`ge`, `le`, `gt`, `lt`|✓|
|aggregations/kind|`eq` (within `any()` expression)||
|aggregations/count|`gt`, `lt`, `ge`, `le` (within `any()` expression)||

The following table shows example query patterns.

|Query pattern|Example|
|:---|:---|
|Filter by display name|`$filter=displayName eq 'Production Zone'`|
|Filter by description contains|`$filter=contains(description, 'production')`|
|Filter by creation date|`$filter=created/dateTime ge 2023-01-01T00:00:00Z`|
|Filter by environment type|`$filter=aggregations/any(a: a/kind eq 'azureSubscription')`|
|Filter by environment count|`$filter=aggregations/any(a: a/kind eq 'azureSubscription' and a/count gt 5)`|
|Order by display name|`$orderby=displayName asc`|
|Order by creation date descending|`$orderby=created/dateTime desc`|
|Pagination|`$top=10&$skip=20&$count=true`|
|Select specific fields|`$select=id,displayName,aggregations`|
|Expand environments|`$expand=environments`|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.security.zone](../resources/security-zone.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_zone"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/zones
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.zone)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/security/$metadata#zones",
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.zone",
      "id": "05cfec937c214892a14448562ef4bf4a",
      "displayName": "Production Zone",
      "description": "Zone for production environments",
      "created": {
        "by": "Yarin",
        "dateTime": "2023-10-01T12:00:00Z"
      },
      "modified": {
        "by": "Yarin",
        "dateTime": "2023-10-01T12:00:00Z"
      },
      "aggregations": [
        {
          "kind": "azureSubscription",
          "count": 1
        },
        {
          "kind": "awsAccount",
          "count": 2
        },
        {
          "kind": "gcpProject",
          "count": 1
        }
      ]
    },
    {
      "@odata.type": "#microsoft.graph.security.zone",
      "id": "95b3220fe91548eaae9e812b30bbd735",
      "displayName": "Development Zone",
      "description": "Zone for development environments",
      "created": {
        "by": "Yarin",
        "dateTime": "2023-10-01T12:00:00Z"
      },
      "modified": {
        "by": "Yarin",
        "dateTime": "2023-10-01T12:00:00Z"
      },
      "aggregations": [
        {
          "kind": "awsAccount",
          "count": 1
        }
      ]
    }
  ]
}
```