---
title: "List connections"
description: "Get a list of connection objects and their properties."
author: "moti-ba"
ms.date: 04/20/2025
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# List connections

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [connection](../resources/networkaccess-connection.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

|Permission type|Permissions (least privileged listed first)|
|:---|:---|
|Delegated (work or school account)|NetworkAccess.Read.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|NetworkAccess.Read.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /networkAccess/logs/connections
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response:
- `$filter` to filter results by connection properties. Example: `status eq 'active'`
- `$orderby` to sort results by properties. Example: `createdDateTime desc`
- `$top` and `$skip` for pagination
- `$select` to specify which properties to include

For general information about query parameters, see [OData query parameters](/graph/query-parameters).

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

<!-- {
  "blockType": "request",
  "name": "list_connections"
}
-->
``` http
GET https://graph.microsoft.com/beta/networkAccess/logs/connections?$filter=status eq 'active'&$top=2
```

### Response
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.connection)"
}
-->
``` http
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
      "deviceId": "5b7c0300-45c3-487c-a6d3-a3098cb6e51b",
      "deviceCategory": "client",
      "userPrincipalName": "johndoe@contoso.com"
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
      "deviceId": "5b7c0300-45c3-487c-a6d3-a3098cb6e51b",
      "deviceCategory": "client",
      "userPrincipalName": "johndoe@contoso.com"
    }
  ]
}
