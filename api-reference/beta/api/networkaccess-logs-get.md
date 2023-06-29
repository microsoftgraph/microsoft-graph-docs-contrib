---
title: "Get logs"
description: "Retrieve specific traffic log entries."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# Get logs
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve specific traffic log entries.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|NetworkAccessPolicy.Read.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/logs
```

## Optional query parameters
This method does not support any OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.logs](../resources/networkaccess-logs.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_logs"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/logs/{transactionId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.logs"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
      "tenantId": "cb9af522-39fe-4056-b879-e3200ff37b3d",
      "createdDateTime": "2023-03-07T07:58:46.8346145Z",
      "transactionId": "vvvvvrrrrr-gnwuk8cd9h2wvbnm4cq7banegs0000000080000000001m9x",
      "connectionId": "6+Cy7aaBT+aGV+Ds.1",
      "sessionId": "",
      "trafficType": "internet",
      "deviceCategory": "client",
      "destinationIp": "100.64.0.239",
      "destinationPort": 443,
      "destinationFQDN": "oneozco.sharepoint.com",
      "sourceIp": "20.51.192.19",
      "sourcePort": 63391,
      "deviceOperatingSystem": "Windows 10 Pro",
      "deviceOperatingSystemVersion": "10.0.19044",
      "agentVersion": "1.5.233",
      "deviceId": "46bba529-d081-4cec-883b-4023b9bde1e0",
      "userId": "ef147e40-db4c-40e4-9e63-f254f576421f",
      "userPrincipalName": "user1@microsoft.com",
      "transportProtocol": "TCP",
      "networkProtocol": "IPv4",
      "action": "allowed",
      "policyRule": {
        "@odata.type": "microsoft.graph.networkaccess.policyRule",
        "id": "11111-c507-4b11-8e9b-236e79b04279"
      },
      "policy": {
        "@odata.type": "microsoft.graph.networkaccess.policy",
        "id": "fbea3325-6cc8-46e9-8c61-0451d96a1c02"
      },
      "sentBytes": 1500,
      "receivedBytes": 1000,
      "headers": {
        "referrer": "process",
        "origin": "https://developer.mozilla.org",
        "xForwardedFor": "incentivize"
      }
    }
```

