---
title: "onAuthenticationMethodLoadStartListener resource type"
description: "A listener for when authentication methods are ready to be presented to the user in an authentication flow"
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onAuthenticationMethodLoadStartListener resource type

Namespace: microsoft.graph

A listener for when authentication methods are ready to be presented to the user in an authentication flow.  If this listener isn't specified, the default option is email one time passcode (OTP). May be part of an [authenticationEventsFlow](../resources/authenticationeventsflow.md).

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Required. Inherited from [entity](../resources/entity.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|authenticationEventsFlowId|String| Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|Required. Configuration for what to invoke if the event resolves to this listener. This lets us define potential handler configurations per-event.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAuthenticationMethodLoadStartListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartHandler"
  }
}
```

