---
title: "onAttributeCollectionHandler resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onAttributeCollectionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a base/abstract class that defines configuration for what to invoke if the onAttributeCollection event resolves to this listener. Each actual handler available for this event type is a subtype of this abstract complex type object.

This is an abstract type.

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionHandler"
}
```

