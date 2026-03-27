---
title: "recoveryJob resource type"
description: "Represents a recovery job that applies changes to restore a tenant's directory objects to a specific snapshot state."
author: "yuhko-msft"
ms.date: 03/04/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: resourcePageType
---

# recoveryJob resource type

Namespace: microsoft.graph.entraRecoveryServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a recovery job that applies changes to restore a tenant's directory objects to a specific snapshot state. Inherits from [recoveryJobBase](entrarecoveryservices-recoveryjobbase.md). After the job completes, use the `getFailedChanges` function to review any changes that could not be applied.

Inherits from [microsoft.graph.entraRecoveryServices.recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/entrarecoveryservices-snapshot-list-recoveryjobs.md)|[microsoft.graph.entraRecoveryServices.recoveryJob](../resources/entrarecoveryservices-recoveryjob.md) collection|Get a list of the recoveryJob objects and their properties.|
|[Create](../api/entrarecoveryservices-snapshot-post-recoveryjobs.md)|[microsoft.graph.entraRecoveryServices.recoveryJob](../resources/entrarecoveryservices-recoveryjob.md)|Create a new recoveryJob object.|
|[Get](../api/entrarecoveryservices-recoveryjob-get.md)|[microsoft.graph.entraRecoveryServices.recoveryJob](../resources/entrarecoveryservices-recoveryjob.md)|Read the properties and relationships of a recoveryJob object.|
|[Get failed changes](../api/entrarecoveryservices-recoveryjob-getfailedchanges.md)|[microsoft.graph.entraRecoveryServices.recoveryChangeObjectBase](../resources/entrarecoveryservices-recoverychangeobjectbase.md) collection|Retrieve changes that failed to apply during recovery.|
 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|filteringCriteria|[microsoft.graph.entraRecoveryServices.recoveryJobFilteringCriteriaBase](../resources/entrarecoveryservices-recoveryjobfilteringcriteriabase.md)|Optional filtering criteria used to scope the job to specific entity types or entity IDs. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|
|id|String|The unique identifier for the job. Inherited from [entity](../resources/entity.md). Supports `$filter` (`eq`, `ne`).|
|jobCompletionDateTime|DateTimeOffset|The date and time when the job completed. Null if the job is still running. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|
|jobStartDateTime|DateTimeOffset|The date and time when the job started. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|
|status|[microsoft.graph.entraRecoveryServices.recoveryStatus](../resources/enums-entrarecoveryservices.md)|The current status of the job. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md). The possible values are: `initialized`, `running`, `successful`, `failed`, `abandoned`, `unknownFutureValue`, `calculating`, `loadingData`. You must use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `calculating`, `loadingData`. Supports `$filter` (`eq`, `ne`).|
|targetStateDateTime|DateTimeOffset|The target snapshot timestamp to which the tenant is being restored. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md). Supports `$filter` (`eq`, `ne`).|
|totalChangedLinksCalculated|Int32|The total count of changed directory object links (relationships) calculated by the job. `null` until the job completes calculation. This value can differ from **totalLinksModified** because some link changes may fail to apply during recovery. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|
|totalChangedObjectsCalculated|Int32|The total count of changed directory objects calculated by the job. `null` until the job completes calculation. This value can differ from **totalObjectsModified** because some object changes may fail to apply during recovery. Inherited from [recoveryJobBase](../resources/entrarecoveryservices-recoveryjobbase.md).|
|totalFailedChanges|Int32|The count of changes (including both objects and links) that failed to apply during recovery.|
|totalLinksModified|Int32|The count of directory object links (relationships) that were successfully modified during recovery. This value may be less than **totalChangedLinksCalculated** if some link changes failed.|
|totalObjectsModified|Int32|The count of directory objects that were successfully modified during recovery. This value may be less than **totalChangedObjectsCalculated** if some object changes failed.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryJob",
  "baseType": "microsoft.graph.entraRecoveryServices.recoveryJobBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.entraRecoveryServices.recoveryJob",
  "id": "String (identifier)",
  "status": "String",
  "targetStateDateTime": "String (timestamp)",
  "jobStartDateTime": "String (timestamp)",
  "jobCompletionDateTime": "String (timestamp)",
  "filteringCriteria": {
    "@odata.type": "microsoft.graph.entraRecoveryServices.recoveryJobFilteringCriteriaBase"
  },
  "totalChangedObjectsCalculated": "Integer",
  "totalChangedLinksCalculated": "Integer",
  "totalObjectsModified": "Integer",
  "totalLinksModified": "Integer",
  "totalFailedChanges": "Integer"
}
```
