---
title: "tagOperation resource type"
description: "The operation that handles applying tags to documents"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# tagOperation resource type

Namespace: microsoft.graph

The operation that handles applying tags to documents.

Inherits from [caseOperation](../resources/caseoperation.md).

## Methods

None

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|caseAction| The type of operation - `applyTags`. Read-only. Inherited from [caseOperation](../resources/caseoperation.md).|
|completedDateTime|DateTimeOffset|The date and time the operation was completed. Read-only. Inherited from [caseOperation](../resources/caseoperation.md)|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the operation. Read-only. Inherited from [caseOperation](../resources/caseoperation.md)|
|createdDateTime|DateTimeOffset|The date and time the operation was started. Read-only. Inherited from [caseOperation](../resources/caseoperation.md)|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/caseoperation.md).|
|percentProgress|Int32|The progress of the operation. Read-only. Inherited from [caseOperation](../resources/caseoperation.md)|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/caseoperation.md)|
|status|caseOperationStatus|The status of the case operation. Inherited from [caseOperation](../resources/caseoperation.md). Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.tagOperation",
  "baseType": "microsoft.compliance.ediscovery.contract.caseOperation",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.tagOperation",
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
