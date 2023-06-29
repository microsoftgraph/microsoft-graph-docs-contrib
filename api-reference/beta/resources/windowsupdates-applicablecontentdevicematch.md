---
title: "applicableContentDeviceMatch resource type"
description: "Represents a collection of devices and recommendations for the applicable catalog content."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# applicableContentDeviceMatch resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a collection of devices and recommendations for the applicable catalog content.

## Properties
| Property      | Type              | Description                                      |
|:--------------|:------------------|:-------------------------------------------------|
| recommendedBy | String collection | Collection of vendors who recommend the content. |

## Relationships
| Relationship | Type                                             | Description                                      |
|:-------------|:-------------------------------------------------|:-------------------------------------------------|
| device       | [microsoft.graph.device](../resources/device.md) | Represents a device registered in the directory. |

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.applicableContentDeviceMatch"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.applicableContentDeviceMatch",
  "recommendedBy": ["String"]
}
```
