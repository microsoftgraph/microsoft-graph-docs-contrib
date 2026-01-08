---
title: "List connections"
description: "Get a list of the connection objects and their properties."
author: "miritsadon"
ms.date: 04/20/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# List connections

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [connection](../resources/networkaccess-connection.md) objects and their properties.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_logs_list_connections" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-logs-list-connections-permissions.md)]

[!INCLUDE [rbac-global-secure-access-reports-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-reports-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/logs/connections
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

|Name|Syntax|Notes|
|:---|:---|:---|
|Server-side pagination|@odata.nextLink=https://graph.microsoft.com/beta/networkAccess/logs/connections?$skiptoken="generatedtoken"|The page size defaults to and is limited to 1000.|
|Filter|/logs/connections?$filter=status eq 'active'|All properties are filterable. Filter by status, trafficType, deviceCategory, and other connection properties.|
|Sort|/logs/connections?$orderby=createdDateTime desc|You can order by all properties. Sort by createdDateTime, transactionCount, and other properties.|
|Top|/logs/connections?$top=50|Limit the number of results. Maximum value is 1000.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.networkaccess.connection](../resources/networkaccess-connection.md) objects in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_connection"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/logs/connections
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-connection-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-connection-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-connection-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-connection-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-connection-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-connection-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-connection-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.connection)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.networkaccess.connection",
      "id": "6e3f9793-04a3-9473-f647-29adc069debb",
      "createdDateTime": "2025-04-20T10:00:00Z",
      "tenantId": "contoso.onmicrosoft.com",
      "lastUpdateDateTime": "2025-04-20T10:15:00Z",
      "endDateTime": "2025-04-20T10:30:00Z",
      "status": "active",
      "trafficType": "internet",
      "transactionCount": 10,
      "transactionBlockCount": 1,
      "sentBytes": 15360,
      "receivedBytes": 30720,
      "destinationIp": "13.107.6.152",
      "destinationPort": 443,
      "destinationFqdn": "graph.microsoft.com",
      "userId": "87d349ed-44d7-43e1-9a83-5f2406dee5bd",
      "sourceIp": "192.168.1.100",
      "sourcePort": 54321,
      "initiatingProcessName": "msedge.exe",
      "deviceId": "5b7c0300-45c3-487c-a6d3-a3098cb6e51b",
      "deviceOperatingSystem": "Windows",
      "deviceOperatingSystemVersion": "10.0.19045",
      "agentVersion": "1.0.2307.15",
      "applicationSnapshot": {
        "@odata.type": "microsoft.graph.networkaccess.applicationSnapshot",
        "appId": "00000003-0000-0000-c000-000000000000"
      },
      "privateAccessDetails": {
        "@odata.type": "microsoft.graph.networkaccess.privateAccessDetails",
        "connectorId": "e1a83a2c-5689-4f1c-b8ba-698606c784c9",
        "connectorName": "connector-1",
        "connectorIp": "10.0.0.100",
        "connectionStatus": "active",
        "accessType": "privateAccess",
        "processingRegion": "westus2"
      },
      "deviceCategory": "client",
      "userPrincipalName": "johndoe@contoso.com",
      "transportProtocol": "tcp",
      "networkProtocol": "ipv4",
      "popProcessingRegion": "westus2"
    },
    {
      "@odata.type": "#microsoft.graph.networkaccess.connection",
      "id": "7f4e8694-15b4-8584-g758-30bdc179efcc",
      "createdDateTime": "2025-04-20T10:05:00Z",
      "tenantId": "contoso.onmicrosoft.com",
      "lastUpdateDateTime": "2025-04-20T10:20:00Z",
      "status": "active",
      "trafficType": "microsoft365",
      "transactionCount": 5,
      "transactionBlockCount": 0,
      "sentBytes": 8192,
      "receivedBytes": 16384,
      "destinationIp": "40.99.4.10",
      "destinationPort": 443,
      "destinationFqdn": "outlook.office365.com",
      "userId": "87d349ed-44d7-43e1-9a83-5f2406dee5bd",
      "sourceIp": "192.168.1.100",
      "sourcePort": 54322,
      "initiatingProcessName": "outlook.exe",
      "deviceId": "5b7c0300-45c3-487c-a6d3-a3098cb6e51b",
      "deviceCategory": "client",
      "userPrincipalName": "johndoe@contoso.com",
      "transportProtocol": "tcp",
      "networkProtocol": "ipv4",
      "popProcessingRegion": "westus2"
    }
  ]
}
```
