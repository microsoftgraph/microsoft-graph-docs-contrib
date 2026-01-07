---
title: "ediscoverySearch: estimateStatistics"
description: "Runs an estimate of the eDiscovery search."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: "apiPageType"
ms.date: 06/10/2024
---

# ediscoverySearch: estimateStatistics
Namespace: microsoft.graph.security

Run an estimate of the number of emails and documents in the eDiscovery search. To learn more about searches in eDiscovery, see [Collect data for a case in eDiscovery (Premium)](/microsoft-365/compliance/collecting-data-for-ediscovery).


[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_ediscoverysearch_estimatestatistics" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-ediscoverysearch-estimatestatistics-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/estimateStatistics
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that you can use with this action.

| Parameter | Type | Description |
|:---|:---|:---|
| statisticsOptions | [microsoft.graph.security.statisticsOptions](../resources/security-ediscoveryestimateoperation.md#statisticsoptions-values) | Bitwise options that specify the statistics to generate. The possible values are: `includeRefiners`, `includeQueryStats`, `includeUnindexedStats`, `advancedIndexing`, `locationsWithoutHits`, `unknownFutureValue`. The `advancedIndexing` and `locationsWithoutHits` values are only considered if `includeUnindexedStats` is set.|

## Response

If the estimate is started successfully, this action returns a `202 Accepted` response code. The response contains a `Location` header, which contains the location of the [microsoft.graph.security.estimateStatisticsOperation](../resources/security-ediscoveryestimateoperation.md) that was created to handle the estimate. Check the status of the estimate operation by making a GET request to the value of the `Location` header.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "ediscoverysearchthis.estimatestatistics"
}
-->
```http
POST https://graph.microsoft.com/v1.0/security/cases/ediscoveryCases/b0073e4e-4184-41c6-9eb7-8c8cc3e2288b/searches/c61a5860-d634-4d14-aea7-d82b6f4eb7af/estimatestatistics
Content-Type: application/json

{
  "statisticsOptions": "includeRefiners, includeQueryStats, includeUnindexedStats, advancedIndexing, locationsWithoutHits"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/ediscoverysearchthisestimatestatistics-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/ediscoverysearchthisestimatestatistics-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/ediscoverysearchthisestimatestatistics-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/ediscoverysearchthisestimatestatistics-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/ediscoverysearchthisestimatestatistics-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/ediscoverysearchthisestimatestatistics-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/ediscoverysearchthisestimatestatistics-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 202 Accepted
Location: https://graph.microsoft.com/v1.0/security/cases/ediscoverycases('4c551bc5-f6f8-435c-8391-d1a08f1ffd5b')/operations('698514cc118f4c8b8cdf1bf0797bf478')
```
