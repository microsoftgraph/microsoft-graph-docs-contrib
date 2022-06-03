---
title: "purgeDataOperation resource type"
description: "Represents an operation to permanently delete data in a sourceCollection. Currently the operation is scoped to Microsoft Teams messages only."
author: "mahage-msft"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# purgeDataOperation resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an operation to permanently delete data in a sourceCollection. This operation is currently scoped to Microsoft Teams messages only; more data sources will be in scope in the future.

Inherits from [caseOperation](../resources/ediscovery-caseoperation.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.ediscovery.caseAction](../resources/ediscovery-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `addToReviewSet`,`applyTags`,`contentExport`,`convertToPdf`,`estimateStatistics`,`purgeData`.|
|completedDateTime|DateTimeOffset| The date and time the operation was completed. |
|createdBy|[identitySet](../resources/identityset.md)| The user that created the operation. |
|createdDateTime|DateTimeOffset| The date and time the operation was created. |
|id|String| The ID for the operation. Read-only. |
|percentProgress|Int32| The progress of the operation. |
|resultInfo|[resultInfo](../resources/resultinfo.md)| Contains success and failure-specific result information. |
|status|[microsoft.graph.ediscovery.caseOperationStatus](../resources/ediscovery-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.purgeDataOperation",
  "baseType": "microsoft.graph.ediscovery.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.purgeDataOperation",
  "id": "String (identifier)",
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
