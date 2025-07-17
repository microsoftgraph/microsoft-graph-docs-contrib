---
title: "cloudPcBulkRemoteActionResult resource type"
description: "Represents the Cloud PC-specified bulk remote action result."
author: "rongting"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# cloudPcBulkRemoteActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Cloud PC-specified bulk remote action result.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedDeviceIds|String collection|A list of all the Intune managed device IDs that completed the bulk action with a failure.|
|notFoundDeviceIds|String collection|A list of all the Intune managed device IDs that were not found when the bulk action was attempted.|
|notSupportedDeviceIds|String collection|A list of all the Intune managed device IDs that were identified as unsupported for the bulk action.|
|successfulDeviceIds|String collection|A list of all the Intune managed device IDs that completed the bulk action successfully.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcBulkRemoteActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkRemoteActionResult",
  "failedDeviceIds": [
    "String"
  ],
  "notFoundDeviceIds": [
    "String"
  ],
  "notSupportedDeviceIds": [
    "String"
  ],
  "successfulDeviceIds": [
    "String"
  ]
}
```

