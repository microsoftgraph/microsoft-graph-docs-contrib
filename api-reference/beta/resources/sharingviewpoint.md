---
title: "sharingViewpoint resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# sharingViewpoint resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|defaultSharingLink|[defaultSharingLink](../resources/defaultsharinglink.md)|**TODO: Add Description**|
|sharingAbilities|[sharePointSharingAbilities](../resources/sharepointsharingabilities.md)|**TODO: Add Description**|

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

