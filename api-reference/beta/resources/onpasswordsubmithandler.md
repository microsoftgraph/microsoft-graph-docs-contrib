---
title: "onPasswordSubmitHandler resource type"
description: "Represents an abstract base type for handlers that process the onPasswordSubmit authentication event."
author: "diadabal"
ms.date: 01/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPasswordSubmitHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base type for handlers that can be invoked when an **onPasswordSubmit** authentication event occurs. This resource type defines the contract for all handlers that process password submission events in the authentication flow.

Concrete implementations of this handler type include:
- [onPasswordMigrationCustomExtensionHandler](../resources/onpasswordmigrationcustomextensionhandler.md) - Invokes a custom extension API for password validation during Just-In-Time migration scenarios

This abstract type can't be instantiated directly. Use one of the derived types to configure a handler for the **onPasswordSubmit** event.

## Properties

This abstract type has no properties. Derived types might define other properties.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPasswordSubmitHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPasswordSubmitHandler"
}
```
