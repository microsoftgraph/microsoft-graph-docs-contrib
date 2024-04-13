---
title: "linkScopeAbilities resource type"
description: "Represents the sharing abilities for each possible sharingRole within a particular sharing link scope."
author: "ziebd"
ms.localizationpriority: medium
ms.subservice: "sharepoint"
doc_type: resourcePageType
---

# linkScopeAbilities resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the sharing abilities for each possible sharingRole within a particular sharing link scope.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|blockDownloadLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|Describes blockDownload link abilities.|
|editLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|Describes edit link abilities.|
|manageListLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|Describes manageList link abilities.|
|readLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|Describes read link abilities.|
|reviewLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|Describes review link abilities.|
|submitOnlyLinkAbilities|[linkRoleAbilities](../resources/linkroleabilities.md)|Describes submitOnly link abilities.|

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
