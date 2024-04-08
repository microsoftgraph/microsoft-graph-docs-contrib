---
title: "driveItemViewpoint resource type"
description: "**TODO: Add Description**"
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# driveItemViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accessOperations|[driveItemAccessOperationsViewpoint](../resources/driveitemaccessoperationsviewpoint.md)|**TODO: Add Description**|
|sharing|[sharingViewpoint](../resources/sharingviewpoint.md)|**TODO: Add Description**|

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

