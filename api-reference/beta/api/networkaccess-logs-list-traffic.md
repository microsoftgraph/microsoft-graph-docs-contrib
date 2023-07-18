---
title: "List networkAccessTraffic"
description: "Get a list of log events for traffic routed through the Global Secure Access services."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List networkAccessTraffic
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of log events for traffic routed through the Global Secure Access services.

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
GET /networkAccess/logs/traffic
```

## Optional query parameters
This method supports the `$select`, `$expand`, `$filter`, `$sort`, and `$top` OData query parameters [OData query parameters](/graph/query-parameters) to help customize the response.

|Name|Syntax|Notes|
|:---|:---|:---|
|Server-side pagination|@odata.nextLink=https://graph.microsoft.com/beta/networkAccess/logs/traffic?$skiptoken="generatedtoken"|Page size default and limit is 1000.|
|Filter|/logs/traffic?$filter=connectionId eq 'a812bcdc-aa36-4c51-b70d-20a84f0ce556'|All properties are filterable.|
|Sort|/logs/traffic?$orderby=createdDateTime desc|Can order by all properties.|
|Top|/logs/traffic?$top=50|Max value 1000.|
|Select|/logs/traffic?$select=transactionId,connectionId,createdDateTime|Select properties.|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [networkAccessTraffic](../resources/networkaccess-networkaccesstraffic.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_networkaccesstraffic"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/logs/traffic
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-networkaccesstraffic-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-networkaccesstraffic-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-networkaccesstraffic-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-networkaccesstraffic-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-networkaccesstraffic-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-networkaccesstraffic-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/networkAccess/logs/$metadata#traffic",
  "@odata.nextLink": "https://graph.microsoft.com/beta/networkAccess/logs/traffictraffic?$filter=contains(headers/xForwardedFor, 'incent')&$top=2&$skiptoken=164190b1473351bb7d1dbebf20c81cfc3844e5d55b80e32b8d73b99cf523f5a0",
  "value": [
    {
      "tenantId": "cb9af522-39fe-4056-b879-e3200ff37b3d",
      "createdDateTime": "2023-03-06T07:58:46.8346145Z",
      "transactionId": "20221208T213303Z-gnwuk8cd9h2wvbnm4cq7banegs0000000080000000001m9x",
      "connectionId": "6+Cy7aaBT+aGV+Ds.1",
      "sessionId": "",
      "trafficType": "microsoft365",
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
    },
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
  ]
}
```

