---
title: "sharePointRestoreSession resource type"
description: "Represents restore-related tasks on artifacts that are protected by an SharePoint protection policy."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: SharePoint restore session
ms.date: 08/06/2024
---

# sharePointRestoreSession resource type

Namespace: microsoft.graph

Represents restore-related tasks on artifacts that are protected by a [SharePoint protection policy](../resources/sharepointprotectionpolicy.md). Restore session APIs are used by SharePoint Online Admins to perform restore-related tasks on artifacts that are protected as part of a SharePoint protection policy.

Inherits from [restoreSessionBase](../resources/restoresessionbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/backuprestoreroot-post-sharepointrestoresessions.md)|[sharePointRestoreSession](../resources/sharepointrestoresession.md)|Create a new [sharePointRestoreSession](../resources/sharepointrestoresession.md).|
|[List](../api/sharepointrestoresession-list-siterestoreartifacts.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|List the [siteRestoreArtifact](../resources/siterestoreartifact.md) objects for a [sharePointRestoreSession](../resources/sharepointrestoresession.md) for the tenant.|
|[Update](../api/sharepointrestoresession-update.md)|[sharePointRestoreSession](../resources/sharepointrestoresession.md)|Update the properties of a [sharePointRestoreSession](../resources/sharepointrestoresession.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore session.|
|completedDateTime|DateTimeOffset|The time of creation of the restore session.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the restore session.|
|createdDateTime|DateTimeOffset|The time of completion of the restore session.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the restore session fails or is completed with error.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this restore session.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this restore session.|
|restoreJobType|[restoreJobType](../resources/enums.md#restorejobtype-values)|Indicates whether the restore session was created normally or by a bulk job.|
|restoreSessionArtifactCount|[restoreSessionArtifactCount](../resources/restoresessionartifactcount.md)|The number of metadata artifacts that belong to this restore session.|
|status|[restoreSessionStatus](../resources/sharepointrestoresession.md#restoresessionstatus-values)|Status of the restore session. The value is an aggregated status of restore artifacts. The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. You must use the `Prefer: include-unknown-enum-members` request header to get the following members in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|

### restoreSessionStatus values

|Member | Description |
|:------|:------------|
|draft|All artifacts are added.|
|activating|All artifacts are scheduled.|
|active|All or any restore artifacts are scheduled or in progress.|
|completedWithError|Some artifacts failed to restore, and some succeeded.|
|completed| All restore artifacts successfully restored.|
|failed| All restore artifacts failed to restore.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|siteRestoreArtifacts|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|A collection of restore points and destination details that can be used to restore SharePoint sites.|
|siteRestoreArtifactsBulkAdditionRequests|[siteRestoreArtifactsBulkAdditionRequest](../resources/siterestoreartifactsbulkadditionrequest.md) collection|A collection of SharePoint site URLs and destination details that can be used to restore SharePoint sites.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointRestoreSession",
  "baseType": "microsoft.graph.restoreSessionBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointRestoreSession",
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
