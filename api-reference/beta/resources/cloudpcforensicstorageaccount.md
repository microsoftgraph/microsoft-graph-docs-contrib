---
title: "cloudPcForensicStorageAccount resource type"
description: "Represents a Cloud PC storage account for forensic analysis."
author: "xhan2077"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcForensicStorageAccount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the storage account information that can be used to store a snapshot or snapshots of a Cloud PC for forensic analysis.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|storageAccountId|String|The ID of the storage account.|
|storageAccountName|String|The name of the storage account.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "storageAccountId",
  "@odata.type": "microsoft.graph.cloudPcForensicStorageAccount",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcForensicStorageAccount",
  "storageAccountId": "String",
  "storageAccountName": "String"
}
```
