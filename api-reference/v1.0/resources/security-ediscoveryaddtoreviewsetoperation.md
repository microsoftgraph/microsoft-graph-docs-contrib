---
title: "ediscoveryAddToReviewSetOperation resource type"
description: "Represents an operation to add an eDiscoverySearch to an eDiscoveryReviewSet."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 10/30/2024
---

# ediscoveryAddToReviewSetOperation resource type

Namespace: microsoft.graph.security



Represents an operation to add an [eDiscoverySearch](../resources/security-ediscoverysearch.md) to an [eDiscoveryReviewSet](../resources/security-ediscoveryreviewset.md).

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`, `exportReport`, `exportResult`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`, `exportReport`, `exportResult`. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|completedDateTime|DateTimeOffset| The date and time the operation was completed. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[identitySet](../resources/identityset.md)| The user that created the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset| The date and time the operation was created. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|percentProgress|Int32| The progress of the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[resultInfo](../resources/resultinfo.md)| Contains success and failure-specific result information. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|status|microsoft.graph.security.caseOperationStatus| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`. Inherited from [caseOperation](../resources/security-caseoperation.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|eDiscovery review set to which items matching source collection query gets added.|
|search|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|eDiscovery search that gets added to review set.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryAddToReviewSetOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryAddToReviewSetOperation",
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

