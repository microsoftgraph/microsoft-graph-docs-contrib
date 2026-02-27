---
title: "Get compliantNetworkNamedLocation"
description: "Retrieve the properties and relationships of a compliantNetworkNamedLocation object."
author: "ckeatss"
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
ms.date: 10/17/2024
---

# Get compliantNetworkNamedLocation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [compliantNetworkNamedLocation](../resources/compliantnetworknamedlocation.md) object.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "compliantnetworknamedlocation_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/compliantnetworknamedlocation-get-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-apis-read](../includes/rbac-for-apis/rbac-conditionalaccess-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/conditionalAccess/namedLocations/{id}
```

## Optional query parameters

This method supports the `select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [compliantNetworkNamedLocation](../resources/compliantnetworknamedlocation.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_compliantnetworknamedlocation"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/conditionalAccess/namedLocations/3d46dbda-8382-466a-856d-eb00cbc6b910
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-compliantnetworknamedlocation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-compliantnetworknamedlocation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-compliantnetworknamedlocation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-compliantnetworknamedlocation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-compliantnetworknamedlocation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-compliantnetworknamedlocation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.compliantNetworkNamedLocation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/conditionalAccess/namedLocations/$entity",
    "@odata.type": "#microsoft.graph.compliantNetworkNamedLocation",
    "id": "3d46dbda-8382-466a-856d-eb00cbc6b910",
    "displayName": "All Compliant Network locations",
    "modifiedDateTime": "2024-05-18T00:15:27.662178Z",
    "createdDateTime": "2023-02-13T06:09:11.6935736Z",
    "compliantNetworkType": "allTenantCompliantNetworks",
    "isTrusted": false,
    "policyInfo": null
}
```

