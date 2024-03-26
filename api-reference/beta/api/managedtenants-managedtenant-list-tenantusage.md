---
title: "List tenantUsage"
description: "Get a list of the tenantUsage objects and their properties."
author: "kylewirpel"
ms.localizationpriority: medium
ms.subservice: "m365-lighthouse"
doc_type: apiPageType
---

# List tenantUsage
Namespace: microsoft.graph.managedTenants

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets the [monthly usage data for each service](../resources/managedtenants-tenantusage.md) in a [managed tenant](../resources/managedtenants-managedtenant.md).

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "managedtenants_managedtenant_list_tenantusage" } -->
[!INCLUDE [permissions-table](../includes/permissions/managedtenants-managedtenant-list-tenantusage-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

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
