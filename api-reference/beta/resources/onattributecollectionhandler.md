---
title: "onAttributeCollectionHandler resource type"
description: "Represents a step in a multi-event policy defining what happens when attributes are ready to be collected from the user"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is a base/abstract class for configuring what to invoke if the onAttributeCollectionHandler event resolves to this listener. Each handler available for this event type is a subtype of this abstract complex type.  Represents a step in a multi-event policy that defines what happens when when attributes are ready to be collected from the user.


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

