---
title: "restoreArtifactBase resource type"
description: "Describes restore artifact and it's properties"
author: "tkanaujia, maniksingh"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restoreArtifactBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore Artifact refers to the site/drive/mailbox units' restore point and destination relevant details that can be used to restore it.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List restoreArtifactBase objects](../api/restoreartifactbase-list.md)|[restoreArtifactBase](../resources/restoreartifactbase.md) collection|Get a list of the [restoreArtifactBase](../resources/restoreartifactbase.md) objects and their properties.|
|[Get restoreArtifactBase](../api/restoreartifactbase-get.md)|[restoreArtifactBase](../resources/restoreartifactbase.md)|Read the properties and relationships of a [restoreArtifactBase](../resources/restoreartifactbase.md) object.|
|[Update restoreArtifactBase](../api/restoreartifactbase-update.md)|[restoreArtifactBase](../resources/restoreartifactbase.md)|Update the properties of a [restoreArtifactBase](../resources/restoreartifactbase.md) object.|
|[Delete restoreArtifactBase](../api/restoreartifactbase-delete.md)|None|Delete a [restoreArtifactBase](../resources/restoreartifactbase.md) object.|
|[List restorePoint](../api/restoreartifactbase-list-restorepoint.md)|[restorePoint](../resources/restorepoint.md) collection|Get the restorePoint resources from the restorePoint navigation property.|
|[Add restorePoint](../api/restoreartifactbase-post-restorepoint.md)|[restorePoint](../resources/restorepoint.md)|Add restorePoint by posting to the restorePoint collection.|
|[Remove restorePoint](../api/restoreartifactbase-delete-restorepoint.md)|None|Remove a [restorePoint](../resources/restorepoint.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore artifact|
|completionDateTime|DateTimeOffset|The time of createion of the restore artifact.|
|destinationType|destinationType|Describes preference for restoration destination.The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|publicError|Error details will be populated here, if the restore session fails or completed with error.|
|startDateTime|DateTimeOffset|The time when restore session started creating restore artifact|
|status|artifactRestoreStatus|Status of the restore artifact.The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

### restoreSessionStatus values
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
|restorePoint|[restorePoint](../resources/restorepoint.md)| RestorePoints represent the timestamp when an artifact is protected (as per Protection Policy).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.restoreArtifactBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.restoreArtifactBase",
  "id": "String (identifier)",
  "destinationType": "String",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```

