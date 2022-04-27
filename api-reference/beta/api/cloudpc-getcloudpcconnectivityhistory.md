---
title: "cloudPC: getCloudPcConnectivityHistory"
description: "Get the connectivity history of a specific Cloud PC."
author: "yayang3"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getCloudPcConnectivityHistory

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the connectivity history of a specific Cloud PC.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CloudPC.Read.All, CloudPC.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|CloudPC.Read.All, CloudPC.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/getCloudPcConnectivityHistory
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcConnectivityEvent](../resources/cloudpcconnectivityevent.md) collection object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "cloudpc.getCloudPcConnectivityHistory"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/9ec90ff8-fd63-4fb9-ab5a-aa4fdcc43ec9/getCloudPcConnectivityHistory
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.cloudPcConnectivityEvent)",
  "name": "cloudpc.getCloudPcConnectivityHistory"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "microsoft.graph.cloudPcConnectivityEvent",
      "eventDatetime": "2022-03-23T18:40:00Z",
      "eventName": "DomainJoinCheck",
      "eventResult": "failure",
      "eventType": "deviceHealthCheck",
      "message": "SessionHost unhealthy: SessionHost is not joined to a domain"
    }
  ]
}
```
