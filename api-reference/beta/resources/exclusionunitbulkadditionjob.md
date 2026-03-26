---
title: "exclusionUnitBulkAdditionJob resource type"
description: "Represents the abstract base entity for an async job for bulk adding exclusion units to a protection policy."
author: "vidulaverma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Exclusion unit bulk addition job base
ms.date: 03/26/2026
---

# exclusionUnitBulkAdditionJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base entity for an async job that bulk-adds exclusion units to a protection policy. This resource is the base type for [siteExclusionUnitsBulkAdditionJob](../resources/siteexclusionunitsbulkadditionjob.md), [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md), and [mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md).

Inherits from [entity](../resources/entity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the person who created the bulk addition job.|
|createdDateTime|DateTimeOffset|The date and time when the bulk addition job was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|displayName|String|The display name of the bulk addition job.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the bulk addition job failed.|
|id|String|The unique identifier of the bulk addition job. Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the bulk addition job.|
|lastModifiedDateTime|DateTimeOffset|The date and time when the bulk addition job was last modified. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|status|[exclusionUnitBulkJobStatus](../resources/enums.md#exclusionunitbulkjobstatus-values)|The status of the bulk addition job. The possible values are: `created`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exclusionUnitBulkAdditionJob",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exclusionUnitBulkAdditionJob",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "status": "String"
}
```
