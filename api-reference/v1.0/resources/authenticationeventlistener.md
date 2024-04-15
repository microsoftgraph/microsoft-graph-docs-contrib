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

To customize the authentication process, listeners can be registered which specify that for some event, on some conditions, some custom logic can be invoked. This is an abstract type from which the following types are derived.

- [onTokenIssuanceStartListener resource type](../resources/ontokenissuancestartlistener.md) resource type
Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authenticationEventListener objects](../api/identitycontainer-list-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md) collection|Get a list of the [authenticationEventListener](../resources/authenticationeventlistener.md) objects and their properties.|
|[Create authenticationEventListener](../api/identitycontainer-post-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Create a new [authenticationEventListener](../resources/authenticationeventlistener.md) object.|
|[Get authenticationEventListener](../api/authenticationeventlistener-get.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Read the properties and relationships of an [authenticationEventListener](../resources/authenticationeventlistener.md) object.|
|[Update authenticationEventListener](../api/authenticationeventlistener-update.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Update the properties of an [authenticationEventListener](../resources/authenticationeventlistener.md) object.|
|[Delete authenticationEventListener](../api/authenticationeventlistener-delete.md)|None|Delete an [authenticationEventListener](../resources/authenticationeventlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger.|
|id|String|Identifier for this authenticationEventListener. Inherited from [entity](../resources/entity.md).|

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
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
}
```

