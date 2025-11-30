---
title: "cloudAppDiscoveryReport: aggregatedAppsDetails"
description: "Get the aggregated details of discovered apps by providing the time period."
author: "nechamam"
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
ms.date: 11/15/2024
---

# cloudAppDiscoveryReport: aggregatedAppsDetails

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [aggregated details](../resources/security-discoveredcloudappdetail.md) of discovered apps by providing the time period. The supported time periods are the last 7, 30, or 90 days.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security_cloudappdiscoveryreport_aggregatedappsdetails"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-cloudappdiscoveryreport-aggregatedappsdetails-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /security/dataDiscovery/cloudAppDiscovery/uploadedStreams/{streamId}/microsoft.graph.security.aggregatedAppsDetails(period=duration'{duration}')
```

## Function parameters

The following table lists the parameters that are required when you call this function.

|Parameter|Type|Description|
|:---|:---|:---|
|period|Duration|Provide the time frame in which you want to query the data. Supported time frames are the last 7, 30, or 90 days.|

## Optional query parameters

This method supports the `$select`, `$filter`, `$skip`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [microsoft.graph.security.discoveredCloudAppDetail](../resources/security-discoveredcloudappdetail.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudappdiscoveryreportthis.aggregatedappsdetails"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/security/dataDiscovery/cloudAppDiscovery/uploadedStreams/93b60b3e-3a28-bf33-2d73-3cb0199c5f7a/microsoft.graph.security.aggregatedAppsDetails(period=duration'P90D')
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudappdiscoveryreportthisaggregatedappsdetails-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudappdiscoveryreportthisaggregatedappsdetails-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudappdiscoveryreportthisaggregatedappsdetails-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudappdiscoveryreportthisaggregatedappsdetails-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudappdiscoveryreportthisaggregatedappsdetails-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudappdiscoveryreportthisaggregatedappsdetails-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.security.discoveredCloudAppDetail)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.security.discoveredCloudAppDetail",
      "id": "12345",
      "displayName": "Example App",
      "tags": [
        "Sanctioned"
      ],
      "riskScore": 8,
      "uploadNetworkTrafficInBytes": 1024,
      "downloadNetworkTrafficInBytes": 2048,
      "transactionCount": 20,
      "ipAddressCount": 5,
      "userCount": 3,
      "lastSeenDateTime": "2024-06-13T00:00:00Z",
      "domains": [
        "example.com"
      ],
      "category": "health"
    }
  ]
}
```

