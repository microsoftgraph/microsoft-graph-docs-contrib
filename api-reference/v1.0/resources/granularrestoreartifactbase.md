---
title: "granularRestoreArtifactBase resource type"
description: "An abstract type that represents granular restore artifacts associated with a restore session."
author: "rahulprasad-ms"
ms.date: 04/15/2026
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# granularRestoreArtifactBase resource type

Namespace: microsoft.graph

An abstract type that represents granular restore artifacts associated with a restore session.

Base type for [granularDriveRestoreArtifact](../resources/granulardriverestoreartifact.md) and [granularSiteRestoreArtifact](../resources/granularsiterestoreartifact.md)

Inherits from [entity](../resources/entity.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|browseSessionId|String|The unique identifier of the [browseSession](../resources/browsesessionbase.md)|
|completionDateTime|DateTimeOffset|Date time when the artifact's restoration completes.|
|id|String|The unique identifier for the artifact. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|restoredItemKey|String|The unique identifier for the restored artifact.|
|restoredItemPath|String|The path of the restored artifact. It's the path of the folder where all the artifacts are restored within a granular restore session.|
|restoredItemWebUrl|String|The web url of the restored artifact.|
|restorePointDateTime|DateTimeOffset|The restore point date time to which the artifact is restored.|
|startDateTime|DateTimeOffset|The start time of the restoration.|
|status|artifactRestoreStatus|Status of the artifact restoration. The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|
|webUrl|String|The original web url of the artifact being restored.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.granularRestoreArtifactBase",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.granularRestoreArtifactBase",
  "id": "String (identifier)",
  "browseSessionId": "String",
  "status": "String",
  "webUrl": "String",
  "restoredItemKey": "String",
  "restoredItemPath": "String",
  "restoredItemWebUrl": "String",
  "restorePointDateTime": "String (timestamp)",
  "startDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)"
}
```

