---
title: "driveItemViewpoint resource type"
description: "Returns information specific to the calling user for this drive item."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 05/03/2024
---

# driveItemViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns information specific to the calling user for this drive item.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accessOperations|[driveItemAccessOperationsViewpoint](../resources/driveitemaccessoperationsviewpoint.md)| Indicates whether the user can perform the described actions on this item.|
|sharing|[sharingViewpoint](../resources/sharingviewpoint.md)| Indicates sharing operations the current user can take on the specified item.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.driveItemViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.driveItemViewpoint",
  "accessOperations": {
    "@odata.type": "microsoft.graph.driveItemAccessOperationsViewpoint"
  },
  "sharing": {
    "@odata.type": "microsoft.graph.sharingViewpoint"
  }
}
```
