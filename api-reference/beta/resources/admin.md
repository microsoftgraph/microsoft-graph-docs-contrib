---
title: "admin resource type"
description: "Singleton entity that acts as a container for administrator functionality."
author: "angelgolfer-ms"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# admin resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Singleton entity that acts as a container for administrator functionality.

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
| serviceAnnouncement | [serviceAnnouncement](serviceannouncement.md) | A container for service communications resources. Read-only. |
|windows|[microsoft.graph.windowsUpdates.windows](../resources/windowsupdates-windows.md)|A container for all Windows Update for Business deployment service functionality. Read-only.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.admin",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.admin"
}
```

