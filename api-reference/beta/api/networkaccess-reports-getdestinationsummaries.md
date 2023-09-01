---
title: "reports: getDestinationSummaries"
description: "Return the total unique count of transactions per aggregation in the past 24 hours."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# reports: getDestinationSummaries
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Return the total unique count of transactions per aggregation in the past 24 hours.

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
GET /networkAccess/reports/getDestinationSummaries
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Sets the starting date and time.|
|endDateTime|DateTimeOffset|Sets the ending date and time.|
|aggregatedBy|microsoft.graph.networkaccess.aggregationFilter|The aggregation filter used for the summary.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.destinationSummary](../resources/networkaccess-destinationsummary.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportsthis.getdestinationsummaries"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/reports/getDestinationSummaries(aggregatedBy='devices', startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T00:00:00Z)
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportsthisgetdestinationsummaries-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reportsthisgetdestinationsummaries-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.destinationSummary)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "destination": "office365.com",
      "count": 100000
    },
    {
      "destination": "pluto.com",
      "count": 4949
    },
    {
      "destination": "yahoo.com",
      "count": 4000
    },
    {
      "destination": "sharepoint.com",
      "count": 989
    },
    {
      "destination": "5.29.13.185",
      "count": 120
    }
  ]
}

```

