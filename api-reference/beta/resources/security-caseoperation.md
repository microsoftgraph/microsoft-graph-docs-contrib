---
title: "caseOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# caseOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List caseOperations](../api/security-ediscoverycase-list-operations.md)|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md) collection|Get a list of the [caseOperation](../resources/security-caseoperation.md) objects and their properties.|
|[Create caseOperation](../api/security-ediscoverycase-post-operations.md)|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md)|Create a new [caseOperation](../resources/security-caseoperation.md) object.|
|[Get caseOperation](../api/security-caseoperation-get.md)|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md)|Read the properties and relationships of a [caseOperation](../resources/security-caseoperation.md) object.|
|[Update caseOperation](../api/security-caseoperation-update.md)|[microsoft.graph.security.caseOperation](../resources/security-caseoperation.md)|Update the properties of a [caseOperation](../resources/security-caseoperation.md) object.|
|[Delete caseOperation](../api/security-ediscoverycase-delete-operations.md)|None|Deletes a [caseOperation](../resources/security-caseoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|caseAction|**TODO: Add Description**.The possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`.|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|percentProgress|Int32|**TODO: Add Description**|
|resultInfo|[microsoft.graph.resultInfo](../resources/resultinfo.md)|**TODO: Add Description**|
|status|caseOperationStatus|**TODO: Add Description**.The possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.caseOperation",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseOperation",
  "id": "String (identifier)",
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
  }
}
```

