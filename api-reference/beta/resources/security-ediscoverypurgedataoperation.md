---
title: "ediscoveryPurgeDataOperation resource type"
description: "Represents the process of purging data of an eDiscovery search."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryPurgeDataOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the process of purging data of an eDiscovery search.

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
None.
## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `addToReviewSet`,`applyTags`,`contentExport`,`convertToPdf`,`estimateStatistics`, `purgeData`|
|completedDateTime|DateTimeOffset| The date and time the operation was completed. |
|createdBy|[identitySet](../resources/identityset.md)| The user that created the operation. |
|createdDateTime|DateTimeOffset| The date and time the operation was created. |
|id|String| The ID for the operation. Read-only. |
|percentProgress|Int32| The progress of the operation. |
|resultInfo|[resultInfo](../resources/resultinfo.md)| Contains success and failure-specific result information. |
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

### purgeType values

|Name|Description|
|:----|-----------|
|recoverable|Purged data is recoverable.|
|permanentlyDeleted|Purged data is permanently deleted.|
|unknownFutureValue|Reserved for future options.|
### purgeAreas values

|Name|Description|
|:----|-----------|
|mailboxes|Purges data from Exchange mailboxes.|
|teamsMessages|Purges Teams messages.|
|unknownFutureValue|Reserved for future options.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryPurgeDataOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryPurgeDataOperation",
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

