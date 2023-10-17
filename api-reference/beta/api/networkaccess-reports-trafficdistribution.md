---
title: "reports: trafficDistribution"
description: "Provide a report of counts of the total transaction performed for each traffic type."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# reports: trafficDistribution
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provide a report of counts of the total transaction performed for each traffic type.

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
GET /networkAccessRoot/reports/trafficDistribution
```

## Function parameters
In the request URL, provide the following query parameters with values.
The following table shows the parameters that can be used with this function.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|Timestamp indicating the starting date and time for summarizing data within the specified report, providing the beginning point for data aggregation and analysis.|
|endDateTime|DateTimeOffset|Timestamp indicating the ending date and time for summarizing data within the specified report, marking the conclusion of the data aggregation and analysis period.|


## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.trafficDistributionPoint](../resources/networkaccess-trafficdistributionpoint.md) collection in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.trafficdistribution"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/reports/trafficDistribution(startDateTime=2023-08-09T12:12:59.076Z, endDateTime=2023-08-11T12:12:59.076Z) 
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.trafficDistributionPoint)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
 "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.networkaccess.trafficDistributionPoint)",
 "value": [
   {
     "timeStampDateTime": "2023-08-09T00:00:00Z",
     "totalTrafficCount": 110,
     "microsoft365AccessTrafficCount": 80,
     "privateAccessTrafficCount": 10,
     "internetAccessTrafficCount": 20
   },
   {
     "timeStampDateTime": "2023-08-10T00:00:00Z",
     "totalTrafficCount": 150,
     "microsoft365AccessTrafficCount": 100,
     "privateAccessTrafficCount": 30,
     "internetAccessTrafficCount": 20
   },
   {
     "timeStampDateTime": "2023-08-11T00:00:00Z",
     "totalTrafficCount": 70,
     "microsoft365AccessTrafficCount": 40,
     "privateAccessTrafficCount": 30,
     "internetAccessTrafficCount": 0
   }
 ]
}
```

