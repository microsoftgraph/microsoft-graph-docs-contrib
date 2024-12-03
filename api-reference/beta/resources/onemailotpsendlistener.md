---
title: "onEmailOtpSendListener resource type"
description: "Listener for the onEmailOtpSend event"
author: "AlexanderMars"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onEmailOtpSendListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for configuring the applications to listen the onEmailOtpSend event, the corresponding custom extension handler ID, and the request timeout length.


Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).


## Methods
None.

For the list of API operations for managing this resource type, see the [authenticationEventListener](../resources/authenticationeventlistener.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onOtpSendHandler](../resources/onotpsendhandler.md)|Used to configure what to invoke if the onEmailOTPSend event resolves to this listener. This base class serves as a generic OTP event handler used for both email and SMS OTP messages.|
|id|String|The unique identifier for the onEmailOtpSendCustomExtension object. Inherited from [entity](../resources/entity.md).|
|priority|Int32|The priority of this handler. Between 0 (lower priority) and 1000 (higher priority). Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onEmailOtpSendListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onEmailOtpSendListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onOtpSendHandler"
  }
}
```