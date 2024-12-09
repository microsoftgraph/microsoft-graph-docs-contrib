---
title: "onOtpSendHandler resource type"
description: "Represents an abstract base class for OTP event handlers that are used for both email and SMS OTP messages."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 12/09/2024
---

# onOtpSendHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to configure what to invoke if the onEmailOTPSend event resolves to this listener. This base class serves as a generic OTP event handler used for both email and SMS OTP messages.
This is an abstract type.


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.onOtpSendHandler"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onOtpSendHandler"
}
```

