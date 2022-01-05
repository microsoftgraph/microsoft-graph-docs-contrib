---
title: "cloudPcBulkRemoteActionResult resource type"
description: "Represents cloud PC bulk remote action result."
author: "rongting"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: resourcePageType
---

# cloudPcBulkRemoteActionResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents cloud PC bulk remote action result.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|successfulDeviceIds|String collection|A list of all the managed devices id that completed the bulk action successfully.|
|failedDeviceIds|String collection|A list of all the managed devices id that completed the bulk action with a failure.|
|notFoundDeviceIds|String collection|A list of all the managed devices id that were not found when the bulk action was attempted.|
|notSupportedDeviceIds|String collection|A list of all the managed devices id that were identified as unsupported for the bulk action.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.cloudPcBulkRemoteActionResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.cloudPcBulkRemoteActionResult",
  "successfulDeviceIds": [
    "String"
  ],
  "failedDeviceIds": [
    "String"
  ],
  "notFoundDeviceIds": [
    "String"
  ],
  "notSupportedDeviceIds": [
    "String"
  ]
}
```

