---
title: "reports: getCrossTenantSummary"
description: "Get a summary of the cross-tenant access patterns."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# reports: getCrossTenantSummary
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a summary of the cross-tenant access patterns.

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
GET /networkAccessRoot/reports/getCrossTenantSummary
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Timestamp indicating the beginning of the report period.|
|endDateTime|DateTimeOffset|Timestamp indicating the end of the report period.|
|discoveryPivotDateTime|DateTimeOffset|Timestamp defining when new tenant discoveries occur.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

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

