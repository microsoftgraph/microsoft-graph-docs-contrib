---
title: "reviewSet: addToReviewSet"
description: "Starts the process of adding a collection from M365 services to a review set"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: apiPageType
---

# reviewSet: addToReviewSet

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Starts the process of adding a collection from M365 services to a review set. Once the operation is created, you can retrieve the status of the operation by retrieving the Location parameter from the response headers, the location provides a URL that will return a [caseExportOperation](../resources/ediscovery-caseexportoperation.md).

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
POST /cases/{caseId}/reviewSets/{reviewsetId}/addToReviewSet
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|sourceCollection|[sourceCollection](../resources/ediscovery-sourcecollection.md)|The ID of the **sourceCollection**|
|additionalData|dataCollectionScope|The **dataCollectionScope** that will be included with the collection|

### dataCollectionScope values

|Member|Description|
|:----|-----------|
|allVersions|Include all versions of files from sites|
|linkedFiles|Include **cloud attachment** with emails in the collection|

## Response

If successful, this action returns a `202 Accepted` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "reviewset_addtoreviewset"
}
-->

``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/080e8cad-f21f-4452-8826-0ddf7e949fdd/reviewSets/6fe25d32-8167-4625-b75c-c4181ccbd9d5/addToReviewSet
Content-Type: application/json
Content-length: 531

{
    "sourceCollection": {
        "id": "1a9b4145d8f84e39bc45a7f68c5c5119"
    },
    "additionalData": "linkedFiles, conversations"
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 202 Accepted
```
