---
title: "oneDriveForBusinessRestoreSession resource type"
description: "Represents restore-related tasks on artifacts that are protected by a OneDrive protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: OneDrive for Business restore session
ms.date: 11/25/2024
---

# oneDriveForBusinessRestoreSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents restore-related tasks on artifacts that are protected by a [OneDrive protection policy](exchangeprotectionpolicy.md). Restore session APIs are used by SharePoint Admins to perform restore-related tasks on artifacts that are protected as part of a OneDrive protection policy.

Inherits from [restoreSessionBase](../resources/restoresessionbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-onedriveforbusinessrestoresessions.md)|[oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md)|Create a new [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md).|
|[List](../api/onedriveforbusinessrestoresession-list-driverestoreartifacts.md)|[oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md) collection|Get a list of the [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md) objects and their properties.|
|[Update](../api/onedriveforbusinessrestoresession-update.md)|[oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md)|Update the properties of a [oneDriveForBusinessRestoreSession](../resources/onedriveforbusinessrestoresession.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore session created.|
|completedDateTime|DateTimeOffset|The time of creation of the restore session.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the restore session.|
|createdDateTime|DateTimeOffset|The time of completion of the restore session.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the restore session fails or completes with an error.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this restore session.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification of this restore session.|
|restoreJobType|[restoreJobType](../resources/enums.md#restorejobtype-values)|Indicates whether the restore session was created normally or by a bulk job.|
|restoreSessionArtifactCount|[restoreSessionArtifactCount](../resources/restoresessionartifactcount.md)|The number of metadata artifacts that belong to this restore session.|
|status|[restoreSessionStatus](../resources/onedriveforbusinessrestoresession.md#restoresessionstatus-values)|Status of the restore session. The value is an aggregated status of the restored artifacts. The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|

### restoreSessionStatus values

|Member | Description |
|:------|:------------|
|draft|All artifacts are added.|
|activating|All artifacts are scheduled.|
|active|All or any restore artifacts are scheduled or in progress.|
|completedWithError|Some artifacts failed to restore, and some succeeded.|
|completed| All restore artifacts successfully restored.|
|failed| All restore artifacts failed to restore.|
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|driveRestoreArtifacts|[driveRestoreArtifact](../resources/driverestoreartifact.md) collection|A collection of restore points and destination details that can be used to restore a OneDrive for work or school drive.|
|driveRestoreArtifactsBulkAdditionRequests|[driveRestoreArtifactsBulkAdditionRequest](../resources/driverestoreartifactsbulkadditionrequest.md) collection|A collection of user mailboxes and destination details that can be used to restore a OneDrive for work or school drive.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.oneDriveForBusinessRestoreSession",
  "baseType": "microsoft.graph.restoreSessionBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.oneDriveForBusinessRestoreSession",
  "id": "String (identifier)",
  "status": "String",
  "restoreJobType": "String",
  "restoreSessionArtifactCount": {
    "@odata.type": "microsoft.graph.restoreSessionArtifactCount"
  },
  "createdDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "completedDateTime": "String (timestamp)",
  "lastModifiedDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```

