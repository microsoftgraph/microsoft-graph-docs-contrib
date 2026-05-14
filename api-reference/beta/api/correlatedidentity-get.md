---
title: "Get correlatedIdentity"
description: "Get a correlated identity result from an identity correlation report."
author: "tolian"
ms.date: 05/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: apiPageType
---

# Get correlatedIdentity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [correlatedIdentity](../resources/correlatedidentity.md) object from an [identityCorrelation](../resources/identitycorrelation.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "correlatedidentity-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/correlatedidentity-get-permissions.md)]

[!INCLUDE [rbac-identity-correlation-apis-read](../includes/rbac-for-apis/rbac-identity-correlation-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/correlations/{identityCorrelationId}/identities/{correlatedIdentityId}
```

## Optional query parameters

Not supported.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [correlatedIdentity](../resources/correlatedidentity.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_correlatedidentity"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/correlations/{identityCorrelationId}/identities/{correlatedIdentityId}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.correlatedIdentity"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.correlatedIdentity",
  "id": "a3f7b2c1-4e89-4d6a-b5c8-9e2f1a7d3b60",
  "correlatedDateTime": "2026-05-01T01:27:00Z",
  "sourceIdentity": {
    "anchor": {
      "name": "objectId",
      "value": "jamie998877"
    },
    "matchingProperty": {
      "name": "userPrincipalName",
      "value": "jamie@contoso.com"
    },
    "identityType": "user",
    "details": {}
  },
  "targetIdentity": {
    "anchor": {
      "name": "id",
      "value": "d8e4c6a2-7f13-4b95-a1d9-5c3e8b6f2a74"
    },
    "matchingProperty": {
      "name": "upn",
      "value": "jamie@contoso.com"
    },
    "identityType": "urn:ietf:params:scim:schemas:extension:enterprise:2.0:User",
    "details": {}
  },
  "status": "correlatedAssigned",
  "error": null
}
```