---
title: "ediscoveryHoldPolicySyncOperation resource type"
description: "Represents an operation that adds or updates a legal hold policy."
author: "kylefk"
ms.date: 09/07/2025
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryHoldPolicySyncOperation resource type

Namespace: microsoft.graph.security

Represents an operation that adds or updates a legal hold policy.

For more information, see [Manage holds in eDiscovery](/purview/edisc-hold-manage).

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`, `exportReport`, `exportResult`, `holdPolicySync`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`, `exportReport`, `exportResult`, `holdPolicySync`. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|completedDateTime|DateTimeOffset| The date and time the operation was completed. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[identitySet](../resources/identityset.md)| The user that created the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset| The date and time the operation was created. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|percentProgress|Int32| The progress of the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|reportFileMetadata|[microsoft.graph.security.reportFileMetadata](../resources/security-ediscoveryreportfilemetadata.md) collection|Contains the properties for report file metadata, including **downloadUrl**, **fileName**, and **size**.|
|resultInfo|[resultInfo](../resources/resultinfo.md)| Contains success and failure-specific result information. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`. Inherited from [caseOperation](../resources/security-caseoperation.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryHoldPolicySyncOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryHoldPolicySyncOperation",
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
  },
  "reportFileMetadata": [
    {
      "@odata.type": "microsoft.graph.security.reportFileMetadata"
    }
  ]
}
```

