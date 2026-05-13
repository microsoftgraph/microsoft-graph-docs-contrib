---
title: "Get identityCorrelation"
description: "Get an identity correlation report."
author: "tolian"
ms.date: 05/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# Get identityCorrelation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get an [identityCorrelation](../resources/identitycorrelation.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "identitycorrelation-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/identitycorrelation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/correlations/{identityCorrelationId}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [identityCorrelation](../resources/identitycorrelation.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_identitycorrelation"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/correlations/{identityCorrelationId}
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
  "@odata.type": "#microsoft.graph.identityCorrelation",
  "id": "a1b2c3d4-5678-90ab-cdef-1234567890ab",
  "startDateTime": "2026-05-01T00:00:00Z",
  "endDateTime": "2026-05-01T01:30:00Z",
  "error": null,
  "servicePrincipal": {
    "id": "550e8400-e29b-41d4-a716-446655440000"
  }
}
```