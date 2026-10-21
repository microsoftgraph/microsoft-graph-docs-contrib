---
title: "onPasswordUpdateHandler resource type"
description: "Represents an abstract base type for handlers that process the onPasswordUpdate authentication event."
author: "junrlin"
ms.date: 10/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPasswordUpdateHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base type for handlers configured through the **handler** property of an [onPasswordUpdateListener](../resources/onpasswordupdatelistener.md). These handlers process the **onPasswordUpdate** authentication event after a user completes a self-service password reset.

Concrete implementations of this handler type include:
- [onPasswordUpdateCustomExtensionHandler](../resources/onpasswordupdatecustomextensionhandler.md) - Invokes a custom extension API to synchronize the updated credential with an external system.

This abstract type can't be instantiated directly. Use a derived type to configure a handler for the **onPasswordUpdate** event.

## Properties

This abstract type has no properties. Derived types might define other properties.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPasswordUpdateHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPasswordUpdateHandler"
}
```
