---
title: "reports: getCrossTenantSummary"
description: "Get a summary of the cross-tenant access patterns."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.topic: reference
---

# reports: getCrossTenantSummary
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a summary of the cross-tenant access patterns.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_reports_getcrosstenantsummary" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-reports-getcrosstenantsummary-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/reports/getCrossTenantSummary(startDateTime={startDateTime},endDateTime={endDateTime},discoveryPivotDateTime={discoveryPivotDateTime})
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The time and date of the beginning of the report period.|
|endDateTime|DateTimeOffset|The time and date of the end of the report period.|
|discoveryPivotDateTime|DateTimeOffset|The time and date when reporting begins. Tenants are reported as newly accessed if and only if they're accessed during the reporting period after this time *and* not accessed during the reporting period before this time.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [crossTenantSummary](../resources/networkaccess-crosstenantsummary.md) in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.getcrosstenantsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/reports/getCrossTenantSummary (startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T00:00:00Z, discoveryPivotDateTime=2023-01-30T00:00:00Z)
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.crossTenantSummary"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.networkaccess.crossTenantSummary",
  "authTransactionCount": 150049,
  "tenantCount": 71,
  "newTenantCount": 9,
  "userCount": 85,
  "deviceCount": 93,
  "rarelyUsedTenantCount": 12
}
```

