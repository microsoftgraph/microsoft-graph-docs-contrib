---
title: "applicableContentDeviceMatch resource type"
description: "Represents a collection of devices and recommendations for the applicable catalog content."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 09/16/2024
---

# applicableContentDeviceMatch resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of devices and recommendations for the applicable catalog content.

## Properties
| Property      | Type              | Description                                      |
|:--------------|:------------------|:-------------------------------------------------|
| deviceId | String  | Collection of vendors who recommend the content. |
| recommendedBy | String collection | Collection of vendors who recommend the content. |

## Relationships
| Relationship | Type                                             | Description                                      |
|:-------------|:-------------------------------------------------|:-------------------------------------------------|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.applicableContentDeviceMatch", 
  "keyProperty": "deviceId"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableContentDeviceMatch",
  "deviceId": "String",
  "recommendedBy": ["String"]
}
```
