---
title: "siteRestoreArtifact resource type"
description: "Describes site restore artifact and it's properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# siteRestoreArtifact resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore Artifact refers to the site unit's restore point and destination relevant details that can be used to restore it.

Inherits from [restoreArtifactBase](../resources/restoreartifactbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List siteRestoreArtifact objects](../api/sharepointrestoresession-list-siterestoreartifacts.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|Get a list of the [siteRestoreArtifact](../resources/siterestoreartifact.md) objects and their properties.|
|[Create siteRestoreArtifact](../api/sharepointrestoresession-post-siterestoreartifacts.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md)|Create a new [siteRestoreArtifact](../resources/siterestoreartifact.md) object.|
|[Get siteRestoreArtifact](../api/siterestoreartifact-get.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md)|Read the properties and relationships of a [siteRestoreArtifact](../resources/siterestoreartifact.md) object.|
|[Update siteRestoreArtifact](../api/siterestoreartifact-update.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md)|Update the properties of a [siteRestoreArtifact](../resources/siterestoreartifact.md) object.|
|[Delete siteRestoreArtifact](../api/sharepointrestoresession-delete-siterestoreartifacts.md)|None|Delete a [siteRestoreArtifact](../resources/siterestoreartifact.md) object.|
|[List restorePoint](../api/siterestoreartifact-list-restorepoint.md)|[restorePoint](../resources/restorepoint.md) collection|Get the restorePoint resources from the restorePoint navigation property.|
|[Add restorePoint](../api/siterestoreartifact-post-restorepoint.md)|[restorePoint](../resources/restorepoint.md)|Add restorePoint by posting to the restorePoint collection.|
|[Remove restorePoint](../api/siterestoreartifact-delete-restorepoint.md)|None|Remove a [restorePoint](../resources/restorepoint.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore artifact.|
|completionDateTime|DateTimeOffset|The time when restoration of restore artifact is completed. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|destinationType|destinationType|Describes preference for restoration destination. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if the restoration of restore artifact fails. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|restoredSiteId|String|The new site identifier if destinationType is new, and input siteId for for inPlace.|
|restoredSiteName|String|The name of the restored site.|
|restoredSiteWebUrl|String|The web url of the site restored|
|startDateTime|DateTimeOffset|The time when restoration of restore artifact is started. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|status|artifactRestoreStatus|The individual restoration status of the restore artifact. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

### artifactRestoreStatus values
|Member | Description |
|:------|:------------|
|added|Initial Status when restore artifact has been added to restore session.|
|scheduling|Status when activate action is called on the restore session.|
|scheduled|Status when activate action call is successfull on the restore session.|
|inProgress|This state arrives when restore artifact is/has been picked for restoration.|
|succeeded|The restore artifact has successfully restored.|
|failed|This state arrives when restoration of artifact is failed.|
|unknownFutureValue| Marker value for future compatibility.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|restorePoint|[restorePoint](../resources/restorepoint.md)|Restore artifact refers to the site unit's restore point and destination relevant details that can be used to restore it. Inherited from [microsoft.backupRestore.restoreArtifactBase](../resources/restoreartifactbase.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteRestoreArtifact",
  "baseType": "microsoft.backupRestore.restoreArtifactBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.siteRestoreArtifact",
  "id": "String (identifier)",
  "destinationType": "String",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "restoredSiteId": "String",
  "restoredSiteName": "String",
  "restoredSiteWebUrl": "String"
}
```

