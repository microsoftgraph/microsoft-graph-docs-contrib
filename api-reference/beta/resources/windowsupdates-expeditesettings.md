---
title: "expediteSettings resource type"
description: "Represents settings for expediting the deployment of content."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# expediteSettings resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents settings for expediting the deployment of content.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isExpedited|Boolean|`True` indicates that the deployment of the content is expedited.|

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
