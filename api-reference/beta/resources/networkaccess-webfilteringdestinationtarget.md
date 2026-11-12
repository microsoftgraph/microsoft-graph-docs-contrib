---
title: "webFilteringDestinationTarget resource type"
description: "Represents a destination target used to match web traffic."
author: "mialdrid"
ms.date: 09/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-global-secure-access"
doc_type: resourcePageType
---

# webFilteringDestinationTarget resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a destination target used to match web traffic. This is an abstract type that can't be instantiated directly.

The following types derive from this resource:

- [webFilteringUrlDestination](../resources/networkaccess-webfilteringurldestination.md)
- [webFilteringWebCategoryDestination](../resources/networkaccess-webfilteringwebcategorydestination.md)

Instances are differentiated by the `@odata.type` property.

This type is used by the **targets** collection property of [webFilteringDestinationMatching](../resources/networkaccess-webfilteringdestinationmatching.md).

## Methods
None.

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.webFilteringDestinationTarget"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.webFilteringDestinationTarget"
}
```
