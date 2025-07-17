---
title: "onInteractiveAuthFlowStartHandler resource type"
description: "Represents a step in a multi-event user flow policy defining what happens when an authentication flow is ready to be initiated by the user."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# onInteractiveAuthFlowStartHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to configure what to invoke if the **onInteractiveAuthFlowStart** event resolves to this listener. It represents a step in a multi-event policy that defines what happens when when an authentication flow is ready to be initiated.

This is an abstract complex type from which the [onInteractiveAuthFlowStartExternalUsersSelfServiceSignUp](../resources/oninteractiveauthflowstartexternalusersselfservicesignup.md) subtype is derived.

## Properties

None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartHandler"
}
```

