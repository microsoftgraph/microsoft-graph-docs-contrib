---
title: "webFilteringMatchingConditions resource type"
description: "Represents the source and destination conditions used to determine whether web traffic matches a web filtering rule."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringMatchingConditions resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the source and destination conditions used to determine whether web traffic matches a [webFilteringRule](../resources/networkaccess-webfilteringrule.md).

This type is used by the **matchingConditions** property of [webFilteringRule](../resources/networkaccess-webfilteringrule.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|destinations|[microsoft.graph.networkaccess.webFilteringDestinationMatching](../resources/networkaccess-webfilteringdestinationmatching.md)|The destination criteria to match.|
|sources|[microsoft.graph.networkaccess.webFilteringSourceMatching](../resources/networkaccess-webfilteringsourcematching.md)|The source session criteria to match.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringMatchingConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringMatchingConditions",
  "destinations": {
    "@odata.type": "microsoft.graph.networkaccess.webFilteringDestinationMatching"
  },
  "sources": {
    "@odata.type": "microsoft.graph.networkaccess.webFilteringSourceMatching"
  }
}
```
