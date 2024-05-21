---
title: "restoreArtifactBase resource type"
description: "Describes restore artifact and its properties"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# restoreArtifactBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore Artifact refers to the site/drive/mailbox units' restore point and destination relevant details that can be used to restore it.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore artifact.|
|completionDateTime|DateTimeOffset|The time when restoration of restore artifact is completed.|
|destinationType|destinationType|Describes preference for restoration destination. The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|publicError|Error details will be populated here, if the restore session fails or completed with error.|
|startDateTime|DateTimeOffset|The time when restoration of restore artifact is started.|
|status|artifactRestoreStatus|The individual restoration status of the restore artifact. The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

### artifactRestoreStatus values

|Member | Description |
|:------|:------------|
|added|Initial Status when restore artifact has been added to restore session.|
|scheduling|Status when activate action is called on the restore session.|
|scheduled|Status when activate action call is successful on the restore session.|
|inProgress|Status when restore artifact has been picked for restoration.|
|succeeded|The restore artifact has successfully restored.|
|failed|Status when restoration of artifact is failed.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

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
