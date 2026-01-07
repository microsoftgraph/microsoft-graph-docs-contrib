---
title: "mailboxRestoreArtifact resource type"
description: "Represents the restore point and destination details that can be used to restore a mailbox protection unit."
author: "tushar20"
ms.reviewer: "manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# mailboxRestoreArtifact resource type

Namespace: microsoft.graph

Represents the restore point and destination details that can be used to restore a [mailbox protection unit](mailboxprotectionunit.md).

Inherits from [restoreArtifactBase](../resources/restoreartifactbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/exchangerestoresession-list-mailboxrestoreartifacts.md)|[mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) collection|Get a list of the [mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore artifact.|
|completionDateTime|DateTimeOffset|The time when the restoration of the artifact is completed. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|destinationType|[destinationType](../resources/mailboxrestoreartifact.md#destinationtype-values)|Indicates the restoration destination. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the restoration of the artifact fails. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|restoredFolderId|String|The new restored folder identifier for the user.|
|restoredFolderName|String|The new restored folder name.|
|restoredItemCount|Int32|The number of items that are being restored in the folder.|
|startDateTime|DateTimeOffset|The time when the restoration of the artifact started. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|status|[artifactRestoreStatus](../resources/mailboxrestoreartifact.md#artifactrestorestatus-values)|The restoration status of the artifact. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

### artifactRestoreStatus values

|Member | Description |
|:------|:------------|
|added|The restore artifact was added to the restore session.|
|scheduling|The activate action was called on the restore session.|
|scheduled|The activate action call was successful on the restore session.|
|inProgress|The restore artifact was picked for restoration.|
|succeeded|The restore artifact was successfully restored.|
|failed|The restoration of the artifact failed.|
|unknownFutureValue| Evolvable enumeration sentinel value. Don't use.|

### destinationType values

|Member | Description |
|:------|:------------|
|new|Restoration occurs at a new location. For SharePoint and OneDrive, a new site is created, and content is restored in the new site. For Exchange, a restored folder is created, and the content is restored there.|
|inPlace|Restoration occurs in the same location. For SharePoint, it's on the same site, for OneDrive, on the same drive, and for Exchange, the artifact is restored in the same mailbox.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|restorePoint|[restorePoint](../resources/restorepoint.md)|Represents the date and time when an artifact is protected by a protection policy and can be restored. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.mailboxRestoreArtifact",
  "baseType": "microsoft.graph.restoreArtifactBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mailboxRestoreArtifact",
  "id": "String (identifier)",
  "destinationType": "String",
  "status": "String",
  "startDateTime": "String (timestamp)",
  "completionDateTime": "String (timestamp)",
  "error": {
    "@odata.type": "microsoft.graph.publicError"
  },
  "restoredFolderId": "String",
  "restoredFolderName": "String",
  "restoredItemCount": "Int32"
}
```

