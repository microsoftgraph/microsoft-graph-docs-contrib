---
title: "authenticationEventListener resource type"
description: "**Representation of listener for on events in the authentication process**"
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 01/06/2025
---

# authenticationEventListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

To customize the authentication process, listeners can be registered which specify that for some event, on some conditions, some custom logic can be invoked. This is an abstract type from which the following types are derived.

- [onTokenIssuanceStartListener resource type](../resources/ontokenissuancestartlistener.md) resource type
- [onInteractiveAuthFlowStartListener resource type](../resources/oninteractiveauthflowstartlistener.md) resource type
- [onAuthenticationMethodLoadStartListener resource type](../resources/onauthenticationmethodloadstartlistener.md) resource type
- [onAttributeCollectionListener resource type](../resources/onattributecollectionlistener.md) resource type
- [onUserCreateStartListener resource type](../resources/onusercreatestartlistener.md) resource type
- [onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md) resource type
- [onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md) resource type
- [onPhoneMethodLoadStartListener](../resources/onphonemethodloadstartlistener.md)
- [onEmailOtpSendListener](../resources/onemailotpsendlistener.md) resource type
- [onFraudProtectionLoadStartListener](../resources/onFraudProtectionLoadStartListener.md) resource type

> [!NOTE]
>
> You can have a maximum of 250 event listeners.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md) collection|Retrieve a list of the object types that are derived from **authenticationEventListener**.|
|[Create](../api/identitycontainer-post-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Create a new object type that is derived from **authenticationEventListener**.|
|[Get](../api/authenticationeventlistener-get.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Read the properties and relationships of an object type that is derived from **authenticationEventListener**.|
|[Update](../api/authenticationeventlistener-update.md)|None|Update the properties of an object type that is derived from **authenticationEventListener**.|
|[Delete](../api/authenticationeventlistener-delete.md)|None|Delete an object type that is derived from **authenticationEventListener**.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the [authenticationEventsFlow](../resources/authenticationeventsflow.md) object.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger.|
|displayName|String|The display name of the listener.|
|id|String|Identifier for this authenticationEventListener. Inherited from [entity](../resources/entity.md).|
|priority|Int32| The priority of this handler. Between 0 (lower priority) and 1000 (higher priority).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationEventListener",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationEventListener",
  "id": "String (identifier)",
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String"
}
```

