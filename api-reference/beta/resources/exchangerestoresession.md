---
title: "exchangeRestoreSession resource type"
description: "Represents restore-related tasks on artifacts that are protected by an Exchange protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 11/25/2024
---

# exchangeRestoreSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents restore-related tasks on artifacts that are protected by an [Exchange protection policy](exchangeprotectionpolicy.md). Restore session APIs are used by Exchange Online Admins to perform restore-related tasks on artifacts that are protected as part of a mailbox protection policy.

Inherits from [restoreSessionBase](../resources/restoresessionbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-exchangerestoresessions.md)|[exchangeRestoreSession](../resources/exchangerestoresession.md)|Create a new [exchangeRestoreSession](../resources/exchangerestoresession.md).|
|[List](../api/exchangerestoresession-list-mailboxrestoreartifacts.md)|[exchangeRestoreSession](../resources/exchangerestoresession.md) collection|Get a list of the [exchangeRestoreSession](../resources/exchangerestoresession.md) objects and their properties.|
|[Update](../api/exchangerestoresession-update.md)|[exchangeRestoreSession](../resources/exchangerestoresession.md)|Update the properties of an [exchangeRestoreSession](../resources/exchangerestoresession.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore session created.|
|completedDateTime|DateTimeOffset|The time of creation of the restore session.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the restore session.|
|createdDateTime|DateTimeOffset|The time of completion of the restore session.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the restore session fails or completes with an error.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this restore session.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this restore session.|
|restoreJobType|[restoreJobType](../resources/enums.md#restorejobtype-values)|Indicates whether the restore session was created normally or by a bulk job.|
|restoreSessionArtifactCount|[restoreSessionArtifactCount](../resources/restoresessionartifactcount.md)|The number of metadata artifacts that belong to this restore session.|
|status|[restoreSessionStatus](../resources/exchangerestoresession.md#restoresessionstatus-values)|Status of the restore session. The value is an aggregated status of the restored artifacts. The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|

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
|mailboxRestoreArtifacts|[mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) collection|A collection of restore points and destination details that can be used to restore Exchange mailboxes.|
|mailboxRestoreArtifactsBulkAdditionRequests|[mailboxRestoreArtifactsBulkAdditionRequest](../resources/mailboxrestoreartifactsbulkadditionrequest.md) collection|A collection of user mailboxes and destination details that can be used to restore Exchange mailboxes.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.exchangeRestoreSession",
  "baseType": "microsoft.graph.restoreSessionBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeRestoreSession",
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

