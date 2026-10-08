---
title: "granularRestoreArtifactBase resource type"
description: "An abstract type that represents granular restore artifacts associated with a restore session."
author: "manikantsinghms"
ms.date: 09/23/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# granularRestoreArtifactBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents granular restore artifacts associated with a restore session.

Base type for [granularDriveRestoreArtifact](../resources/granulardriverestoreartifact.md) and [granularSiteRestoreArtifact](../resources/granularsiterestoreartifact.md)

Inherits from [entity](../resources/entity.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|browseSessionId|String|The unique identifier of the [browseSession](../resources/browsesessionbase.md)|
|completionDateTime|DateTimeOffset|Date time when the artifact's restoration completes.|
|destinationType|[destinationType](../resources/driverestoreartifact.md#destinationtype-values)|The restoration destination. The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the restoration fails or completes with an error.|
|id|String|The unique identifier for the artifact. Inherited from [entity](../resources/entity.md).|
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
  "completionDateTime": "String (timestamp)",
  "destinationType": "String",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  }
}
```
