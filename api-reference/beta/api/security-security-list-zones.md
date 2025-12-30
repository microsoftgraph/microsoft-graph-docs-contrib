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

This method supports the `$select`, `$filter`, `$count`, `$top`, and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.zone",
      "id": "03f98aee-fee9-06b4-e5d3-647ef536acac",
      "displayName": "Production Zone",
      "description": "Zone for production environments",
      "created": {
        "@odata.type": "microsoft.graph.security.auditInfo"
      },
      "modified": {
        "@odata.type": "microsoft.graph.security.auditInfo"
      }
    }
  ]
}