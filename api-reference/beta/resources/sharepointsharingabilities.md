---
title: "sharePointSharingAbilities resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# sharePointSharingAbilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|anyoneLinkAbilities|[linkScopeAbilities](../resources/linkscopeabilities.md)|**TODO: Add Description**|
|directSharingAbilities|[directSharingAbilities](../resources/directsharingabilities.md)|**TODO: Add Description**|
|organizationLinkAbilities|[linkScopeAbilities](../resources/linkscopeabilities.md)|**TODO: Add Description**|
|specificPeopleLinkAbilities|[linkScopeAbilities](../resources/linkscopeabilities.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharePointSharingAbilities"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharePointSharingAbilities",
  "anyoneLinkAbilities": {
    "@odata.type": "microsoft.graph.linkScopeAbilities"
  },
  "organizationLinkAbilities": {
    "@odata.type": "microsoft.graph.linkScopeAbilities"
  },
  "specificPeopleLinkAbilities": {
    "@odata.type": "microsoft.graph.linkScopeAbilities"
  },
  "directSharingAbilities": {
    "@odata.type": "microsoft.graph.directSharingAbilities"
  }
}
```

