---
title: "List identityCorrelation objects"
description: "List the identity correlation reports in the tenant."
author: "tolian"
ms.date: 05/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# List identityCorrelation objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the [identityCorrelation](../resources/identitycorrelation.md) reports in the tenant.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "reportroot-list-correlations-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-list-correlations-permissions.md)]

[!INCLUDE [rbac-identity-correlation-apis-read](../includes/rbac-for-apis/rbac-identity-correlation-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/correlations
```

## Optional query parameters

This method supports the `$filter` (`eq` on **id** and **error**) and `$top` OData query parameters to help customize the response. The default and maximum page sizes are 1,000 entries. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [identityCorrelation](../resources/identitycorrelation.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_identitycorrelation"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/correlations
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityCorrelation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.identityCorrelation",
      "id": "a1b2c3d4-5678-90ab-cdef-1234567890ab",
      "startDateTime": "2026-05-01T00:00:00Z",
      "endDateTime": "2026-05-01T01:30:00Z",
      "error": null,
      "servicePrincipal": {
        "id": "e7c9a4b2-6d18-4f35-a0c7-8b5e3f1d9a42"
      }
    },
    {
      "@odata.type": "#microsoft.graph.identityCorrelation",
      "id": "b2c3d4e5-6789-01bc-def2-3456789012bc",
      "startDateTime": "2026-04-28T08:15:00Z",
      "endDateTime": "2026-04-28T08:20:30Z",
      "error": {
        "code": "MissingJoiningProperty",
        "message": "Direct joining property mapping not found"
      },
      "servicePrincipal": {
        "id": "e7c9a4b2-6d18-4f35-a0c7-8b5e3f1d9a42"
      }
    }
  ]
}
```