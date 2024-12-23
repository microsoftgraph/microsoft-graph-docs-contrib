---
title: "onPhoneMethodLoadStartHandler resource type"
description: "Represents a step in a multi-event user flow policy defining what happens when telephony methods are ready to be presented to the user."
author: "Regina Yap (reyap)"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPhoneMethodLoadStartHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for configuring the telephony settings for enabling or disabling MFA as defined in the **onPhoneMethodLoadStartHandler** event in an [externalUsersSelfServiceSignUpEventsFlow](externalUsersSelfServiceSignUpEventsFlow.md) user flow type.

This is an abstract complex type from which the [onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp](../resources/onauthenticationmethodloadstartexternalusersselfservicesignup.md) subtype is derived.

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onPhoneMethodLoadStartHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPhoneMethodLoadStartHandler"
}
```

