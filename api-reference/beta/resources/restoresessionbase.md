---
title: "restoreSessionBase resource type"
description: "Describes restore session and it's properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restoreSessionBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore session APIs are used by Global Admin or SharePoint Online Admin for SharePoint Online/OneDrive & Exchange Online Admin for Exchange Online) to perform restore related tasks on artifacts which are protected as part of Protection Policy.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List restoreSessionBase objects](../api/backuprestoreroot-list-restoresessions.md)|[restoreSessionBase](../resources/restoresessionbase.md) collection|Get a list of the [restoreSessionBase](../resources/restoresessionbase.md) objects and their properties.|
|[Create restoreSessionBase](../api/backuprestoreroot-post-restoresessions.md)|[restoreSessionBase](../resources/restoresessionbase.md)|Create a new [restoreSessionBase](../resources/restoresessionbase.md) object.|
|[Get restoreSessionBase](../api/restoresessionbase-get.md)|[restoreSessionBase](../resources/restoresessionbase.md)|Read the properties and relationships of a [restoreSessionBase](../resources/restoresessionbase.md) object.|
|[Update restoreSessionBase](../api/restoresessionbase-update.md)|[restoreSessionBase](../resources/restoresessionbase.md)|Update the properties of a [restoreSessionBase](../resources/restoresessionbase.md) object.|
|[Delete restoreSessionBase](../api/backuprestoreroot-delete-restoresessions.md)|None|Delete a [restoreSessionBase](../resources/restoresessionbase.md) object.|
|[activate](../api/restoresessionbase-activate.md)|[restoreSessionBase](../resources/restoresessionbase.md)|Activates a draft restore session|

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
|status|[restoreSessionStatus](../resource/restoresessionbase.md#restoreSessionStatus-values)|Status of the restore session. It is an aggregated status of restore artifacts.The possible values are: `draft`, `activating`, `active`, `completedWithError`, `completed`, `unknownFutureValue`, `failed`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `failed`.|

### restoreSessionStatus values
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

