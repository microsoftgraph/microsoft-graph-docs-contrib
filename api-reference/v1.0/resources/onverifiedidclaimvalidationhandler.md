---
title: "onVerifiedIdClaimValidationHandler resource type"
description: "An abstract base class that defines the configuration for handlers that can be invoked when the OnVerifiedIdClaimValidation event resolves to a listener."
author: "FaithOmbongi"
ms.date: 03/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onVerifiedIdClaimValidationHandler resource type

Namespace: microsoft.graph

An abstract base class that defines the configuration for handlers that can be invoked when the OnVerifiedIdClaimValidation event resolves to a listener. This type cannot be instantiated directly.

Each handler available for the OnVerifiedIdClaimValidation event type is a subtype of this abstract complex type. Use the appropriate derived type when configuring a handler for this event.

## Properties

This abstract base type has no properties.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onVerifiedIdClaimValidationHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onVerifiedIdClaimValidationHandler"
}
```
