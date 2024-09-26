---
title: "protectionUnitsBulkJobBase resource type"
description: "Represents a bulk job associated to one of the protection policy, as specified by the client as part of a protection plan applied to Microsoft 365 data in an organization."
author: "neminbshah"
ms.reviewer: "tushar20"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Bulk Addition Job
---

# protectionUnitsBulkJobBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a bulk job associated to one of the protection policy, as specified by the client as part of a protection plan applied to Microsoft 365 data in an organization.

This abstract type is the base type for [siteProtectionUnitsBulkAdditionJob](../resources/siteProtectionUnitsBulkAdditionJob.md), [mailboxProtectionUnitsBulkAdditionJob](../resources/mailboxprotectionunitsbulkadditionjob.md), and [driveProtectionUnitsBulkAdditionJob](../resources/driveprotectionunitsbulkadditionjob.md).

The following limitation applies to this resource:

- The protection units bulk addition job APIs for bulk addition of protection units in the backup policy can accommodate a maximum of 50,000 protection resources in a single job.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the bulk job associated to the policy.|
|displayName|String|The name of the Protection Units bulk addition job.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the job.|
|createdDateTime|DateTimeOffset|The time of creation of the job.|
|error|[publicError](../resources/publicerror.md)|Error details containing resource resolution failures, if any.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|The identity of the person who last modified the job.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification made to the job.|
|status|[protectionUnitsBulkJobStatus](../resources/protectionunitsbulkjobbase.md#protectionunitsbulkjobstatus-values )|The status of the job. The possible values are: `active`, `completed`, `completedWithErrors`, `unknownFutureValue`.|

### protectionUnitsBulkJobStatus values

|Member | Description |
|:------|:------------|
|active | 	The status of the job when it's running.|
|completed | The status of the job when it's successfully applied to the corresponding policy.|
|completedWithErrors | The status when the job finished running, but encountered errors.|
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
