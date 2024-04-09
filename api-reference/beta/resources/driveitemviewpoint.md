---
title: "driveItemViewpoint resource type"
description: "Returns information specific to the calling user for this drive item."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# driveItemViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Returns information specific to the calling user for this drive item.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|accessOperations|[driveItemAccessOperationsViewpoint](../resources/driveitemaccessoperationsviewpoint.md)| Describes whether the user is able to carry out the described actions on this item.|
|sharing|[sharingViewpoint](../resources/sharingviewpoint.md)|Describes sharing operations the user can take on the specified item.|

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
