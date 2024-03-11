---
title: "cloudPC: getCloudPcConnectivityHistory"
description: "Get the connectivity history of a specific Cloud PC."
author: "yayang3"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: getCloudPcConnectivityHistory

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the connectivity history of a specific Cloud PC.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_getcloudpcconnectivityhistory" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-getcloudpcconnectivityhistory-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /deviceManagement/virtualEndpoint/cloudPCs/{id}/getCloudPcConnectivityHistory
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcConnectivityEvent](../resources/cloudpcconnectivityevent.md) collection object in the response body.

## Examples

### Request

Here's an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpc.getCloudPcConnectivityHistory"
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/{id}/getCloudPcConnectivityHistory
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcgetcloudpcconnectivityhistory-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/cloudpcgetcloudpcconnectivityhistory-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcgetcloudpcconnectivityhistory-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcgetcloudpcconnectivityhistory-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcgetcloudpcconnectivityhistory-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcgetcloudpcconnectivityhistory-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcgetcloudpcconnectivityhistory-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcgetcloudpcconnectivityhistory-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

Here's an example of the response.

<!-- {
  "blockType": "response",
  "@odata.type": "Collection(microsoft.graph.cloudPcConnectivityEvent)",
  "name": "cloudpc.getCloudPcConnectivityHistory"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "microsoft.graph.cloudPcConnectivityEvent",
      "eventDateTime": "2022-03-23T18:40:00Z",
      "eventName": "DomainJoinCheck",
      "eventResult": "failure",
      "eventType": "deviceHealthCheck",
      "message": "SessionHost unhealthy: SessionHost is not joined to a domain"
    }
  ]
}
```
