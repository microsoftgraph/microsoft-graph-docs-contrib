---
title: "onUserCreateStartListener resource type"
description: "Represents a step in a multi-event policy defining what happens during user creation"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onUserCreateStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Derived class of [authenticationEventListener](../resources/authenticationeventlistener.md) for the **onUserCreateStart** event. Used for configuring actions done during user creation.


Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onUserCreateStartListeners](../api/onusercreatestartlistener-list.md)|[onUserCreateStartListener](../resources/onusercreatestartlistener.md) collection|Get a list of the [onUserCreateStartListener](../resources/onusercreatestartlistener.md) objects and their properties.|
|[Get onUserCreateStartListener](../api/onusercreatestartlistener-get.md)|[onUserCreateStartListener](../resources/onusercreatestartlistener.md)|Read the properties and relationships of an [onUserCreateStartListener](../resources/onusercreatestartlistener.md) object.|
|[Update onUserCreateStartListener](../api/onusercreatestartlistener-update.md)|[onUserCreateStartListener](../resources/onusercreatestartlistener.md)|Update the properties of an [onUserCreateStartListener](../resources/onusercreatestartlistener.md) object.|
|[Delete onUserCreateStartListener](../api/onusercreatestartlistener-delete.md)|None|Delete an [onUserCreateStartListener](../resources/onusercreatestartlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Required. Inherited from [entity](../resources/entity.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|authenticationEventsFlowId|String| Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|Required. Configuration for what to invoke if the event resolves to this listener. This lets us define potential handler configurations per-event.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onUserCreateStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onUserCreateStartListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onUserCreateStartHandler"
  }
}
```

