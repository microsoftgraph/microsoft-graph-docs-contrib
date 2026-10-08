---
title: "recoveryJobBase resource type"
description: "Abstract base type for recovery jobs. Defines common properties shared by preview and recovery jobs."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# recoveryJobBase resource type

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type for recovery jobs. Defines common properties shared by [recoveryPreviewJob](entrarecoveryservices-recoverypreviewjob.md) and [recoveryJob](entrarecoveryservices-recoveryjob.md). Cannot be instantiated directly. Jobs follow the resource-based long running operation (RELO) pattern.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entrarecoveryservices-recovery-list-jobs.md)|[microsoft.graph.entraRecoveryServices.recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md)| Get a list of the recoveryJobBase objects and their properties.|
|[Cancel](../api/entrarecoveryservices-recoveryjobbase-cancel.md)|None|Cancel a running recovery or preview job.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|filteringCriteria|[microsoft.graph.entraRecoveryServices.recoveryJobFilteringCriteriaBase](../resources/entrarecoveryservices-recoveryjobfilteringcriteriabase.md)|Optional filtering criteria used to scope the job to specific entity types or entity IDs.|
|id|String|The unique identifier for the job. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|jobCompletionDateTime|DateTimeOffset|The date and time when the job completed. Null if the job is still running.|
|jobStartDateTime|DateTimeOffset|The date and time when the job started.|
|status|[microsoft.graph.entraRecoveryServices.recoveryStatus](../resources/enums-entrarecoveryservices.md)|The current status of the job. The possible values are: `initialized`, `running`, `successful`, `failed`, `abandoned`, `unknownFutureValue`, `calculating`, `loadingData`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `calculating`, `loadingData`. Supports `$filter` (`eq`, `ne`).|
|targetStateDateTime|DateTimeOffset|The target snapshot timestamp to which the tenant is being restored. Supports `$filter` (`eq`, `ne`).|
|totalChangedLinksCalculated|Int32|The total count of changed directory object links (relationships) calculated by the job. `null` until the job completes calculation. Not all calculated link changes may be successfully applied; see **totalLinksModified** on derived types for the count of links that were actually modified.|
|totalChangedObjectsCalculated|Int32|The total count of changed directory objects calculated by the job. `null` until the job completes calculation. Not all calculated object changes may be successfully applied; see **totalObjectsModified** on derived types for the count of objects that were actually modified.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryJobBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryJobBase",
  "id": "String (identifier)",
  "status": "String",
  "targetStateDateTime": "String (timestamp)",
  "jobStartDateTime": "String (timestamp)",
  "jobCompletionDateTime": "String (timestamp)",
  "filteringCriteria": {
    "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryJobFilteringCriteriaBase"
  },
  "totalChangedObjectsCalculated": "Integer",
  "totalChangedLinksCalculated": "Integer"
}
```
