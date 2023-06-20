---
title: "List networkAccessTraffics"
description: "Retrieve specific traffic log entries based on specified criteria."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List networkAccessTraffics
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve specific traffic log entries based on specified criteria.

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
GET /networkAccess/logs/traffic
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [networkAccessTraffic](../resources/networkaccesstraffic.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_networkaccesstraffic"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/logs/traffic
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.networkAccessTraffic)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.networkAccessTraffic",
      "transactionId": "77900eb9-2ea7-5b5c-6b17-198bd614c918",
      "createdDateTime": "String (timestamp)",
      "tenantId": "String",
      "connectionId": "String",
      "sessionId": "String",
      "trafficType": "String",
      "deviceCategory": "String",
      "destinationIp": "String",
      "destinationPort": "Integer",
      "destinationFQDN": "String",
      "sourceIp": "String",
      "sourcePort": "Integer",
      "deviceOperatingSystem": "String",
      "deviceOperatingSystemVersion": "String",
      "agentVersion": "String",
      "deviceId": "String",
      "userId": "String",
      "userPrincipalName": "String",
      "transportProtocol": "String",
      "networkProtocol": "String",
      "action": "String",
      "policyRuleId": "String",
      "policyId": "String",
      "sentBytes": "Integer",
      "receivedBytes": "Integer",
      "headers": {
        "@odata.type": "microsoft.graph.networkaccess.headers"
      }
    }
  ]
}
```

