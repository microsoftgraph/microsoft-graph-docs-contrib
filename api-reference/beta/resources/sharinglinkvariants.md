---
title: "sharingLinkVariants resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# sharingLinkVariants resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|addressBarLinkPermission|sharingRole|**TODO: Add Description**.The possible values are: `none`, `view`, `edit`, `manageList`, `review`, `restrictedView`, `submitOnly`, `unknownFutureValue`.|
|allowEmbed|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|passwordProtected|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|
|requiresAuthentication|[sharingOperationStatus](../resources/sharingoperationstatus.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.sharingLinkVariants"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.sharingLinkVariants",
  "passwordProtected": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "requiresAuthentication": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  },
  "addressBarLinkPermission": "String",
  "allowEmbed": {
    "@odata.type": "microsoft.graph.sharingOperationStatus"
  }
}
```

