---
title: "driveExclusionUnitsBulkAdditionJob resource type"
description: "Represents an async job for bulk-adding drive exclusion units to a OneDrive for work or school protection policy configured for full workload backup."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Drive exclusion units bulk addition job
ms.date: 03/26/2026
---

# driveExclusionUnitsBulkAdditionJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an async job for bulk-adding drive exclusion units to a [OneDrive for work or school protection policy](../resources/onedriveforbusinessprotectionpolicy.md) configured for full workload backup.

The initial status upon creation of the job is `active`. When all the drives are added to the corresponding OneDrive for work or school protection policy as exclusion units, the status of the job is `completed`. If any failures occur, the status of the job is `completedWithErrors`.

Inherits from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onedriveforbusinessprotectionpolicy-list-driveexclusionunitsbulkadditionjobs.md)|[driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) collection|Get a list of [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) objects associated with an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[Create](../api/onedriveforbusinessprotectionpolicy-post-driveexclusionunitsbulkadditionjobs.md)|[driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md)|Create a new [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) for an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|
|[Get](../api/driveexclusionunitsbulkadditionjob-get.md)|[driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md)|Get a [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) associated with an [oneDriveForBusinessProtectionPolicy](../resources/onedriveforbusinessprotectionpolicy.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the bulk addition job. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|createdDateTime|DateTimeOffset|The date and time when the bulk addition job was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|displayName|String|The display name of the bulk addition job. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|drives|String collection|The email addresses or user principal names of the users whose OneDrive drives are to be added as exclusion units to the protection policy.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the bulk addition job failed. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|id|String|The unique identifier of the bulk addition job. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the bulk addition job. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the bulk addition job was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|status|[exclusionUnitBulkJobStatus](../resources/enums.md#exclusionunitbulkjobstatus-values)|The status of the bulk addition job. The possible values are: `created`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.driveExclusionUnitsBulkAdditionJob",
  "baseType": "microsoft.graph.exclusionUnitBulkAdditionJob",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveExclusionUnitsBulkAdditionJob",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "drives": ["String"],
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String"
}
```
