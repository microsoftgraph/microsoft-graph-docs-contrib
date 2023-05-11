---
title: "onInteractiveAuthFlowStartListener resource type"
description: "Listener for the onInteractiveAuthFlowStart event."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onInteractiveAuthFlowStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for configuring whether the authentication flow allows for sign up as defined in the **onInteractiveAuthFlowStart** event in an [externalUsersSelfServiceSignUpEventsFlow](externalUsersSelfServiceSignUpEventsFlow.md) user flow type. If this listener is not specified, then sign up is disabled by default.

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
**TODO: confirm that methods belong on the parent class, authenticationEventListener**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Required. Inherited from [entity](../resources/entity.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|authenticationEventsFlowId|String| Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|Required. Configuration for what to invoke if the event resolves to this listener. This lets us define potential handler configurations per-event.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartHandler"
  }
}
```

