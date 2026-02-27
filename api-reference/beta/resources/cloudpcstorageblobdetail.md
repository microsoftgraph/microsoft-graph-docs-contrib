---
title: "cloudPcStorageBlobDetail resource type"
description: "Represents the detailed hierarchical resource information of the Azure storage blob, including the storage account and container as the parent resources of the blob, and the blob file name."
author: "hyc3z"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/10/2025
---

# cloudPcStorageBlobDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the detailed hierarchical resource information of the Azure storage blob, including the storage account and container as the parent resources of the blob, and the blob file name.

## Properties
| Property           | Type         | Description                   |
| ------------------ | ------------ | ----------------------------- |
| containerName | String | Indicates the name of the container. For example, `mycontainer`. |
| fileName | String | The name of the file stored in the container. For example, `myexportedvm.vhd`. |
| storageAccountId | String | Indicates the unique identifier for the Azure storage account. For example, `/subscriptions/0231ef39-1113-4772-bffe-26e7d8a15c9e/resourceGroups/myresourcegroup/providers/Microsoft.Storage/storageAccounts/mystorageaccount.` |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "storageAccountId",
  "@odata.type": "microsoft.graph.cloudPcStorageBlobDetail",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcStorageBlobDetail",
  "containerName": "String",
  "fileName": "String",
  "storageAccountId": "String"
}
```
