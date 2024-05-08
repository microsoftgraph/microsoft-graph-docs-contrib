---
title: "sharePointRestoreSession resource type"
description: "Describes sharepoint restore session and it's properties"
author: "tkanaujia, maniksingh"
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
|[List sharePointRestoreSession objects](../api/backuprestoreroot-list-sharepointrestoresessions.md)|[sharePointRestoreSession](../resources/sharepointrestoresession.md) collection|Get a list of the [sharePointRestoreSession](../resources/sharepointrestoresession.md) objects and their properties.|
|[Create sharePointRestoreSession](../api/backuprestoreroot-post-sharepointrestoresessions.md)|[sharePointRestoreSession](../resources/sharepointrestoresession.md)|Create a new [sharePointRestoreSession](../resources/sharepointrestoresession.md) object.|
|[Get sharePointRestoreSession](../api/sharepointrestoresession-get.md)|[sharePointRestoreSession](../resources/sharepointrestoresession.md)|Read the properties and relationships of a [sharePointRestoreSession](../resources/sharepointrestoresession.md) object.|
|[Update sharePointRestoreSession](../api/sharepointrestoresession-update.md)|[sharePointRestoreSession](../resources/sharepointrestoresession.md)|Update the properties of a [sharePointRestoreSession](../resources/sharepointrestoresession.md) object.|
|[Delete sharePointRestoreSession](../api/backuprestoreroot-delete-sharepointrestoresessions.md)|None|Delete a [sharePointRestoreSession](../resources/sharepointrestoresession.md) object.|
|[activate](../api/sharepointrestoresession-activate.md)|[restoreSessionBase](../resources/restoresessionbase.md)|Activates a draft restore session|
|[List siteRestoreArtifacts](../api/sharepointrestoresession-list-siterestoreartifacts.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|Get the siteRestoreArtifact resources from the siteRestoreArtifacts navigation property.|
|[Create siteRestoreArtifact](../api/sharepointrestoresession-post-siterestoreartifacts.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md)|Create a new siteRestoreArtifact object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore session created|
|completedDateTime|DateTimeOffset|The time of creation of the restore session.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of person who created the restore session.|
|createdDateTime|DateTimeOffset|The time of completion of the restore session.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if the restore session fails or completed with error.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the person who last modified this restore session.|
|lastModifiedDateTime|DateTimeOffset|Timestamp of last modification of this restore session.|
|status|[restoreSessionStatus](../resource/restoresessionbase.md#protectonUnitStatus-values)|Status of the restore session. It is an aggregated status of restore artifacts.The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|

### protectionUnitStatus values
|Member | Description |
|:------|:------------|
|draft|All artifacts are in "added" status, restore session status is "draft".|
|activating|All artifacts are in "scheduling" status, restore session status is "activating".|
|active|All or any restore artifacts are in scheduled or inProgress status, restore session status will be active.|
|completedWithError|Some restore artifacts in failed status, some in succeeded status and all the artifacts are in terminal state, restore session status will be completedWithErrors.|
|completed| All restore artifacts are in succeeded status, restore session status will be completed.|
|failed| All restore artifacts are in failed status, restore session status will be failed.|
|unknownFutureValue| Marker value for future compatibility.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|siteRestoreArtifacts|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|Collection of sharepoint site unit restore point and destination relevant details that can be used to restore it|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sharePointRestoreSession",
  "baseType": "microsoft.backupRestore.restoreSessionBase",
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

