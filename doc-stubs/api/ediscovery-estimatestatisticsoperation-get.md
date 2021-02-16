---
title: "Get estimateStatisticsOperation"
description: "Read the properties and relationships of an estimateStatisticsOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get estimateStatisticsOperation
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/lastEstimateStatisticsOperation
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

If successful, this method returns a `200 OK` response code and an [estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_estimatestatisticsoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/sourceCollections/{sourceCollectionId}/lastEstimateStatisticsOperation
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.estimateStatisticsOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.ediscovery.estimateStatisticsOperation",
    "id": "af53cc71-cc71-af53-71cc-53af71cc53af",
    "createdDateTime": "String (timestamp)",
    "completedDateTime": "String (timestamp)",
    "percentProgress": "Integer",
    "status": "String",
    "action": "String",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "resultInfo": {
      "@odata.type": "microsoft.graph.resultInfo"
    },
    "indexedItemCount": "Integer",
    "indexedItemsSize": "Integer",
    "unindexedItemCount": "Integer",
    "unindexedItemsSize": "Integer",
    "mailboxCount": "Integer",
    "siteCount": "Integer"
  }
}
```

