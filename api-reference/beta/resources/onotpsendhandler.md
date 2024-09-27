---
title: "onOtpSendHandler resource type"
description: "Serves as a generic OTP event handler used for both email and SMS OTP messages."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onOtpSendHandler resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used to configure what to invoke if the onEmailOTPSend event resolves to this listener. This base class will serve as a generic OTP event handler used for both email and SMS OTP messages.
This is an abstract type.


## Properties
|Property|Type|Description|
|:---|:---|:---|

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

