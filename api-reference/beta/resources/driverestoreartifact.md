---
title: "driveRestoreArtifact resource type"
description: "Describes onedrive restore artifact and its properties"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# driveRestoreArtifact resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the restore point and destination details that can be used to restore a OneDrive for Business protection unit. 

Inherits from [restoreArtifactBase](../resources/restoreartifactbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/onedriveforbusinessrestoresession-list-driverestoreartifacts.md)|[driveRestoreArtifact](../resources/driverestoreartifact.md) collection|Get a list of the [driveRestoreArtifact](../resources/driverestoreartifact.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore artifact.|
|completionDateTime|DateTimeOffset|The time when restoration of restore artifact is completed. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|destinationType|[destinationType](../resources/driverestoreartifact.md#destinationtype-values)|The restoration destination. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the restoration fails. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|restoredSiteId|String|The new site identifier if **destinationType** is `new`, and the input site ID if the **destinationType** is `inPlace`.|
|restoredSiteName|String|The name of the restored site.|
|restoredSiteWebUrl|String|The web URL of the restored site.|
|startDateTime|DateTimeOffset|The time when the restoration started. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|status|[artifactRestoreStatus](../resources/driverestoreartifact.md#artifactrestorestatus-values)|The individual restoration status of the restore artifact. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

### artifactRestoreStatus values

|Member | Description |
|:------|:------------|
|added|Initial status when the restore artifact is added to the restore session.|
|scheduling|Status when the activate action is called on the restore session.|
|scheduled|Status when the activate action call is successfull on the restore session.|
|inProgress|The restore artifact is picked for restoration.|
|succeeded|The restore artifact is successfully restored.|
|failed|The restoration of the artifact failed.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

### destinationType values
|Member | Description |
|:------|:------------|
|new|Restoration will occur at a new location. For SharePoint and OneDrive, a new site will be created and content will be restored in the new site. For Exchange, a restored folder is created and content will be restored there.|
|inPlace|Restoration will occur in the same location. For SharePoint, it will bbe on the same site, for OneDrive, on the same drive, and for Exchange, the artifact will be restored in the same mailbox.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|restorePoint|[restorePoint](../resources/restorepoint.md)|Restore artifact refers to the onedrive unit's restore point and destination relevant details that can be used to restore it. Inherited from [microsoft.graph.restoreArtifactBase](../resources/restoreartifactbase.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.driveRestoreArtifact",
  "baseType": "microsoft.graph.restoreArtifactBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveRestoreArtifact",
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

