---
title: "cloudPcSnapshotImportActionResult resource type"
description: "Represents the result of the snapshot import action. Each action has status and can be tracked individually. Once the action returns `succeeded` status, the snapshot is then ready for use in Cloud PC provisioning."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/10/2025
---

# cloudPcSnapshotImportActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the result of the snapshot import action. Each action has status and can be tracked individually. Once the action returns `succeeded` status, the snapshot is then ready for use in Cloud PC provisioning.

Windows 365 administrators need to prepare Provisioning Policy and assign to users as a requirement for snapshot import.

## Properties
| Property           | Type         | Description                   |
| ------------------ | ------------ | ----------------------------- | 
| snapshotId   | String | The unique identifier for the imported snapshot. Example: `d09ae73d-b70f-4836-95c1-59652c947e1c`. Read-only.    |
| filename   | String | The file name for the imported snapshot. Example: `MyCloudPc.vhd`. Read-only.      |
| importStatus | [cloudPcSnapshotImportActionStatus](#cloudpcsnapshotimportactionstatus-values) | The status of the snapshot import action, Possible values: pending, inProgress, succeeded, failed. Default is "pending." Read-only. |
| usageStatus | [cloudPcImportedSnapshotState](#cloudpcimportedsnapshotstate-values) | The Cloud PC usage status of the imported snapshot. Possible values: notUsed, inUse, expired. Default is "notUsed." Read-only. |
| assignedUserPrincipalName   | String | The assigned user's principal name. Example: example@example.com.   |
| policyName   | String | The assigned Provision policy name of the upload action. This policy is the Provision policy that takes effect if a new Cloud PC is going to be provisioned. Example: "MyProvisioningPolicy". Read-only.   |
| startDateTime | DateTimeOffset                                                 | The start time of the snapshot import action. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appear as '2014-01-01T00:00:00Z.' Read-Only.            |
| endDateTime   | DateTimeOffset                                                 | The end time of the snapshot import action. The timestamp is shown in ISO 8601 format and Coordinated Universal Time (UTC). For example, midnight UTC on Jan 1, 2014 appear as '2014-01-01T00:00:00Z.' Read-Only.  |
| additionalDetail   | String | More details about the snapshot import action. Example: `The snapshot import has failed because the file format is incorrect.` This property only contains value when errors happen during the process. Read-only.   |

### cloudPcImportedSnapshotState values

|Member|Description|
|:---|:---|
| notUsed          | Indicates snapshot isn't yet used.        |
| inUse             |  Indicates snapshot is currently in use.            |
| expired             |  Indicates the snapshot is expired and can no longer be used.            |
| unknownFutureValue |  Evolvable enumeration sentinel value. Don't use. |

### cloudPcSnapshotImportActionStatus values

|Member|Description|
|:---|:---|
| pending          | Indicates snapshot upload is queued and not yet executed.        |
| inProgress             | Indicates snapshot is currently being uploaded.            |
| succeeded             | Indicates snapshot upload action finished successfully.            |
| failed             | Indicates snapshot upload is failed.            |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "snapshotId",
  "@odata.type": "microsoft.graph.cloudPcSnapshotImportActionResult",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSnapshotImportActionResult",
  "snapshotId": "String",
  "filename": "String",
  "importStatus": "#microsoft.graph.cloudPcSnapshotImportActionStatus",
  "usageStatus": "#microsoft.graph.cloudPcImportedSnapshotState",
  "assignedUserPrincipalName": "String",
  "policyName": "String",
  "startDateTime": "DateTimeOffset",
  "endDateTime": "DateTimeOffset",
  "additionalDetail": "String"
}
```
