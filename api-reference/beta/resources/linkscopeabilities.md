---
title: "linkScopeAbilities resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# linkScopeAbilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|blockDownloadLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|**TODO: Add Description**|
|editLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|**TODO: Add Description**|
|manageListLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|**TODO: Add Description**|
|readLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|**TODO: Add Description**|
|reviewLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|**TODO: Add Description**|
|submitOnlyLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.linkScopeAbilities"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.linkScopeAbilities",
  "readLinkAbilities": {
    "@odata.type": "microsoft.graph.linkRoleAbilities"
  },
  "editLinkAbilities": {
    "@odata.type": "microsoft.graph.linkRoleAbilities"
  },
  "reviewLinkAbilities": {
    "@odata.type": "microsoft.graph.linkRoleAbilities"
  },
  "manageListLinkAbilities": {
    "@odata.type": "microsoft.graph.linkRoleAbilities"
  },
  "blockDownloadLinkAbilities": {
    "@odata.type": "microsoft.graph.linkRoleAbilities"
  },
  "submitOnlyLinkAbilities": {
    "@odata.type": "microsoft.graph.linkRoleAbilities"
  }
}
```

