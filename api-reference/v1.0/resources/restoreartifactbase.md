---
title: "restoreArtifactBase resource type"
description: "Describes restore artifact and its properties"
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Restore artifact
ms.date: 08/06/2024
---

# restoreArtifactBase resource type

Namespace: microsoft.graph

Represents the restore point and destination details that can be used to restore a site, drive, or mailbox [protection unit](protectionunitbase.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore artifact.|
|completionDateTime|DateTimeOffset|The time when restoration of restore artifact is completed.|
|destinationType|destinationType|Indicates the restoration destination. The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|publicError|Contains error details if the restore session fails or completes with an error.|
|startDateTime|DateTimeOffset|The time when restoration of restore artifact is started.|
|status|artifactRestoreStatus|The individual restoration status of the restore artifact. The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

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

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|restorePoint|[restorePoint](../resources/restorepoint.md)| Represents the date and time when an [artifact](../resources/restoreartifactbase.md) is protected by a [protectionPolicy](../resources/protectionpolicybase.md) and can be restored.|

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
