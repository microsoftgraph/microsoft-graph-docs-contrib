---
title: "sharePointRestoreSession resource type"
description: "Describes sharepoint restore session and its properties"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# sharePointRestoreSession resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

SharePoint restore session APIs are used by Global Admin or SharePoint Online Admin to perform restore related tasks on artifacts which are protected as part of SharePoint protection policy.

Inherits from [restoreSessionBase](../resources/restoresessionbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create sharePointRestoreSession](../api/backuprestoreroot-post-sharepointrestoresessions.md)|[sharePointRestoreSession](../resources/sharepointrestoresession.md)|Create a new [sharePointRestoreSession](../resources/sharepointrestoresession.md).|
|[List siteRestoreArtifacts](../api/sharepointrestoresession-list-siterestoreartifacts.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|Get the siteRestoreArtifact resources from the siteRestoreArtifacts navigation property.|
|[Update sharePointRestoreSession](../api/sharepointrestoresession-update.md)|[sharePointRestoreSession](../resources/sharepointrestoresession.md)|Update the properties of a [sharePointRestoreSession](../resources/sharepointrestoresession.md).|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the Restore Session created.|
|completedDateTime|DateTimeOffset|The time of creation of the Restore Session.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the Restore Session.|
|createdDateTime|DateTimeOffset|The time of completion of the Restore Session.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if the Restore Session fails or completed with error.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this Restore Session.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this Restore Session.|
|status|[restoreSessionStatus](../resources/sharepointrestoresession.md#restoresessionstatus-values)|Status of the restore session. It is an aggregated status of restore artifacts.The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|

### restoreSessionStatus values

|Member | Description |
|:------|:------------|
|draft|All Artifacts are in "added" status, Restore Session status is "draft".|
|activating|All Artifacts are in "scheduling" status, Restore Session status is "activating".|
|active|All or any Restore Artifacts are in scheduled or inProgress status, Restore Session status will be active.|
|completedWithError|Some Restore Artifacts in failed status, some in succeeded status and all the Artifacts are in terminal state, Restore Session status will be completedWithErrors.|
|completed| All Restore Artifacts are in succeeded status, Restore Session status will be completed.|
|failed| All Restore Artifacts are in failed status, Restore Session status will be failed.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|siteRestoreArtifacts|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|Collection of SharePoint site unit Restore Point and destination relevant details that can be used to restore it.|

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
