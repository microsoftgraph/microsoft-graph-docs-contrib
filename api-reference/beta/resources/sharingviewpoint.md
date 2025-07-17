---
title: "sharingViewpoint resource type"
description: "Represents the sharing operations the current user can take on the specified item."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 05/04/2024
---

# sharingViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents sharing operations the current user can take on the specified item.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|defaultSharingLink|[defaultSharingLink](../resources/defaultsharinglink.md)|The default sharing link the user can create for this item.|
|sharingAbilities|[sharePointSharingAbilities](../resources/sharepointsharingabilities.md)|Provides information about which sharing links are available to the user.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharingViewpoint"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharingViewpoint",
  "sharingAbilities": {
    "@odata.type": "microsoft.graph.sharePointSharingAbilities"
  },
  "defaultSharingLink": {
    "@odata.type": "microsoft.graph.defaultSharingLink"
  }
}
```
