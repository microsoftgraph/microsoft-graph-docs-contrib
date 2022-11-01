---
title: "expediteSettings resource type"
description: "Settings for expediting the deployment of content."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# expediteSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings for expediting the deployment of content.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isExpedited|Boolean|Set to **true** to expedite deployment of content.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.expediteSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.expediteSettings",
  "isExpedited": "Boolean"
}
```

