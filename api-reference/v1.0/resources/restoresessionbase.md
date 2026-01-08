---
title: "restoreSessionBase resource type"
description: "Describes a restore session and its properties"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Restore session
ms.date: 08/27/2024
ms.custom: sfi-ga-nochange
---

# restoreSessionBase resource type

Namespace: microsoft.graph

Represents a restore session for a [protection unit](protectionunitbase.md) that's protected by a [protection policy](protectionpolicybase.md). Restore session APIs are used by global admins, SharePoint Online admins, and Exchange Online admins to perform restore-related tasks on artifacts that are protected as part of protection policy.

Restoring to both a new location and the same URL in a single restore session is not supported.

> [!NOTE]
> Restore sessions that are older than one year and in a terminal state are removed.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/backuprestoreroot-list-restoresessions.md)|[restoreSessionBase](../resources/restoresessionbase.md) collection|Get a list of  [restoreSessionBase](../resources/restoresessionbase.md) objects and their properties.|
|[Get](../api/restoresessionbase-get.md)|[restoreSessionBase](../resources/restoresessionbase.md)|Read the properties and relationships of a [restoreSessionBase](../resources/restoresessionbase.md) object.|
|[Delete](../api/restoresessionbase-delete.md)|None|Delete a [restoreSessionBase](../resources/restoresessionbase.md) object.|
|[Activate](../api/restoresessionbase-activate.md)|[restoreSessionBase](../resources/restoresessionbase.md)|Activate a draft restore session.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore session.|
|completedDateTime|DateTimeOffset|The time of completion of the restore session.|
|createdBy|identitySet|The identity of person who created the restore session.|
|createdDateTime|DateTimeOffset|The time of creation of the restore session.|
|error|publicError|Contains error details if the restore session fails or completes with an error.|
|lastModifiedBy|identitySet|Identity of the person who last modified the restore session.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of the last modification of the restore session.|
|restoreJobType|[restoreJobType](../resources/enums.md#restorejobtype-values)|Indicates whether the restore session was created normally or by a bulk job.|
|restoreSessionArtifactCount|[restoreSessionArtifactCount](../resources/restoresessionartifactcount.md)|The number of metadata artifacts that belong to this restore session.|
|status|[restoreSessionStatus](../resources/restoresessionbase.md#restoresessionstatus-values)|Status of the restore session. The value is an aggregated status of the restored artifacts. The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|

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

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.restoreSessionBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restoreSessionBase",
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
