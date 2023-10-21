---
title: "List tenantUsage"
description: "Get a list of the tenantUsage objects and their properties."
author: "kylewirpel"
ms.localizationpriority: medium
ms.prod: "multi-tenant-management"
doc_type: apiPageType
---

# List tenantUsage
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets the [monthly usage data for each service](../resources/managedtenants-tenantusage.md) in a [managed tenant](../resources/managedtenants-managedtenant.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|ManagedTenants.Read.All, ManagedTenants.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/managedTenants/tenantUsage
```

## Optional query parameters
This method supports the `$filter` and `$top` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [tenantUsage](../resources/managedtenants-tenantusage.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_tenantusage"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/managedTenants/tenantUsage
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-tenantusage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-tenantusage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.managedTenants.tenantUsage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
        {
            "tenantId": "fab47685-ce50-424c-5215-ae28419c9db6",
            "reportingDate": "2021-09-01T00:00:00Z",
            "monthlyActiveUsers": 100,
            "serviceUsages": [
                { "serviceName": "Excel", "monthlyActiveUsers": 100 },
                { "serviceName": "Exchange", "monthlyActiveUsers": 100 },
                { "serviceName": "Intune", "monthlyActiveUsers": 100 },
                { "serviceName": "Teams", "monthlyActiveUsers": 100 },
                { "serviceName": "Word", "monthlyActiveUsers": 100 }
            ]
        }
  ]
}
```
