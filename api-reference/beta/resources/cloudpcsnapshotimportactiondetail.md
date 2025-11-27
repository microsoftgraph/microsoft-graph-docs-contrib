---
title: "cloudPcSnapshotImportActionDetail resource type"
description: "Represents the required detailed information to start the snapshot import action."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/10/2025
---

# cloudPcSnapshotImportActionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the required detailed information to start the [snapshot](../resources/cloudpcsnapshot.md) import action. The user must provide either Azure storage information or a shared access signature URL for the snapshot file. If both are provided, Azure storage information takes priority.

This file is a .vhd virtual hard disk format.

## Properties

| Property           | Type         | Description                   |
| ------------------ | ------------ | ----------------------------- |
| fileType   | [cloudPcSnapshotImportFileType](#cloudpcsnapshotimportfiletype-values) | The file type of the imported virtual hard disk file. The possible values are: `dataFile`, `virtualMachineGuestState`, `unknownFutureValue`. The default value is `dataFile`.   |
| sasUrl | String | The shared access signature URL of the snapshot import action. |
| sourceType   | [cloudPcSnapshotImportSourceType](#cloudpcsnapshotimportsourcetype-values) | The source type of the snapshot import action. The possible values are: `azureStorageAccount`, `sasUrl`, `unknownFutureValue`. The default value is `azureStorageAccount`.   |
| storageBlobInfo | [cloudPcStorageBlobDetail](../resources/cloudpcstorageblobdetail.md) | The storage account information of the snapshot import action. |

### cloudPcSnapshotImportSourceType values
|Member|Description|
|:---|:---|
| azureStorageAccount | Indicates that the snapshot uploads from an Azure storage account. |
| sasUrl             | Indicates that the snapshot uploads via a shared access signature URL. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### cloudPcSnapshotImportFileType values
|Member|Description|
|:---|:---|
| dataFile          |  Indicates that the file serves as a data file. |
| virtualMachineGuestState             |  Indicates that the file is a virtual machine guest state file (VMGS), specific to trusted launch VMs. It's a blob managed by Azure and contains the Unified Extensible Firmware Interface (UEFI) secure boot signature databases and other security information. |
| unknownFutureValue |  Evolvable enumeration sentinel value. Don't use. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcSnapshotImportActionDetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcSnapshotImportActionDetail",
  "fileType": "String",
  "sasUrl": "String",
  "sourceType": "String",
  "storageBlobInfo": {"@odata.type": "microsoft.graph.cloudPcStorageBlobDetail"}
}
```

<!--
{
  "type": "#page.annotation",
  "description": "cloudPcSnapshotImportActionDetail resource",
  "namespace": "microsoft.graph.cloudPcSnapshotImportActionDetail"
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
