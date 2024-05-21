---
title: "mailboxRestoreArtifact resource type"
description: "Describes mailbox restore artifact and its properties"
author: "tushar20, manikantsinghms"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# mailboxRestoreArtifact resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore artifact refers to the mailbox unit's restore point and destination relevant details that can be used to restore it.

Inherits from [restoreArtifactBase](../resources/restoreartifactbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List mailboxRestoreArtifact](../api/exchangerestoresession-list-mailboxrestoreartifacts.md)|[mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) collection|Get a list of the [mailboxRestoreArtifact](../resources/mailboxrestoreartifact.md) and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier of the restore artifact.|
|completionDateTime|DateTimeOffset|The time when restoration of restore artifact is completed. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|destinationType|[destinationType](../resources/mailboxrestoreartifact.md#destinationtype-values)|Describes preference for restoration destination. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).The possible values are: `new`, `inPlace`, `unknownFutureValue`.|
|error|[publicError](../resources/publicerror.md)|Error details will be populated here, if the restoration of restore artifact fails. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|restoredFolderId|String|The new restored folder identifier for the user.|
|restoredFolderName|String|The new restored folder name of the user.|
|startDateTime|DateTimeOffset|The time when restoration of restore artifact is started. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).|
|status|[artifactRestoreStatus](../resources/mailboxrestoreartifact.md#artifactrestorestatus-values)|The individual restoration status of the restore artifact. Inherited from [restoreArtifactBase](../resources/restoreartifactbase.md).The possible values are: `added`, `scheduling`, `scheduled`, `inProgress`, `succeeded`, `failed`, `unknownFutureValue`.|

### artifactRestoreStatus values
|Member | Description |
|:------|:------------|
|added|Initial Status when restore artifact has been added to restore session.|
|scheduling|Status when activate action is called on the restore session.|
|scheduled|Status when activate action call is successfull on the restore session.|
|inProgress|Status when restore artifact is/has been picked for restoration.|
|succeeded|Status when the restore artifact has successfully restored.|
|failed|Status when restoration of artifact is failed.|
|unknownFutureValue| Evolvable enumeration sentinel value. Do not use.|

### destinationType values
|Member | Description |
|:------|:------------|
|new|Restoration will be done at new location. eg. for SharePoint and One Drive new site will be created and content will be restore in newly created site. for Exchange restored folder will be created and content will be restored there.|
|inPlace|restore will be done on the same location, e.g. on the same site, for one drive on same drive and for exchange artifact will be restored in same mailbox.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|restorePoint|[restorePoint](../resources/restorepoint.md)|Restore artifact refers to the mailbox unit's restore point and destination relevant details that can be used to restore it. Inherited from [microsoft.graph.restoreArtifactBase](../resources/restoreartifactbase.md)|

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
  "restoredFolderName": "String"
}
```

