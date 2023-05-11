---
title: "onAuthenticationMethodLoadStartHandler resource type"
description: "Represents a step in a multi-event user flow policy defining what happens when authentication methods are ready to be presented to the user."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAuthenticationMethodLoadStartHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to configure what to invoke if the onAuthenticationMethodLoadStartHandler event resolves to this listener.  It represents a step in a multi-event policy that defines what happens when when authentication methods are ready to be presented.

This is an abstract complex type from which the [onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp](../resources/onauthenticationmethodloadstartexternalusersselfservicesignup.md) subtype is derived.


## Properties

None.

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartHandler"
}
```

