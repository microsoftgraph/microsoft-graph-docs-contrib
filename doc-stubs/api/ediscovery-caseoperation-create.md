---
title: "Create caseOperation"
description: "Create a new caseOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create caseOperation
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [caseOperation](../resources/ediscovery-caseoperation.md) object.

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
POST /compliance/ediscovery/cases/{caseId}/operations
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [caseOperation](../resources/ediscovery-caseoperation.md) object.

The following table shows the properties that are required when you create the [caseOperation](../resources/ediscovery-caseoperation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|percentProgress|Int32|**TODO: Add Description**|
|status|caseOperationStatus|**TODO: Add Description**. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|
|action|caseAction|**TODO: Add Description**. Possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description**|
|resultInfo|[resultInfo](../resources/ediscovery-resultinfo.md)|**TODO: Add Description**|



## Response

If successful, this method returns a `201 Created` response code and a [caseOperation](../resources/ediscovery-caseoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_caseoperation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/compliance/ediscovery/cases/{caseId}/operations
Content-Type: application/json
Content-length: 339

{
  "@odata.type": "#microsoft.graph.ediscovery.caseOperation",
  "completedDateTime": "String (timestamp)",
  "percentProgress": "Integer",
  "status": "String",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  }
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.caseOperation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ediscovery.caseOperation",
  "id": "3b82f379-f379-3b82-79f3-823b79f3823b",
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
  }
}
```

