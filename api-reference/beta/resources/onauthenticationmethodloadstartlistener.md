---
title: "onAuthenticationMethodLoadStartListener resource type"
description: "Listener for the onAuthenticationMethodLoadStart event"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAuthenticationMethodLoadStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Used for configuring what authentication methods are enabled for the authentication flow as defined in the **onAuthenticationMethodLoadStart** event in an [externalUsersSelfServiceSignUpEventsFlow](externalUsersSelfServiceSignUpEventsFlow.md) user flow type. If this listener is not specified, the default option will be email one time passcode (OTP).

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationEventListeners](../api/identitycontainer-list-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md) collection|Retrieve a list of the following object types derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)|
|[Create authenticationEventListener](../api/identitycontainer-post-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Create a new [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type. The type can be one of the following subtypes derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)|
|[Get authenticationEventListener](../api/authenticationeventlistener-get.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Read the properties and relationships of an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type. The type can be one of the following subtypes derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)|
|[Update authenticationEventListener](../api/authenticationeventlistener-update.md)|None|Update the properties of an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type. The type can be one of the following subtypes derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)|
|[Delete authenticationEventListener](../api/authenticationeventlistener-delete.md)|None|Delete an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type. The type can be one of the following subtypes derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)|

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

