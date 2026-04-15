---
title: "List relatedTenants"
description: "Get a list of relatedTenant objects and their properties."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# List relatedTenants

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) objects and their properties, including relationship metrics.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantgovernanceservices_list_relatedtenants" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantgovernanceservices-list-relatedtenants-permissions.md)]

[!INCLUDE [rbac-tenant-governance-apis-read](../includes/rbac-for-apis/rbac-tenant-governance-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/tenantGovernance/relatedTenants
```

## Optional query parameters

This method doesn't support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_relatedtenants"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/tenantGovernance/relatedTenants
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-relatedtenants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-relatedtenants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-relatedtenants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-relatedtenants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-relatedtenants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-relatedtenants-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.tenantGovernanceServices.relatedTenant)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/tenantGovernance/relatedTenants",
  "value": [
    {
      "@odata.type": "#microsoft.graph.tenantGovernanceServices.relatedTenant",
      "id": "aaaabbbb-0000-cccc-1111-dddd2222eeee",
      "createdDateTime": "2026-02-15T05:34:29.4426526Z",
      "b2BRegistrationMetrics": {
        "initial": {
          "createdDateTime": "2026-02-13T20:54:25Z",
          "watermarkDateTime": "2026-02-12T00:00:00Z",
          "inboundTotalUsers": 1,
          "outboundTotalUsers": 0
        },
        "recent": {
          "updateDateTime": "2026-02-16T23:13:49Z",
          "watermarkDateTime": "2026-02-15T00:00:00Z",
          "inboundTotalUsers": 0,
          "outboundTotalUsers": 0
        }
      },
      "b2BSignInActivityMetrics": {
        "initial": {
          "createdDateTime": "2026-02-17T08:08:23Z",
          "watermarkDateTime": "2026-02-15T00:00:00Z",
          "inboundMonthlyTotalUsers": 1,
          "outboundMonthlyTotalUsers": 0,
          "inboundMonthlyTotalApplications": 10,
          "outboundMonthlyTotalApplications": 0
        },
        "recent": {
          "updateDateTime": "2026-02-17T08:08:23Z",
          "watermarkDateTime": "2026-02-15T00:00:00Z",
          "inboundMonthlyTotalUsers": 1,
          "outboundMonthlyTotalUsers": 0,
          "inboundMonthlyTotalApplications": 10,
          "outboundMonthlyTotalApplications": 0
        }
      },
      "appB2BSignInActivityMetrics": {
        "initial": {
          "createdDateTime": "2026-02-17T08:08:23Z",
          "watermarkDateTime": "2026-02-15T00:00:00Z",
          "inboundMonthlyTotalUsers": 1,
          "outboundMonthlyTotalUsers": 0,
          "inboundMonthlyTotalApplications": 1,
          "outboundMonthlyTotalApplications": 0
        },
        "recent": {
          "updateDateTime": "2026-02-17T08:08:23Z",
          "watermarkDateTime": "2026-02-15T00:00:00Z",
          "inboundMonthlyTotalUsers": 1,
          "outboundMonthlyTotalUsers": 0,
          "inboundMonthlyTotalApplications": 1,
          "outboundMonthlyTotalApplications": 0
        }
      },
      "multiTenantApplicationMetrics": null,
      "billingMetrics": null
    },
    {
      "@odata.type": "#microsoft.graph.tenantGovernanceServices.relatedTenant",
      "id": "bbbbcccc-1111-dddd-2222-eeee3333ffff",
      "createdDateTime": "2026-02-16T05:35:45.2357127Z",
      "b2BRegistrationMetrics": null,
      "b2BSignInActivityMetrics": null,
      "appB2BSignInActivityMetrics": null,
      "multiTenantApplicationMetrics": {
        "initial": {
          "createdDateTime": "2026-02-15T08:29:31Z",
          "watermarkDateTime": "2026-02-14T00:00:00Z",
          "inboundMonthlyTotalApplications": 10,
          "outboundMonthlyTotalApplications": 0
        },
        "recent": {
          "updateDateTime": "2026-02-15T08:29:31Z",
          "watermarkDateTime": "2026-02-14T00:00:00Z",
          "inboundMonthlyTotalApplications": 10,
          "outboundMonthlyTotalApplications": 0
        }
      },
      "billingMetrics": null
    }
  ]
}
```
