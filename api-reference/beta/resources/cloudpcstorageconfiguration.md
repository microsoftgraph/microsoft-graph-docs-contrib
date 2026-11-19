---
title: "cloudPcStorageConfiguration resource type"
description: "Describes the storage configuration for Cloud PC user settings persistence, including the sizing type and the allocated storage size."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 03/30/2026
---

# cloudPcStorageConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the storage configuration for Cloud PC user settings persistence, including the sizing type and the allocated storage size.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|allocatedStorageSizeCategory|[cloudPcUserSettingsPersistenceStorageSizeCategory](../resources/cloudpcusersettingspersistenceconfiguration.md#cloudpcusersettingspersistencestoragesizecategory-values)|Specifies the allocated storage size category for user settings persistence. The possible values are: `fourGB`, `eightGB`, `sixteenGB`, `thirtyTwoGB`, `sixtyFourGB`, `unknownFutureValue`. The default value is `fourGB`.|
|storageSizingType|[cloudPcStorageSizingType](../resources/cloudpcstorageconfiguration.md#cloudpcstoragesizingtype-values)|Indicates the storage sizing type for user settings persistence. Specifies how per-profile storage is assigned. The possible values are: `dynamic`, `fixed`, `unknownFutureValue`. The default value is `fixed`.|

### cloudPcStorageSizingType values

| Member | Description |
|:---|:---|
| dynamic | Indicates the profile storage size can grow dynamically based on usage. When the dynamic cap is reached and no additional storage is available, profile allocations can't grow further. The cap is determined by the **allocatedStorageSizeCategory**; policies such as **gracePeriodEndDateTime** and **autoCleanupDetail.inactiveProfileRetentionDays** may be applied to reclaim space. The service might also enforce cleanup policies when the cap is exceeded. |
| fixed | Indicates the profile size is fixed to the allocated size. Each profile is given storage matching the **allocatedStorageSizeCategory**; the value doesn't change unless the admin updates the allocation. |
| unknownFutureValue | Evolvable enumeration sentinel value. Don't use. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcStorageConfiguration",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcStorageConfiguration",
  "allocatedStorageSizeCategory": "String",
  "storageSizingType": "String"
}
```
