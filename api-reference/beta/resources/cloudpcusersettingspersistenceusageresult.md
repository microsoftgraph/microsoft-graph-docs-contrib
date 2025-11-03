---
title: "cloudPCUserSettingsPersistenceUsageResult resource type"
description: "This resource describes the cloud profile storage usage status for a specific Cloud PC user settings persistence configuration and its associated policy assignment."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# cloudPCUserSettingsPersistenceUsageResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This resource describes the cloud profile storage usage status for a specific Cloud PC user settings persistence configuration and its associated policy assignment.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|remainingAvailableStorageInGB|Int32|The remaining available preallocated cloud profile storage for a specific Cloud PC's policy assignment. This value equals the total preallocated storage size minus the used preallocated storage size. Required. Read-only.|
|totalAllocatedStorageInGB|Int32|The total preallocated cloud profile storage for a specific Cloud PC's policy assignment. The system calculates the total size based on the number of licenses assigned to this policy and the size of each Cloud PC's disk. Required. Read-only.|
|usedStorageInGB|Int32|The total used preallocated cloud profile storage for a specific Cloud PC's policy assignment. This value represents the total allocated size for users who have signed in. Required. Read-only.|

## Relationships

None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudpcusersettingspersistenceusageresult",
  "openType": false
}
-->
``` json
{
    "@odata.context":"https://graph.microsoft.com/beta/$metadata#cloudpcusersettingspersistenceusageresult",
    "totalAllocatedStorageInGB": 1200,
    "remainingAvailableStorageInGB": 100,
    "usedStorageInGB": 1100
}

```
