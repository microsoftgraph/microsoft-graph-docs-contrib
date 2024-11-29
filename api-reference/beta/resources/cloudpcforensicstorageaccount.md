---
title: "cloudPcForensicStorageAccount resource type"
description: "Represents a Cloud PC storage account for forensic analysis."
author: "xhan2077"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
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
|accessTier|[cloudPcStorageAccountAccessTier](#cloudPcStorageAccountAccessTier-values)| Indicates the access tier of the storage account. Possible values are `hot`, `cool`, `premium` and `cold`, default value is `hot`.|

### cloudPcStorageAccountAccessTier values

|Member name|Description|
|:---|:---|
|hot|Indicates the storage account access tier is "hot", this tier is optimized for storing data that is accessed or modified frequently.|
|cool|Indicates the storage account access tier is "cool", this tier is optimized for storing data that is infrequently accessed or modified.|
|premium| Indicates the storage account access tier is "premium", this tier is optimized with low and consistent latency.|
|cold|Indicates the storage account access tier is "cold", this tier is optimized for storing data that is rarely accessed or modified, but still requires fast retrieval.|
|unknownFutureValue|Evolvable enumeration sentinel value. Don't use.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "storageAccountName": "String",
  "accessTier": "String"
}
```
