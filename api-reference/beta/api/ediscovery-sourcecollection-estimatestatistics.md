---
title: "sourceCollection: estimateStatistics"
description: "Runs an estimate of the source collection."
author: "mahage-msft"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: apiPageType
ms.date: 06/10/2024
---

# sourceCollection: estimateStatistics

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Run an estimate of the number of emails and documents in the source collection. To learn more about source collections (also known as searches in eDiscovery), see [Collect data for a case in Advanced eDiscovery](/microsoft-365/compliance/collecting-data-for-ediscovery).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "ediscovery_sourcecollection_estimatestatistics" } -->
[!INCLUDE [permissions-table](../includes/permissions/ediscovery-sourcecollection-estimatestatistics-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/estimateStatistics
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If the estimate is started successfully, this action returns a `202 Accepted` response code. The response will also contain a `Location` header, which contains the location of the [estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) that was created to handle the estimate. Check the status of the estimate operation by making a GET request to the location, when successfully completed, the [status](../resources/ediscovery-caseoperation.md#caseoperationstatus-values) will change to `succeeded`.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "sourcecollection_estimatestatistics"
}
-->

``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/estimateStatistics
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/sourcecollection-estimatestatistics-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/sourcecollection-estimatestatistics-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/sourcecollection-estimatestatistics-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/sourcecollection-estimatestatistics-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/sourcecollection-estimatestatistics-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/sourcecollection-estimatestatistics-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/sourcecollection-estimatestatistics-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/sourcecollection-estimatestatistics-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 202 Accepted
cache-control: private
client-request-id: af32de50-99d9-e3a8-371b-a4f366cc78e7
content-length: 0
content-type: text/plain
location: https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/operations/82edd40e182a464fa02c24a36fa94873
request-id: e890176f-640f-4222-9cd8-be26e71c5e5d
```
