---
title: "authenticationEventListener resource type"
description: "**Representation of listener for on events in the authentication process**"
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationEventListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

To customize the authentication process, listeners can be registered which specify that for some event, on some conditions, some custom logic can be invoked. This is an abstract type from which the [onTokenIssuanceStartListener resource type](../resources/ontokenissuancestartlistener.md) is derived.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationEventListeners](../api/identitycontainer-list-authenticationeventlisteners.md)|[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) collection|Retrieve a list of [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object types.|
|[Create authenticationEventListener](../api/identitycontainer-post-authenticationeventlisteners.md)|[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md)|Create a new [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type.|
|[Get authenticationEventListener](../api/authenticationeventlistener-get.md)|[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md)|Read the properties and relationships of an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type.|
|[Update authenticationEventListener](../api/authenticationeventlistener-update.md)|None|Update the properties of an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type.|
|[Delete authenticationEventListener](../api/authenticationeventlistener-delete.md)|None|Delete an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object type.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the authenticationEventsFlow object.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger.|
|id|String|Identifier for this authenticationEventListener. Inherited from [entity](../resources/entity.md).|
|priority|Int32| The priority of this handler. Between 0 (lower priority) and 1000 (higher priority).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

