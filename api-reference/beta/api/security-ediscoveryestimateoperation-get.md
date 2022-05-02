---
title: "Get ediscoveryEstimateOperation"
description: "Read the properties and relationships of an ediscoveryEstimateOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get ediscoveryEstimateOperation
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object.

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
GET /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/lastEstimateStatisticsOperation
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

If successful, this method returns a `200 OK` response code and an [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_ediscoveryestimateoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/lastEstimateStatisticsOperation
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.ediscoveryEstimateOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.security.ediscoveryEstimateOperation",
    "id": "f6a24ef7-5a80-9173-46ad-d6e96e42aed1",
    "createdDateTime": "String (timestamp)",
    "completedDateTime": "String (timestamp)",
    "action": "String",
    "createdBy": {
      "@odata.type": "microsoft.graph.identitySet"
    },
    "percentProgress": "Integer",
    "status": "String",
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

