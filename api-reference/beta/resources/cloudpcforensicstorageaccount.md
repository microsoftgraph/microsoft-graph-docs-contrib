---
title: "cloudPcForensicStorageAccount resource type"
description: "Represents information about a Cloud PC storage account for forensic analysis."
author: "xhan2077"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# cloudPcForensicStorageAccount resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the storage account information that can be used to store a snapshot or snapshots of a Cloud PC for forensic analysis.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessTier|[cloudPcStorageAccountAccessTier](#cloudpcstorageaccountaccesstier-values)| The access tier of the storage account. Possible values are `hot`, `cool`, `premium`, `cold`, and `unknownFutureValue`. Default value is `hot`. Read-only.|
|immutableStorage|Boolean|Indicates whether immutability policies are configured for the storage account. When `true`, the storage account only accepts `hot` as the snapshot access tier. When `false`, the storage account accepts all valid access tiers. Read-Only.|
|storageAccountId|String|The ID of the storage account. Read-only.|
|storageAccountName|String|The name of the storage account. Read-only.|

### cloudPcStorageAccountAccessTier values

|Member|Description|
|:---|:---|
|hot|The storage account access tier is "hot." This tier is optimized for storing data that is accessed or modified frequently.|
|cool|The storage account access tier is "cool." This tier is optimized for storing data that is infrequently accessed or modified.|
|premium|The storage account access tier is "premium." This tier is optimized with low and consistent latency.|
|cold|The storage account access tier is "cold." This tier is optimized for storing data that is rarely accessed or modified, but still requires fast retrieval.|
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
  "immutableStorage": "Boolean",
  "accessTier": "String"
}
```
