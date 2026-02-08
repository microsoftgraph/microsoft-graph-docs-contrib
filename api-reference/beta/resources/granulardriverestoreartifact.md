---
title: "granularDriveRestoreArtifact resource type"
description: "Represents the granular artifact of the OneDrive."
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# granularDriveRestoreArtifact resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the granular artifact of the OneDrive that is present within a backed-up drive and can be restored.

Inherits from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onedriveforbusinessrestoresession-list-granulardriverestoreartifacts.md)|[granularDriveRestoreArtifact](../resources/granulardriverestoreartifact.md) collection|Get a list of the granularDriveRestoreArtifact objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|browseSessionId|String|The unique identifier of the [browseSession](../resources/browsesessionbase.md). Inherited from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).|
|completionDateTime|DateTimeOffset|Date time when the artifact's restoration completes. Inherited from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).|
|id|String|The unique identifier for the artifact. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|restoredItemKey|String|The unique identifier for the restored artifact. Inherited from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).|
|restoredItemPath|String|The path of the restored artifact. It's the path of the folder where all the artifacts are restored within a granular restore session. Inherited from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).|
|restoredItemWebUrl|String|The web url of the restord artifact. Inherited from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).|
|restorePointDateTime|DateTimeOffset|The restore point date time to which the artifact is restored. Inherited from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).|
|startDateTime|DateTimeOffset|The start time of the restoration. Inherited from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).|
|status|artifactRestoreStatus|Status of the artifact restoration. The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`. Inherited from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).|
|webUrl|String|The original web url of the artifact being restored. Inherited from [granularRestoreArtifactBase](../resources/granularrestoreartifactbase.md).|
|directoryObjectId|String|Id of the drive in which artifact is present.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.granularDriveRestoreArtifact",
  "baseType": "microsoft.graph.granularRestoreArtifactBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.granularDriveRestoreArtifact",
  "id": "String (identifier)",
  "browseSessionId": "String",
  "status": "String",
  "webUrl": "String",
  "restoredItemKey": "String",
  "restoredItemPath": "String",
  "restoredItemWebUrl": "String",
  "restorePointDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "directoryObjectId": "String"
}
```

