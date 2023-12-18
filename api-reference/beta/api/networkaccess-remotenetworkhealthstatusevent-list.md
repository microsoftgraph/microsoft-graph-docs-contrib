---
title: "List remoteNetworkHealthStatusEvents"
description: "Retrieve a list of remote network health status events, providing insights into the health and status of remote networks."
author: Moti-ba
ms.localizationpriority: medium
ms.prod: global-secure-access
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
|Delegated (work or school account)|NetworkAccessPolicy.Read.All,NetworkAccessPolicy.ReadWrite.All|
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
This method supports the `$filter`, `$orderby`, `$top`, and `$select` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_remotenetworkhealthstatusevent"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/logs/remoteNetworks 
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-remotenetworkhealthstatusevent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-remotenetworkhealthstatusevent-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-remotenetworkhealthstatusevent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-remotenetworkhealthstatusevent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-remotenetworkhealthstatusevent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-remotenetworkhealthstatusevent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-remotenetworkhealthstatusevent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response
The following example shows the response.
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
    }
  ]
}
```

