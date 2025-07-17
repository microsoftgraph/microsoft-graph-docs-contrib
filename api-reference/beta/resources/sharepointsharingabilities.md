---
title: "sharePointSharingAbilities resource type"
description: "Provides information about which sharing links are available to the user."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
ms.date: 05/04/2024
---

# sharePointSharingAbilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides information about which sharing links are available to the user.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|anyoneLinkAbilities|[linkScopeAbilities](../resources/linkscopeabilities.md)|The anyone link abilities.|
|directSharingAbilities|[directSharingAbilities](../resources/directsharingabilities.md)|The direct sharing abilities.|
|organizationLinkAbilities|[linkScopeAbilities](../resources/linkscopeabilities.md)|The organization link abilities.|
|specificPeopleLinkAbilities|[linkScopeAbilities](../resources/linkscopeabilities.md)|The specificPeople link abilities.|

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
