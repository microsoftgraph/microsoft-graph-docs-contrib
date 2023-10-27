---
title: "reports: getDestinationSummaries"
description: "Get a summary on the top destinations visited by different aggregations."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
doc_type: apiPageType
---

# reports: getDestinationSummaries
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a summary on the top destinations visited by different aggregations.

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
GET /networkAccessRoot/reports/getDestinationSummaries
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Timestamp that indicates the starting date and time for summarizing data within the specified report.|
|endDateTime|DateTimeOffset|Timestamp that indicates the ending date and time for summarizing data within the specified report.|
|aggregatedBy|microsoft.graph.networkaccess.aggregationFilter|The aggregation filter used for the summary. The possible values are: `transactions`, `users`,`devices`. Required.|
|trafficType|String|Traffic classification. The possible values are: `microsoft365`, `private`,`internet`. Required.


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.destinationSummary](../resources/networkaccess-destinationsummary.md) collection in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.getdestinationsummaries"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/reports/getDestinationSummaries (aggregatedBy='devices', startDateTime=2023-01-01T00:00:00Z,endDateTime=2023-01-31T00:00:00Z)
```


### Response
The following example shows the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.networkaccess.destinationSummary)",
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
    }
  ]
}
```

