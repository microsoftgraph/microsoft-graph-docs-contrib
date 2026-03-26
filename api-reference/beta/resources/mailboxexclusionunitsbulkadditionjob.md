---
title: "mailboxExclusionUnitsBulkAdditionJob resource type"
description: "Represents an async job for bulk adding mailbox exclusion units to an Exchange protection policy."
author: "vidulaverma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Mailbox exclusion units bulk addition job
ms.date: 03/26/2026
---

# mailboxExclusionUnitsBulkAdditionJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an async job for bulk-adding mailbox exclusion units to an [Exchange protection policy](../resources/exchangeprotectionpolicy.md) configured for full workload backup.

The initial status upon creation of the job is `active`. When all the mailboxes are added to the corresponding Exchange protection policy as exclusion units, the status of the job is `completed`. If any failures occur, the status of the job is `completedWithErrors`.

Inherits from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/exchangeprotectionpolicy-post-mailboxexclusionunitsbulkadditionjobs.md)|[mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md)|Create a new [mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md) for an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).|
|[Get](../api/exchangeprotectionpolicy-get-mailboxexclusionunitsbulkadditionjob.md)|[mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md)|Get a [mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md) associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).|
|[List](../api/exchangeprotectionpolicy-list-mailboxexclusionunitsbulkadditionjobs.md)|[mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md) collection|Get a list of [mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md) objects associated with an [exchangeProtectionPolicy](../resources/exchangeprotectionpolicy.md).|

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
|mailboxes|String collection|The email addresses of the mailboxes to be added as exclusion units to the protection policy.|
|status|exclusionUnitBulkJobStatus|The status of the bulk addition job. The possible values are: `created`, `active`, `completed`, `completedWithErrors`, `unknownFutureValue`. Inherited from [exclusionUnitBulkAdditionJob](../resources/exclusionunitbulkadditionjob.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxExclusionUnitsBulkAdditionJob",
  "baseType": "microsoft.graph.exclusionUnitBulkAdditionJob",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxExclusionUnitsBulkAdditionJob",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "displayName": "String",
  "error": {"@odata.type": "microsoft.graph.publicError"},
  "id": "String (identifier)",
  "lastModifiedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "lastModifiedDateTime": "String (timestamp)",
  "mailboxes": ["String"],
  "status": "String"
}
```
