---
title: "catalogContent resource type"
description: "Represents content that can be deployed from the catalog."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# catalogContent resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content that can be deployed from the catalog.


Inherits from [deployableContent](../resources/windowsupdates-deployablecontent.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|catalogEntry|[catalogEntry](../resources/windowsupdates-catalogentry.md)|Metadata for a piece of content that you can approve for deployment.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.catalogContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.catalogContent",
  "catalogEntry": {
    "@odata.type": "#microsoft.graph.windowsUpdates.catalogEntry"
  }
}
```

