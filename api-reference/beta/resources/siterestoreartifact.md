---
title: "siteRestoreArtifact resource type"
description: "Describes site restore artifact and its properties"
author: "tushar20, manikantsinghms"
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
|[List siteRestoreArtifact](../api/sharepointrestoresession-list-siterestoreartifacts.md)|[siteRestoreArtifact](../resources/siterestoreartifact.md) collection|Get a list of the [siteRestoreArtifact](../resources/siterestoreartifact.md) and their properties.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the Restore Artifact.|
|completionDateTime|DateTimeOffset|The time when restoration of Restore Artifact. is completed. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|destinationType|[destinationType](../resources/siterestoreartifact.md#destinationtype-values)|Describes preference for restoration destination. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if the restoration of Restore Artifact. fails. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|restoredSiteId|String|The new site identifier if destinationType is new, and input siteId for for inPlace.|
|restoredSiteName|String|The name of the restored site.|
|restoredSiteWebUrl|String|The web url of the site restored.|
|startDateTime|DateTimeOffset|The time when restoration of Restore Artifact. is started. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|status|[artifactRestoreStatus](../resources/siterestoreartifact.md#artifactrestorestatus-values)|The individual restoration status of the Restore Artifact.. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

### artifactRestoreStatus values

|Member | Description |
|:------|:------------|
|added|Initial Status when Restore Artifact has been added to Restore Session.|
|scheduling|Status when activate action is called on the Restore Session.|
|scheduled|Status when activate action call is successful on the Restore Session.|
|inProgress|Status when Restore Artifact is/has been picked for restoration.|
|succeeded|The Restore Artifact has successfully restored.|
|failed|Status when restoration of artifact is failed.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

### destinationType values

|Member | Description |
|:------|:------------|
|new|Restoration will be done at new location. eg. for SharePoint and OneDrive new site will be created and content will be restore in newly created site. for Exchange restored folder will be created and content will be restored there.|
|inPlace|Restore will be done on the same location, e.g. on the same site, for one drive on same drive and for Exchange Artifact will be restored in same mailbox.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|restorePoint|[restorePoint](../resources/restorepoint.md)|Restore artifact refers to the site unit's Restore Point and destination relevant details that can be used to restore it. Inherited from [microsoft.graph.restoreArtifactBase](../resources/restoreartifactbase.md).|

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

