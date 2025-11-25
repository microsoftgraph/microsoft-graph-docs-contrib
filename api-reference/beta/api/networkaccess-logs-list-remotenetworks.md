---
title: "List remoteNetworkHealthEvent objects"
description: "Get a list of the remoteNetworkHealthEvent objects and their properties."
author: "miritsadon"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List remoteNetworkHealthEvent objects

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the remoteNetworkHealthEvent objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_logs_list_remotenetworks" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-logs-list-remotenetworks-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/logs/remoteNetworks
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

|Name|Syntax|Notes|
|:---|:---|:---|
|Server-side pagination|@odata.nextLink=https://graph.microsoft.com/beta/networkAccess/logs/remoteNetworks?$skiptoken="generatedtoken"|The page size defaults to and is limited to 1000.|
|Filter|/logs/remoteNetworks?$filter=status eq 'bgpConnected'|All properties are filterable.|
|Sort|/logs/remoteNetworks?$orderby=createdDateTime desc|You can order by all properties.|
|Top|/logs/remoteNetworks?$top=50|The maximum value is 1000.|
|Select|/logs/remoteNetworks?$select=id,remoteNetworkId,status|Select specific properties.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [remoteNetworkHealthEvent](../resources/networkaccess-remotenetworkhealthevent.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_remotenetworkhealthevent"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/logs/remoteNetworks
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-remotenetworkhealthevent-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-remotenetworkhealthevent-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-remotenetworkhealthevent-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-remotenetworkhealthevent-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-remotenetworkhealthevent-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-remotenetworkhealthevent-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-remotenetworkhealthevent-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.remoteNetworkHealthEvent)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/networkAccess/logs/$metadata#remoteNetworks",
  "@odata.nextLink": "https://graph.microsoft.com/beta/networkAccess/logs/remoteNetworks?$skiptoken=164190b1473351bb7d1dbebf20c81cfc3844e5d55b80e32b8d73b99cf523f5a0",
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.remoteNetworkHealthEvent",
      "id": "9f1946c1-229b-aaed-3034-3d7d1da819db",
      "remoteNetworkId": "ef147e40-db4c-40e4-9e63-f254f576421f",
      "createdDateTime": "2023-03-15T10:23:45Z",
      "sourceIp": "192.168.1.1",
      "destinationIp": "10.0.0.1",
      "description": "BGP connection established",
      "bgpRoutesAdvertisedCount": 15,
      "status": "bgpConnected",
      "sentBytes": 15420,
      "receivedBytes": 8670
    },
    {
      "@odata.type": "#microsoft.graph.networkaccess.remoteNetworkHealthEvent",
      "id": "7c3d5a82-1f4b-9e7d-2045-2c8e2ab93e51",
      "remoteNetworkId": "ef147e40-db4c-40e4-9e63-f254f576421f",
      "createdDateTime": "2023-03-14T08:15:30Z",
      "sourceIp": "192.168.1.1",
      "destinationIp": "10.0.0.1",
      "description": "Tunnel connection established",
      "bgpRoutesAdvertisedCount": 12,
      "status": "tunnelConnected",
      "sentBytes": 12580,
      "receivedBytes": 7350
    }
  ]
}

```
