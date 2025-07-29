---
title: "siteRestoreArtifact resource type"
description: "Represents the restore point and destination details that can be used to restore a site protection unit."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# siteRestoreArtifact resource type

Namespace: microsoft.graph

Represents the restore point and destination details that can be used to restore a [site protection unit](siteprotectionunit.md).

Inherits from [restoreArtifactBase](../resources/restoreartifactbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/sharepointrestoresession-list-siterestoreartifacts.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|Get a list of [siteRestoreArtifact](../resources/siterestoreartifact.md) objects and their properties.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore artifact.|
|completionDateTime|DateTimeOffset|The time when restoration of restore artifact is completed. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|destinationType|[destinationType](../resources/siterestoreartifact.md#destinationtype-values)|Indicates the restoration destination. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the restoration of the restore artifact fails. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|restoredSiteId|String|The new site identifier if the value of the **destinationType** property is `new`, and the existing site ID if the value is `inPlace`.|
|restoredSiteName|String|The name of the restored site.|
|restoredSiteWebUrl|String|The web URL of the restored site.|
|startDateTime|DateTimeOffset|The time when restoration of the restore artifact started. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|status|[artifactRestoreStatus](../resources/siterestoreartifact.md#artifactrestorestatus-values)|The restoration status of the restore artifact. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

### artifactRestoreStatus values

|Member | Description |
|:------|:------------|
|added|The restore artifact was added to the restore session.|
|scheduling|The activate action was called on the restore session.|
|scheduled|The activate action call was successful on the restore session.|
|inProgress|The restore artifact was picked for restoration.|
|succeeded|The restore artifact was successfully restored.|
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
|restorePoint|[restorePoint](../resources/restorepoint.md)|Represents the date and time when an artifact is protected by a protection policy and can be restored. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.siteRestoreArtifact",
  "baseType": "microsoft.graph.restoreArtifactBase",
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

