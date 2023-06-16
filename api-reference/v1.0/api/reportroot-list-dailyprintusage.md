---
title: "List printUsage"
description: "Retrieve a list of daily print usage summaries."
author: "JuliusShanMS"
ms.localizationpriority: medium
ms.prod: cloud-printing
doc_type: apiPageType
---

# List printUsage
Namespace: microsoft.graph

Retrieve a list of daily print usage summaries.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

In addition to the following permissions, the user's tenant must have an active Universal Print subscription.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Reports.Read.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application|Not Supported.|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /reports/dailyPrintUsage
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [printUsage](../resources/printusage.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_printusage"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/dailyPrintUsage
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.printUsage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "Oct-09-2022-dailyPrintUsageSummary",
      "usageDate": "2022-10-10",
      "completedBlackAndWhiteJobCount": 45,
      "completedColorJobCount": 15,
      "incompleteJobCount": 2,
      "completedJobCount": 60,
      "pageCount": 105,
      "colorPageCount": 15,
      "blackAndWhitePageCount": 90,
      "mediaSheetCount": 105,
      "doubleSidedSheetCount": 45,
      "singleSidedSheetCount": 15
    }
  ]
}
```
