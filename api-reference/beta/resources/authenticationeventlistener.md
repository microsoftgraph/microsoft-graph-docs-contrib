---
title: "authenticationEventListener resource type"
description: "**Representation of listener for on events in the authentication process**"
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
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

> [!NOTE]
>
> You can have a maximum of 250 event listeners.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationEventListeners](../api/identitycontainer-list-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md) collection|Retrieve a list of the following object types derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)<li>[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)<li>[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)|
|[Create authenticationEventListener](../api/identitycontainer-post-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Create a new [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type. The type can be one of the following subtypes derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)<li>[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)<li>[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)|
|[Get authenticationEventListener](../api/authenticationeventlistener-get.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Read the properties and relationships of an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type. The type can be one of the following subtypes derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)<li>[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)<li>[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)|
|[Update authenticationEventListener](../api/authenticationeventlistener-update.md)|None|Update the properties of an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type. The type can be one of the following subtypes derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)<li>[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)<li>[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)|
|[Delete authenticationEventListener](../api/authenticationeventlistener-delete.md)|None|Delete an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type. The type can be one of the following subtypes derived from authenticationEventListener: <br/> <li>[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) <li>[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) <li>[onAuthenticationMethodLoadStartListener](../resources/onauthenticationmethodloadstartlistener.md) <li>[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)<li>[onUserCreateStartListener](../resources/onusercreatestartlistener.md)<li>[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)<li>[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the [authenticationEventsFlow](../resources/authenticationeventsflow.md) object.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger.|
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
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String"
}
```

