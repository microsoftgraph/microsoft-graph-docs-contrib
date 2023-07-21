---
title: "reports: transactionSummaries"
description: "Provides a high-level summary of transactions, including a breakdown by traffic type and counts for allowed and blocked transactions."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# reports: transactionSummaries
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides a high-level summary of transactions, including a breakdown by traffic type and counts for allowed and blocked transactions.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All, NetworkAccessPolicy.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/reports/transactionSummaries
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Sets the starting date and time.|
|endDateTime|DateTimeOffset|Sets the ending date and time.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.transactionSummary](../resources/networkaccess-transactionsummary.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.transactionsummaries"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/reports/transactionSummaries(startDate=2023-01-01T00:00:00Z,endDate=2023-01-31T00:00:00Z)?$filter=trafficType  eq 'microsoft365'
```


### Response
The following is an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/networkAccess/reports/$metadata#transactionSummaries",
  "value": [
    {
      "trafficType": "microsoft365",
      "totalCount": 280443,
      "blockedCount": 0
    }
  ]
}
```

