---
title: "CloudPcStorageBlobDetail resource type"
description: "Represents the detailed hierachical resource information of the Azure storage blob, including the storage account and container as parent resource of the blob, and the blob file name."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/10/2025
---

# cloudPcStorageBlobDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the detailed hierachical resource information of the Azure storage blob, including the storage account and container as parent resource of the blob, and the blob file name.

## Properties
| Property           | Type         | Description                   |
| ------------------ | ------------ | ----------------------------- |
| `storageAccountId`   | `Edm.String` | Indicates the unique identifier of the Azure storage account. Example: `/subscriptions/0231ef39-1113-4772-bffe-26e7d8a15c9e/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/mystorageaccount`.   |
| `containerName` | `Edm.String` | Indicates the name of the container. Example: `mycontainer` |
| `fileName` | `Edm.String` | The name of the file stored in container. Example: `myexportedvm.vhd`  | 


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "storageAccountId",
  "@odata.type": "microsoft.graph.cloudPcStorageBlobDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcStorageBlobDetail",
  "storageAccountId": "String",
  "containerName": "String",
  "fileName": "String"
}
```
