---
title: "onVerifiedIdClaimValidationHandler resource type"
description: "Represents an abstract base type for handlers that process the onVerifiedIdClaimValidation authentication event."
author: "vbogomaz"
ms.date: 03/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onVerifiedIdClaimValidationHandler resource type

Namespace: microsoft.graph

Represents an abstract base type for handlers that can be invoked when an [onVerifiedIdClaimValidation authentication event](../resources/onverifiedidclaimvalidationlistener.md) occurs. This resource type defines the contract for all handlers that process Verified ID claim validation events in the authentication flow.

Concrete implementations of this handler type include:
- [onVerifiedIdClaimValidationCustomExtensionHandler](../resources/onverifiedidclaimvalidationcustomextensionhandler.md) - Invokes a custom extension API for validating claims from Verified ID credential presentations

This abstract type can't be instantiated directly. Use one of the derived types to configure a handler for the **onVerifiedIdClaimValidation** event.

## Properties

This abstract type has no properties. Derived types might define other properties.

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
