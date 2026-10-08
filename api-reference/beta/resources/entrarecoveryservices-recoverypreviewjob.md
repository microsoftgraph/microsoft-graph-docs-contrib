---
title: "recoveryPreviewJob resource type"
description: "Represents a preview job that calculates and enumerates the changes required to recover a tenant to a specific snapshot state."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# recoveryPreviewJob resource type

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a preview job that calculates and enumerates the changes required to recover a tenant to a specific snapshot state. Inherits from [recoveryJobBase](entrarecoveryservices-recoveryjobbase.md). Use the [getChanges](../api/entrarecoveryservices-recoverypreviewjob-getchanges.md) function to retrieve the calculated changes after the job completes.

Inherits from [microsoft.graph.entraRecoveryServices.recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entrarecoveryservices-snapshot-list-recoverypreviewjobs.md)|[microsoft.graph.entraRecoveryServices.recoveryPreviewJob](../resources/entrarecoveryservices-recoverypreviewjob.md) collection|Get a list of the recoveryPreviewJob objects and their properties.|
|[Create](../api/entrarecoveryservices-snapshot-post-recoverypreviewjobs.md)|[microsoft.graph.entraRecoveryServices.recoveryPreviewJob](../resources/entrarecoveryservices-recoverypreviewjob.md)|Create a new recoveryPreviewJob object.|
|[Get](../api/entrarecoveryservices-recoverypreviewjob-get.md)|[microsoft.graph.entraRecoveryServices.recoveryPreviewJob](../resources/entrarecoveryservices-recoverypreviewjob.md)|Read the properties and relationships of a recoveryPreviewJob object.|
|[Get changes](../api/entrarecoveryservices-recoverypreviewjob-getchanges.md)|[microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase](../resources/entrarecoveryservices-recoverychangeobjectbase.md) collection|Retrieve the collection of changes calculated by the preview job.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|filteringCriteria|[microsoft.graph.entraRecoveryServices.recoveryJobFilteringCriteriaBase](../resources/entrarecoveryservices-recoveryjobfilteringcriteriabase.md)|Optional filtering criteria used to scope the job to specific entity types or entity IDs. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|
|id|String|The unique identifier for the job. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|jobCompletionDateTime|DateTimeOffset|The date and time when the job completed. `null` if the job is still running. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|
|jobStartDateTime|DateTimeOffset|The date and time when the job started. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|
|status|[microsoft.graph.entraRecoveryServices.recoveryStatus](../resources/enums-entrarecoveryservices.md)|The current status of the job. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md). The possible values are: `initialized`, `running`, `successful`, `failed`, `abandoned`, `unknownFutureValue`, `calculating`, `loadingData`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `calculating`, `loadingData`. Supports `$filter` (`eq`, `ne`).|
|targetStateDateTime|DateTimeOffset|The target snapshot timestamp to which the tenant is being restored. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md). Supports `$filter` (`eq`, `ne`).|
|totalChangedLinksCalculated|Int32|The total count of changed directory object links (relationships) calculated by the job. `null` until the job completes calculation. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|
|totalChangedObjectsCalculated|Int32|The total count of changed directory objects calculated by the job. `null` until the job completes calculation. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryPreviewJob",
  "baseType": "microsoft.graph.entraRecoveryServices.recoveryJobBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryPreviewJob",
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
