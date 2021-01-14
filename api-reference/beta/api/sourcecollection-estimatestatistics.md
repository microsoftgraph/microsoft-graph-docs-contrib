---
title: "sourceCollection: estimateStatistics"
description: "Executes an estimate of the source collection"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# sourceCollection: estimateStatistics

Namespace: microsoft.graph

Executes an estimate of the source collection. To learn more about source collections, see [Collect data for a case in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/collecting-data-for-ediscovery)

Once the estimate operation is created, you can retrieve the status of the operation by retrieving the Location parameter from the response headers, the location provides a URL that will return a [estimateStatisticsOperation](../resources/caseexportoperation.md)

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|eDiscovery.Read.All, eDiscovery.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

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
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "sourcecollection_estimatestatistics"
}
-->

``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/estimateStatistics
```

### Response

**Note:** The response object shown here might be shortened for readability.

## Response headers

``` http
    "cache-control": "private",
    "client-request-id": "af32de50-99d9-e3a8-371b-a4f366cc78e7",
    "content-length": "0",
    "content-type": "text/plain",
    "location": "https://graph.microsoft.com/beta/compliance/ediscovery/cases/47746044-fd0b-4a30-acfc-5272b691ba5b/operations/82edd40e182a464fa02c24a36fa94873",
    "request-id": "e890176f-640f-4222-9cd8-be26e71c5e5d"
```

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 202 Accepted
```
