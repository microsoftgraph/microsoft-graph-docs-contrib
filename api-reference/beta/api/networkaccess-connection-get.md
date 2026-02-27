---
title: "Get connection"
description: "Read the properties and relationships of a connection object."
author: "miritsadon"
ms.date: 04/20/2025
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: apiPageType
---

# Get connection

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [connection](../resources/networkaccess-connection.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_connection_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-connection-get-permissions.md)]

[!INCLUDE [rbac-global-secure-access-reports-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-reports-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/logs/connections/{connectionId}
```

## Optional query parameters

This method supports the `$select` OData query parameters [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.networkaccess.connection](../resources/networkaccess-connection.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_connection"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/logs/connections/6e3f9793-04a3-9473-f647-29adc069debb
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-connection-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-connection-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-connection-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-connection-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-connection-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-connection-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-connection-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.networkaccess.connection"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.networkaccess.connection",
    "id": "6e3f9793-04a3-9473-f647-29adc069debb",
    "createdDateTime": "2025-04-20T10:00:00Z",
    "tenantId": "contoso.onmicrosoft.com",
    "lastUpdateDateTime": "2025-04-20T10:15:00Z",
    "endDateTime": "2025-04-20T10:30:00Z",
    "status": "closed",
    "trafficType": "internet",
    "transactionCount": 15,
    "transactionBlockCount": 2,
    "sentBytes": 25600,
    "receivedBytes": 51200,
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
      "connectionStatus": "closed",
      "accessType": "privateAccess",
      "processingRegion": "westus2"
    },
    "deviceCategory": "client",
    "userPrincipalName": "johndoe@contoso.com",
    "transportProtocol": "tcp",
    "networkProtocol": "ipv4",
    "popProcessingRegion": "westus2"
  }
}
```
