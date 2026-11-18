---
title: "webFilteringUrlDestination resource type"
description: "Represents URL values used as destination targets in a web filtering rule."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringUrlDestination resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents URL values used as destination targets in a [webFilteringRule](../resources/networkaccess-webfilteringrule.md).

Inherits from [microsoft.graph.networkaccess.webFilteringDestinationTarget](../resources/networkaccess-webfilteringdestinationtarget.md).

Instances of this type can be included in the **targets** collection property of [webFilteringDestinationMatching](../resources/networkaccess-webfilteringdestinationmatching.md), whose element type is [webFilteringDestinationTarget](../resources/networkaccess-webfilteringdestinationtarget.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|values|String collection|The URLs to match.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringUrlDestination"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringUrlDestination",
  "values": [
    "String"
  ]
}
```
