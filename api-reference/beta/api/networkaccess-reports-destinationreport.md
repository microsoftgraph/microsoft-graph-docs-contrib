---
title: "reports: destinationReport"
description: "Provide a report of all  destinations network traffic that were captured."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# reports: destinationReport
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provide a report of all  destinations network traffic that were captured.

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
GET /networkAccessRoot/reports/destinationReport
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
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.destination](../resources/networkaccess-destination.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "reportsthis.destinationreport"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkaccess/reports/destinationReport(startDateTime=2023-08-20T12:12:59.076Z, endDateTime=2023-08-21T12:12:59.076Z) 
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.destination)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.networkaccess.destination)",
  "value":[
     {
        "fqdn":"login.microsoftonline.com",
        "ip":"6.6.0.1",
        "port":"443",
        "networkingProtocol":"TCP",
        "trafficProfile":"microsoft365",
        "lastAccessDateTime":"2023-08-09T13:20:04Z",
        "trafficType":"microsoft365"
     },
     {
        "ip":"130.20.20.20",
        "port":"443",
        "networkingProtocol":"TCP",
        "trafficProfile":"private",
        "lastAccessDateTime":"2023-08-09T13:20:04Z",
        "trafficType":"private"
     },
     {
        "fqdn":"google.com",
        "ip":"8.8.8.8",
        "port":"443",
        "networkingProtocol":"TCP",
        "trafficProfile":"internet",
        "lastAccessDateTime":"2023-08-09T13:20:04Z",
        "trafficType":"internet"
     }
  ]
}
```

