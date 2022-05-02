---
title: "Update ediscoveryEstimateOperation"
description: "Update the properties of an ediscoveryEstimateOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Update ediscoveryEstimateOperation
Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object.

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
PATCH /security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/lastEstimateStatisticsOperation
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md). Optional.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md). Optional.|
|action|caseAction|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md). The possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`. Optional.|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md). Optional.|
|percentProgress|Int32|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md). Optional.|
|status|caseOperationStatus|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md). The possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`. Optional.|
|resultInfo|[microsoft.graph.resultInfo](../resources/resultinfo.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md). Optional.|
|indexedItemCount|Int64|**TODO: Add Description** Optional.|
|indexedItemsSize|Int64|**TODO: Add Description** Optional.|
|unindexedItemCount|Int64|**TODO: Add Description** Optional.|
|unindexedItemsSize|Int64|**TODO: Add Description** Optional.|
|mailboxCount|Int32|**TODO: Add Description** Optional.|
|siteCount|Int32|**TODO: Add Description** Optional.|



## Response

If successful, this method returns a `200 OK` response code and an updated [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_ediscoveryestimateoperation"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/security/cases/ediscoveryCases/{ediscoveryCaseId}/searches/{ediscoverySearchId}/lastEstimateStatisticsOperation
Content-Type: application/json
Content-length: 548

{
  "@odata.type": "#microsoft.graph.security.ediscoveryEstimateOperation",
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
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
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
```

