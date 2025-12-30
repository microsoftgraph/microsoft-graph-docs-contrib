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

This method supports the `$select`, `$filter`, `$count`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
GET https://graph.microsoft.com/beta/security/zones/03f98aee-fee9-06b4-e5d3-647ef536acac/environments
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.environment",
      "id": "23613f44-7f57-d1fc-b9a4-448cd3e8c7c3",
      "kind": "azureSubscription"
    }
  ]
}
```

