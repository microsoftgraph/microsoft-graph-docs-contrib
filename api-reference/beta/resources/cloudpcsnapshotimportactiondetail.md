---
title: "CloudPcSnapshotImportActionDetail resource type"
description: "Represents the required detail information to start the snapshot import action. The user must provide either Azure storage information or the shared access signature url for the snapshot file, and the Azure storage information will be prioritized if both provided."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/10/2025
---

# cloudPcSnapshotImportActionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the required detail information to start the snapshot import action. The user must provide either Azure storage information or the shared access signature url for the snapshot file, and the Azure storage information will be prioritized if both provided.

Please be noted that this file is`.vhd` virtual hard disk format. The type of file is indicated by `fileType` property, possible types are `dataFile` and `virtualMachineGuestState`.

## Properties
| Property           | Type         | Description                   |
| ------------------ | ------------ | ----------------------------- |
| `sourceType`   | `microsoft.graph.cloudPcSnapshotImportSourceType` | The source type of the snapshot import action. Possible values: azureStorageAccount, sasUrl. Default is "azureStorageAccount".   |
| `fileType`   | `microsoft.graph.cloudPcSnapshotImportFileType` | The file type of the imported virtual hard disk file. Possible values: dataFile, virtualMachineGuestState. Default is "dataFile".   |
| `sasUrl` | `Edm.String` | The shared access signature URL of the snapshot import action. |
| `storageBlobInfo` | `microsoft.graph.cloudPcStorageBlobDetail` | The storage account info of the snapshot import action. |


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcSnapshotImportActionDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSnapshotImportActionDetail",
  "sourceType": "#microsoft.graph.cloudPcSnapshotImportSourceType",
  "fileType": "#microsoft.graph.cloudPcSnapshotImportFileType",
  "sasUrl": "String",
  "storageBlobInfo": "#microsoft.graph.cloudPcStorageBlobDetail"
}
```
