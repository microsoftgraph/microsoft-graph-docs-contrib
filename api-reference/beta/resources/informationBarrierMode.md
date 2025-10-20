---
title: "informationBarrierMode resource type"
description: "An enum value representing the information barrier mode."
author: "daili"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: resourcePageType
ms.date: 10/20/2025
---

# informationBarrierMode resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)] 

An enum value representing the information barrier mode of a [fileStorageContainer](../resources/filestoragecontainer.md) object.

## Members
|Name               | Description                                                            |
|:------------------|:-----------------------------------------------------------------------|
|open               | A site or container has no segments and collaboration is unrestricted. |
|ownerModerated     | Collaboration between incompatible segments is moderated by the owner. |
|explicit           | Collaboration between incompatible segments is explicitly restricted. |
|unknownFutureValue | Unknown future value. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
"blockType": "resource",
"@odata.type": "microsoft.graph.informationBarrierMode",
}-->

```json
{
  "@odata.type": "#microsoft.graph.informationBarrierMode"
}
```
