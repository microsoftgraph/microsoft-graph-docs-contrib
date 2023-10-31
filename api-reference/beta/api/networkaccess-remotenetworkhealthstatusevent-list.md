---
title: "List remoteNetworkHealthStatusEvents"
description: "Retrieve a list of remote network health status events, providing insights into the health and status of remote networks."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: apiPageType
---

# List remoteNetworkHealthStatusEvents
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of remote network health status [microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md) events, providing insights into the health and status of remote networks.

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
GET /networkAccess/logs/remoteNetworks 
```

## Optional query parameters
This method supports $filter, $orderby, $top and $select OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [remoteNetworkHealthStatusEvent](../resources/networkaccess-remotenetworkhealthstatusevent.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_remotenetworkhealthstatusevent"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/logs/remoteNetworks 
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.remoteNetworkHealthStatusEvent)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "4ae72c5f-68ef-45a8-9b54-9a793a3b948b",
      "remoteNetworkId": "a2b07922-f62b-4679-84f5-67f11e9fd41b",
      "createdDateTime": "2023-10-07T04:16:52.8346145Z",
      "status": "tunnelDisconnected",
      "sourceIp": "xxx.xxx.xx.150",
      "destinationIp": "xx.xxx.xxx.0",
      "sentBytes": 0,
      "receivedBytes": 0,
      "description": "DisconnectReason: Main mode SA assumed to be invalid because peer stopped responding. ",
      "bgpRoutesAdvertisedCount": 0
    },
    {
      "id": "7e55ff7c-5164-485d-a00d-a0afea711d2f",
      "remoteNetworkId": "a2b07922-f62b-4679-84f5-67f11e9fd41b",
      "createdDateTime": "2023-10-07T04:14:56.8346145Z",
      "status": "bgpConnected",
      "sourceIp": "xxx.xxx.xx.150",
      "destinationIp": "xx.xxx.xxx.0",
      "sentBytes": 0,
      "receivedBytes": 0,
      "description": "",
      "bgpRoutesAdvertisedCount": 0
    },
    {
      "id": "affe21da-9219-44b1-b582-1b94728a09c9",
      "remoteNetworkId": "a2b07922-f62b-4679-84f5-67f11e9fd41b",
      "createdDateTime": "2023-10-07T01:21:12.8346145Z",
      "status": "tunnelConnected",
      "sourceIp": "xxx.xxx.xx.150",
      "destinationIp": "xx.xxx.xxx.0",
      "sentBytes": 0,
      "receivedBytes": 0,
      "description": "ConnectReason: RemotelyTriggered",
      "bgpRoutesAdvertisedCount": 0
    },
    {
      "id": "bcbc3554-fc7e-46b1-93ac-0a3593fc1962",
      "remoteNetworkId": "a2b07922-f62b-4679-84f5-67f11e9fd41b",
      "createdDateTime": "2023-10-07T01:19:24.8346145Z",
      "status": "bgpConnected",
      "sourceIp": "xxx.xxx.xx.150",
      "destinationIp": "xx.xxx.xxx.0",
      "sentBytes": 0,
      "receivedBytes": 0,
      "description": "",
      "bgpRoutesAdvertisedCount": 0
    },
    {
      "id": "d3dd133c-7b1b-44aa-8e11-409926b16485",
      "remoteNetworkId": "a2b07922-f62b-4679-84f5-67f11e9fd41b",
      "createdDateTime": "2023-09-07T14:59:03.8346145Z",
      "status": "bgpDisconnected",
      "sourceIp": "xxx.xxx.xx.151",
      "destinationIp": "xx.xxx.xxx.0",
      "sentBytes": 0,
      "receivedBytes": 0,
      "description": "",
      "bgpRoutesAdvertisedCount": 0
    },
    {
      "id": "69be33d9-8609-4104-b256-2e7ff1579698",
      "remoteNetworkId": "a2b07922-f62b-4679-84f5-67f11e9fd41b",
      "createdDateTime": "2023-09-07T14:47:33.8346145Z",
      "status": "alive",
      "sourceIp": "xxx.xxx.xx.151",
      "destinationIp": "xx.xxx.xxx.0",
      "sentBytes": 3524,
      "receivedBytes": 2698,
      "description": "",
      "bgpRoutesAdvertisedCount": 25
    }
  ]
}
```

