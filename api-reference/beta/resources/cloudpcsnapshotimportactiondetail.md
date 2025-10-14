---
title: "CloudPcSnapshotImportActionDetail resource type"
description: "Represents the required detail information to start the snapshot import action. The user must provide either Azure storage information or the shared access signature URL for the snapshot file, and the Azure storage information is prioritized if both are provided."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/10/2025
---

# cloudPcSnapshotImportActionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the required detailed information to start the snapshot import action. The user must provide either Azure storage information or the shared access signature URL for the snapshot file. The Azure storage information is prioritized if both are provided.

This file is a .vhd virtual hard disk format.

## Properties

| Property           | Type         | Description                   |
| ------------------ | ------------ | ----------------------------- |
| sourceType   | [cloudPcSnapshotImportSourceType](#cloudpcsnapshotimportsourcetype-values) | The source type of the snapshot import action. Possible values: azureStorageAccount, sasUrl. Default is "azureStorageAccount."   |
| fileType   | [cloudPcSnapshotImportFileType](#cloudpcsnapshotimportfiletype-values) | The file type of the imported virtual hard disk file. Possible values: dataFile, virtualMachineGuestState. Default is "dataFile."   |
| sasUrl | String | The shared access signature URL of the snapshot import action. |
| storageBlobInfo | microsoft.graph.cloudPcStorageBlobDetail | The storage account info of the snapshot import action. |

### cloudPcSnapshotImportSourceType values
|Member|Description|
|:---|:---|
| azureStorageAccount          | Indicates snapshot is being uploaded from Azure storage account.        |
| sasUrl             | Indicates snapshot is being uploaded via shared access signature URL.            |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

### cloudPcSnapshotImportFileType values
|Member|Description|
|:---|:---|
| dataFile          |  Indicates the file is serving as a data file.        |
| virtualMachineGuestState             |  Indicates the file is a virtual machine guest state file (VMGS), specific to Trusted Launch vms. It's a blob managed by Azure and contains the unified extensible firmware interface (UEFI) Secure Boot signature databases and other security information.             |
| unknownFutureValue |  Evolvable enumeration sentinel value. Don't use. |

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