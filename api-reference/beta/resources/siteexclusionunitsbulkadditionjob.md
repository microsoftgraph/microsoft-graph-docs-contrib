---
title: "siteExclusionUnitsBulkAdditionJob resource type"
description: "Represents an async job for bulk adding site exclusion units to a SharePoint protection policy."
author: "vidulaverma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Site exclusion units bulk addition job
ms.date: 03/26/2026
---

# siteExclusionUnitsBulkAdditionJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an async job for bulk-adding site exclusion units to a [SharePoint protection policy](../resources/sharepointprotectionpolicy.md) configured for full workload backup.

The initial status upon creation of the job is `active`. When all the sites are added to the corresponding SharePoint protection policy as exclusion units, the status of the job is `completed`. If any failures occur, the status of the job is `completedWithErrors`.

Inherits from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/sharepointprotectionpolicy-post-siteexclusionunitsbulkadditionjobs.md)|[siteExclusionUnitsBulkAdditionJob](../resources/siteexclusionunitsbulkadditionjob.md)|Create a new [siteExclusionUnitsBulkAdditionJob](../resources/siteexclusionunitsbulkadditionjob.md) for a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).|
|[Get](../api/sharepointprotectionpolicy-get-siteexclusionunitsbulkadditionjob.md)|[siteExclusionUnitsBulkAdditionJob](../resources/siteexclusionunitsbulkadditionjob.md)|Get a [siteExclusionUnitsBulkAdditionJob](../resources/siteexclusionunitsbulkadditionjob.md) associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).|
|[List](../api/sharepointprotectionpolicy-list-siteexclusionunitsbulkadditionjobs.md)|[siteExclusionUnitsBulkAdditionJob](../resources/siteexclusionunitsbulkadditionjob.md) collection|Get a list of [siteExclusionUnitsBulkAdditionJob](../resources/siteexclusionunitsbulkadditionjob.md) objects associated with a [sharePointProtectionPolicy](../resources/sharepointprotectionpolicy.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the bulk addition job. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|createdDateTime|DateTimeOffset|The date and time when the bulk addition job was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|displayName|String|The display name of the bulk addition job. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|error|[publicError](../resources/publicerror.md)|Contains error details if the bulk addition job failed. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|id|String|The unique identifier of the bulk addition job. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the bulk addition job. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|lastModifiedDateTime|DateTimeOffset|The date and time when the bulk addition job was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|
|siteWebUrls|String collection|The URLs of SharePoint sites to be added as exclusion units to the protection policy.|
|status|[exclusionUnitBulkJobStatus](../resources/enums.md#exclusionunitbulkjobstatus-values)|The status of the bulk addition job. The possible values are: `created`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteExclusionUnitsBulkAdditionJob",
  "baseType": "microsoft.graph.exclusionUnitBulkAdditionJob",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.siteExclusionUnitsBulkAdditionJob",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "siteWebUrls": ["String"],
  "status": "String"
}
```
