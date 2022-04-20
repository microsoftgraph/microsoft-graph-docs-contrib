---
title: "Get cloudPcSubscription"
description: "List all subscriptions that can be used to store snapshot(s) of a Cloud PC for forensic analysis."
author: "xhan2077"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Get cloudPcSubscription
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List all subscriptions [cloudPcSubscription](../resources/cloudpcsubscription.md) that can be used to store snapshot(s) of a Cloud PC for forensic analysis.

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
GET /deviceManagement/virtualEndpoint/snapshots/getSubscriptions
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and zero or more [cloudPcSubscription](../resources/cloudpcsnapshot.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_cloudpcsubscription"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/snapshots/getSubscriptions
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcSubscription"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#cloudPcSubscriptions",
    "value":[
        {
            "subscriptionId": "8fd04a0b-ed49-46c0-a62d-e7980d829058",
            "subscriptionName":"Cloud PC Service INT"
        },
        {
            "subscriptionId": "618f7b25-b146-4c0e-a21b-2f1c67e78648",
            "subscriptionName":"Cloud PC HOBO Test1"
        }
    ]
}
```

