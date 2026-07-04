---
title: "authenticationEventHandlerResult resource type"
description: "An abstract type that defines the result of authentication to event listeners in Microsoft Entra sign-ins."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# authenticationEventHandlerResult resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that defines the result of authentication to [event listeners](../resources/authenticationeventlistener.md) in Microsoft Entra sign-ins. This object is configured in the **handlerResult** property of [appliedAuthenticationEventListener](../resources/appliedauthenticationeventlistener.md). This abstract type is inherited by the [customExtensionCalloutResult](../resources/customextensioncalloutresult.md) resource type.

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.authenticationEventHandlerResult"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationEventHandlerResult"
}
```
