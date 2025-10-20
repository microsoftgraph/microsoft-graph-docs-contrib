---
title: "cloudPCUserSettingsPersistenceUsageResult resource type"
description: "Describes the cloud profile storage usage status of the specific Cloud PC user settings persistence for specific Cloud PC's policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceUsageResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes the cloud profile storage usage status of the specific Cloud PC user settings persistence for specific Cloud PC's policy assignment.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|totalAllocatedStorageInGB|Int32|The total pre-allocated cloud profile storage for a specific Cloud PC's policy assignment. The total size is calculated by the total licenses assigned to this policy and the size of the Cloud PC's disk. Required. Read-Only.|
|remainingAvailableStorageInGB|Int32| The remaining available pre-allocated cloud profile storage for specific Cloud PC's policy assignment. This is equal to total pre-allocated storage size minus used pre-allocated storage size. Required. Read-Only.   |
|usedStorageInGB|Int32| The total used of pre-allocated cloud profile storage for specific Cloud PC's policy assignment. This is the total of allocated size for those ever signed in users. Required. Read-Only.  |

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
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#retrieveUserSettingsPersistenceProfileUsage",
    "totalAllocatedStorageInGB": 1200,
    "remainingAvailableStorageInGB": 100,
    "usedStorageInGB": 1100
}

```
