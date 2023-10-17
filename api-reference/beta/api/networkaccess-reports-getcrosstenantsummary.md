---
title: "reports: getCrossTenantSummary"
description: "Provide a summary on the cross tenant access patterns."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# reports: getCrossTenantSummary
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provide a summary on the cross tenant access patterns.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

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
|startDateTime|DateTimeOffset|Timestamp indicating the starting date and time for summarizing data within the specified report, providing the beginning point for data aggregation and analysis.|
|endDateTime|DateTimeOffset|Timestamp indicating the ending date and time for summarizing data within the specified report, marking the conclusion of the data aggregation and analysis period.|
|discoveryPivotDateTime|DateTimeOffset|The time that defines what is new discovered tenant.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [crossTenantSummary](../resources/networkaccess-crosstenantsummary.md) in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.getcrosstenantsummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/reports/getCrossTenantSummary (startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T00:00:00Z, discoveryPivotDateTime=2023-01-30T00:00:00Z)
```


### Response
The following is an example of the response
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

