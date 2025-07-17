---
title: "onAuthenticationMethodLoadStartHandler resource type"
description: "Represents a step in a multi-event user flow policy defining what happens when authentication methods are ready to be presented to the user."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# onAuthenticationMethodLoadStartHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to configure what to invoke when authentication methods are ready to be presented to the user as defined in the **onAuthenticationMethodLoadStartHandler** event in an [externalUsersSelfServiceSignUpEventsFlow](externalUsersSelfServiceSignUpEventsFlow.md) user flow type.

This is an abstract complex type from which the [onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp](../resources/onauthenticationmethodloadstartexternalusersselfservicesignup.md) subtype is derived.


## Properties

None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

