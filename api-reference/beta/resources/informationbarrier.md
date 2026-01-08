---
title: "informationBarrier resource type"
description: "Represents informationBarrier of a fileStorageContainer."
author: "lilealdai"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# informationBarrier resource type
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)] 

Represents the information barrier of a [fileStorageContainer](../resources/filestoragecontainer.md) object.

## Properties
| Property             | Type               | Description                              |
|:---------------------|:-------------------|:-----------------------------------------|
| mode               | [informationBarrierMode](#informationbarriermode-values)            | Indicates the information barrier mode. The possible values are: `open`, `ownerModerated`, `explicit`, and `unknownFutureValue`. |
| segmentIds | `Collection(Guid)` | The list of segment IDs associated with the container. |

### informationBarrierMode values
|Member             | Description                                                            |
|:------------------|:-----------------------------------------------------------------------|
|open               | A container has no segments and collaboration is unrestricted. |
|ownerModerated     | Owner moderates the collaboration between incompatible segments. |
|explicit           | Collaboration between incompatible segments is explicitly restricted. |
|unknownFutureValue | Unknown future value. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.

<!-- {
"blockType": "resource",
"@odata.type": "microsoft.graph.informationBarrier",
}-->

```json
{
  "@odata.type": "#microsoft.graph.informationBarrier",
  "mode": "String",
  "segmentIds": [ "Guid" ]
}
```
