---
title: "cloudPcForensicStorageAccount complex type"
description: "Represents a CloudPC ForensicStorageAccount."
author: "xhan2077"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcForensicStorageAccount complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the storage account information that can be used to store snapshot(s) of a Cloud PC for forensic analysis.


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get cloudPcForensicStorageAccount](../api/cloudpcforensicstorageaccount-get.md)|[cloudPcForensicStorageAccount](../resources/cloudpcforensicstorageaccount.md)|Read the properties and relationships of a [cloudPcForensicStorageAccount](../resources/cloudpcforensicstorageaccount.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|storageAccountId|String|The id of the storage account.|
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
  "storageAccountId": "String (identifier)",
  "storageAccountName": "String"
}
```

