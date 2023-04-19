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
GET /deviceManagement/virtualEndpoint/cloudPCs/{id}/getCloudPcConnectivityHistory
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


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc.getCloudPcConnectivityHistory"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/{id}/getCloudPcConnectivityHistory
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcgetcloudpcconnectivityhistory-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcgetcloudpcconnectivityhistory-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcgetcloudpcconnectivityhistory-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcgetcloudpcconnectivityhistory-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcgetcloudpcconnectivityhistory-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
      "eventDateTime": "2022-03-23T18:40:00Z",
      "eventName": "DomainJoinCheck",
      "eventResult": "failure",
      "eventType": "deviceHealthCheck",
      "message": "SessionHost unhealthy: SessionHost is not joined to a domain"
    }
  ]
}
```
