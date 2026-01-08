---
title: "cloudPCUserSettingsPersistenceUsageResult resource type"
description: "Represents the storage usage status of user settings persistence for a specific Cloud PC user settings persistence configuration and its associated policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceUsageResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the storage usage status of user settings persistence for a specific Cloud PC user settings persistence configuration and its associated policy assignment.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|remainingAvailableStorageInGB|Int32|The remaining available preallocated user settings persistence profile storage for a specific Cloud PC policy assignment. This value equals the total preallocated storage size minus the used preallocated storage size. Required. Read-only.|
|totalAllocatedStorageInGB|Int32|The total preallocated user settings persistence profile storage for a specific Cloud PC policy assignment. The system calculates the total size based on the number of licenses assigned to this policy and the size of each Cloud PC disk. Required. Read-only.|
|usedStorageInGB|Int32|The total used preallocated user settings persistence storage for a specific Cloud PC policy assignment. This value represents the total allocated size for users who signed in. Required. Read-only.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPCUserSettingsPersistenceUsageResult",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPCUserSettingsPersistenceUsageResult",
  "remainingAvailableStorageInGB": "Int32",
  "totalAllocatedStorageInGB": "Int32",
  "usedStorageInGB": "Int32"
}
```
