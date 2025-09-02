---
title: "granularMailboxRestoreArtifact resource type"
description: "Represents the restore point and destination details that can be used to restore a granular mailbox protection unit."
author: "tushar20"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
toc.title: Granular mailbox restore artifact
ms.date: 12/02/2024
---

# granularMailboxRestoreArtifact resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the restore point and destination details that can be used to restore a [mailbox protection unit](mailboxprotectionunit.md).

Inherits from [mailboxRestoreArtifact](../resources/mailboxRestoreArtifact.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/exchangerestoresession-list-mailboxrestoreartifacts.md)|[mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) collection|Get a list of the [mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|artifactCount|Int32|This property will be deprecated soon. Don't use.|
|completionDateTime|DateTimeOffset|The time when the restoration of the artifact is completed. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|destinationType|[destinationType](../resources/mailboxrestoreartifact.md#destinationtype-values)|Indicates the restoration destination. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Contains error details if the restoration of the artifact fails. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|id|String|The unique identifier of the restore artifact.|
|restoredFolderId|String|The new restored folder identifier for the user.|
|restoredFolderName|String|The new restored folder name.|
|restoredItemCount|Int32|The number of items that are being restored in the folder.|
|searchResponseId|String|.|
|startDateTime|DateTimeOffset|The time when the restoration of the artifact started. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|status|[artifactRestoreStatus](../resources/mailboxrestoreartifact.md#artifactrestorestatus-values)|The restoration status of the artifact. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md). The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|restorePoint|[restorePoint](../resources/restorepoint.md)|Represents the date and time when an artifact is protected by a protection policy and can be restored. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.granularMailboxRestoreArtifact",
  "baseType": "microsoft.graph.mailboxRestoreArtifact",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.granularMailboxRestoreArtifact",
  "artifactCount": "Int32",
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
  "restoredItemCount": "Int32",
  "searchResponseId": "String"
}
```
