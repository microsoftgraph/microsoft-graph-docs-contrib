---
title: "reports: transactionSummaries"
description: "Get the total number of transactions and the number of blocked transactions, grouped by traffic type."
author: Moti-ba
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
---

# reports: transactionSummaries
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the total number of transactions and the number of blocked transactions, grouped by traffic type.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_reports_transactionsummaries" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-reports-transactionsummaries-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/reports/transactionSummaries(startDateTime={startDateTime},endDateTime={endDateTime})
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The date and time when the reporting period begins.|
|endDateTime|DateTimeOffset|The date and time when the reporting period ends.|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.transactionSummary](../resources/networkaccess-transactionsummary.md) collection in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.transactionsummaries"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/reports/transactionSummaries(startDate=2023-01-01T00:00:00Z,endDate=2023-01-31T00:00:00Z) 
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.transactionSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.networkaccess.transactionSummary)",
  "value": [
    {
      "trafficType": "internet",
      "totalCount": 469000,
      "blockedCount": 400
    },
    {
      "trafficType": "private",
      "totalCount": 220302,
      "blockedCount": 0
    },
    {
      "trafficType": "microsoft365",
      "totalCount": 280443,
      "blockedCount": 0
    }
  ]
}
```

