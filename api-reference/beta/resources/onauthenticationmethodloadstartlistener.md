---
title: "onAuthenticationMethodLoadStartListener resource type"
description: "Represents a step in a multi-event policy defining what happens when authentication methods are ready to be presented"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAuthenticationMethodLoadStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Derived class of [authenticationEventListener](../resources/authenticationeventlistener.md) for the **onAuthenticationMethodLoadStart** event. Used for configuring whether the authentication flow allows for sign up. If listener is not specified, the user can still login with the default email address option. **Is this still accurate? I think this listener is required.**


Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onAuthenticationMethodLoadStartListeners](../api/onauthenticationmethodloadstartlistener-list.md)|[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) collection|Get a list of the [onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) objects and their properties.|
|[Get onAuthenticationMethodLoadStartListener](../api/onauthenticationmethodloadstartlistener-get.md)|[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md)|Read the properties and relationships of an [onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) object.|
|[Update onAuthenticationMethodLoadStartListener](../api/onauthenticationmethodloadstartlistener-update.md)|[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md)|Update the properties of an [onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) object.|
|[Delete onAuthenticationMethodLoadStartListener](../api/onauthenticationmethodloadstartlistener-delete.md)|None|Delete an [onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) object.|

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
The following is a JSON representation of the resource.
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

