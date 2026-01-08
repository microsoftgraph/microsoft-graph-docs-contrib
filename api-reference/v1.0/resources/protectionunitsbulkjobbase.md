---
title: "protectionUnitsBulkJobBase resource type"
description: "Represents a bulk job associated with one of the protection policies, as specified by the client as part of a protection plan applied to Microsoft 365 data in an organization."
author: "nupurmunda"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Protection units bulk addition job
ms.date: 05/22/2025
---

# protectionUnitsBulkJobBase resource type

Namespace: microsoft.graph

Represents a bulk job associated with one of the protection policies, as specified by the client as part of a protection plan applied to Microsoft 365 data in an organization.

This abstract type is the base type for [siteProtectionUnitsBulkAdditionJob](../resources/siteProtectionUnitsBulkAdditionJob.md), [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md), and [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md).

> [!NOTE]
> The protection units bulk addition job APIs for bulk addition of protection units in the backup policy can accommodate a maximum of 50,000 protection resources in a single job.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the job.|
|createdDateTime|DateTimeOffset|The time of creation of the job.|
|displayName|String|The name of the protection units bulk addition job.|
|id|String|The unique identifier of the bulk job associated with the policy.|
|error|[publicError](../resources/publicerror.md)|Error details containing resource resolution failures, if any.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the job.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification made to the job.|
|status|[protectionUnitsBulkJobStatus](../resources/protectionunitsbulkjobbase.md#protectionunitsbulkjobstatus-values )|The status of the job. The possible values are: `unknown`, `active`, `completed`, `completedWithErrors`, and `unknownFutureValue`.|

### protectionUnitsBulkJobStatus values

|Member | Description |
|:------|:------------|
|unknown | The job is in an indeterminate state, possibly due to a temporary system issue or error. |
|active | The job is running.|
|completed | The job when was successfully applied to the corresponding policy.|
|completedWithErrors | The job finished running but encountered errors.|
|unknownFutureValue | Evolvable enumeration sentinel value. Don't use.    |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.protectionUnitsBulkJobBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.protectionUnitsBulkJobBase",
  "id": "String (identifier)",
  "displayName": "String",
  "status": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```
