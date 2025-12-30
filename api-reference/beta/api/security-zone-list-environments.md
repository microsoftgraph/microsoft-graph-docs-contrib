---
title: "List environments"
description: "Get all environment objects associated with a zone object."
author: "Yarinle4"
ms.date: 11/26/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# List environments

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all [environment](../resources/security-environment.md) objects associated with a [zone](../resources/security-zone.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-zone-list-environments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-zone-list-environments-permissions.md)]

[!INCLUDE [rbac-security-zone-apis-read](../includes/rbac-for-apis/rbac-security-zone-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/zones/{zoneId}/environments
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$count`, `$orderby`, `$top`, and `$skip` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters). The default and maximum page sizes are 1000 environments objects.

The following table lists the filter and orderby query support for each property.

|Property|$filter operators|$orderby|
|:---|:---|:---|
|id|`eq`, `contains`|✓|
|kind|`eq`, `in`|✓|

The following table shows example query patterns.

|Query pattern|Example|
|:---|:---|
|Filter by environment kind|`$filter=kind eq 'azureSubscription'`|
|Filter by multiple kinds|`$filter=kind in ('azureSubscription', 'awsAccount')`|
|Filter by ID pattern|`$filter=contains(id, '123')`|
|Order by kind then ID|`$orderby=kind asc,id asc`|
|Pagination|`$top=10&$skip=20&$count=true`|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [environment](../resources/security-environment.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_environment"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/zones/05cfec937c214892a14448562ef4bf4a/environments
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.environment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/security/zones/$metadata#environments",
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.environment",
      "kind": "awsAccount",
      "id": "181994123251"
    },
    {
      "@odata.type": "#microsoft.graph.security.environment",
      "kind": "awsAccount",
      "id": "326438728454"
    },
    {
      "@odata.type": "#microsoft.graph.security.environment",
      "kind": "azureSubscription",
      "id": "/subscriptions/02687862-a843-4846-81f0-efe9ef244daa"
    },
    {
      "@odata.type": "#microsoft.graph.security.environment",
      "kind": "gcpProject",
      "id": "69483221284"
    }
  ]
}
```

