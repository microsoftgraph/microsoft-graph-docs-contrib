---
title: "Get relatedTenant"
description: "Read the properties and relationships of microsoft.graph.tenantGovernanceServices.relatedTenant object."
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# Get relatedTenant

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [microsoft.graph.tenantGovernanceServices.relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantgovernanceservices_relatedtenant_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantgovernanceservices-relatedtenant-get-permissions.md)]

[!INCLUDE [rbac-tenant-governance-apis-read](../includes/rbac-for-apis/rbac-tenant-governance-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/tenantGovernance/relatedTenants/{relatedTenantId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.tenantGovernanceServices.relatedTenant](../resources/tenantgovernanceservices-relatedtenant.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_relatedtenant"
}
-->
``` http
GET https://graph.microsoft.com/beta/directory/tenantGovernance/relatedTenants/{relatedTenantId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-relatedtenant-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-relatedtenant-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-relatedtenant-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-relatedtenant-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-relatedtenant-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-relatedtenant-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tenantGovernanceServices.relatedTenant"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

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
  "multiTenantApplicationMetrics": {
    "initial": {
      "createdDateTime": "2026-01-01T00:00:00Z",
      "watermarkDateTime": "2026-12-30T04:00:00Z",
      "inboundMonthlyTotalApplications": 10,
      "outboundMonthlyTotalApplications": 0
    },
    "recent": {
      "updateDateTime": "2026-01-01T00:00:00Z",
      "watermarkDateTime": "2026-12-30T04:00:00Z",
      "inboundMonthlyTotalApplications": 10,
      "outboundMonthlyTotalApplications": 0
    }
  },
  "billingMetrics": {
    "initial": {
      "createdDateTime": "2025-10-02T12:09:40Z",
      "watermarkDateTime": "2025-10-01T00:00:00Z",
      "localAssociatedTenantCount": 2,
      "localAssociatedTenantBillingManagementActiveCount": 1,
      "localAssociatedTenantProvisioningActiveCount": 2,
      "localAssociatedTenantIds": [
        "/providers/Microsoft.Billing/billingAccounts/00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31/associatedTenants/11111111-1111-1111-1111-111111111111",
        "/providers/Microsoft.Billing/billingAccounts/9a157b81-1503-516b-4fe8-7849e97ca70e:e6bd1c01-9e9b-4fa7-a9f1-6fe6cbad31fa_2019-05-31/associatedTenants/22222222-2222-2222-2222-222222222222"
      ],
      "foreignAssociatedTenantCount": 0,
      "foreignAssociatedTenantBillingManagementActiveCount": 0,
      "foreignAssociatedTenantProvisioningActiveCount": 0
    },
    "recent": {
      "updateDateTime": "2025-11-02T12:09:40Z",
      "watermarkDateTime": "2025-11-01T00:00:00Z",
      "localAssociatedTenantCount": 3,
      "localAssociatedTenantBillingManagementActiveCount": 2,
      "localAssociatedTenantProvisioningActiveCount": 2,
      "localAssociatedTenantIds": [
        "/providers/Microsoft.Billing/billingAccounts/00000000-0000-0000-0000-000000000000:00000000-0000-0000-0000-000000000000_2019-05-31/associatedTenants/11111111-1111-1111-1111-111111111111",
        "/providers/Microsoft.Billing/billingAccounts/9a157b81-1503-516b-4fe8-7849e97ca70e:e6bd1c01-9e9b-4fa7-a9f1-6fe6cbad31fa_2019-05-31/associatedTenants/22222222-2222-2222-2222-222222222222",
        "/providers/Microsoft.Billing/billingAccounts/ffffffff-ffff-ffff-ffff-ffffffffffff:eeeeeeee-eeee-eeee-eeee-eeeeeeeeeeee_2019-05-31/associatedTenants/33333333-3333-3333-3333-333333333333"
      ],
      "foreignAssociatedTenantCount": 1,
      "foreignAssociatedTenantBillingManagementActiveCount": 0,
      "foreignAssociatedTenantProvisioningActiveCount": 1,
    }
  }
}
```

