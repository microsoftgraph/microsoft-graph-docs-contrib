---
title: "webFilteringWebCategoryDestination resource type"
description: "Represents web category values used as destination targets in a web filtering rule."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringWebCategoryDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents web category values used as destination targets in a [webFilteringRule](../resources/networkaccess-webfilteringrule.md).

Inherits from [microsoft.graph.networkaccess.webFilteringDestinationTarget](../resources/networkaccess-webfilteringdestinationtarget.md).

Instances of this type can be included in the **targets** collection property of [webFilteringDestinationMatching](../resources/networkaccess-webfilteringdestinationmatching.md), whose element type is [webFilteringDestinationTarget](../resources/networkaccess-webfilteringdestinationtarget.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|values|String collection|The web category identifiers to match.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringWebCategoryDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringWebCategoryDestination",
  "values": [
    "String"
  ]
}
```
