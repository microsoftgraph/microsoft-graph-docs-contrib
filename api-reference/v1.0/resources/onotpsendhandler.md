---
title: "onOtpSendHandler resource type"
description: "Represents an abstract base class for OTP event handlers that are used for both email and SMS OTP messages."
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 06/25/2025
toc.title: On email OTP send listener
---

# onOtpSendHandler resource type

Namespace: microsoft.graph

Used to configure what to invoke if the onEmailOTPSend event resolves to this listener. This base class serves as a generic OTP event handler used for both email and SMS OTP messages.
This object is an abstract type from which the [onOtpSendCustomExtensionHandler resource type](../resources/onotpsendcustomextensionhandler.md) inherits.


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