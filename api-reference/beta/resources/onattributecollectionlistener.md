---
title: "onAttributeCollectionListener resource type"
description: "Represents a step in a multi-event policy defining what happens when attributes are ready to be collected from the user"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Derived class of [authenticationEventListener](../resources/authenticationeventlistener.md) for the **onAttributeCollection** event. Used for configuring the collection of attributes during user sign up. This includes which attributes to collect, how to display them, and API connectors for backwards compatiblity. **Is this still accurate that it includes API connectors?**


Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onAttributeCollectionListeners](../api/onattributecollectionlistener-list.md)|[onAttributeCollectionListener](../resources/onattributecollectionlistener.md) collection|Get a list of the [onAttributeCollectionListener](../resources/onattributecollectionlistener.md) objects and their properties.|
|[Get onAttributeCollectionListener](../api/onattributecollectionlistener-get.md)|[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)|Read the properties and relationships of an [onAttributeCollectionListener](../resources/onattributecollectionlistener.md) object.|
|[Update onAttributeCollectionListener](../api/onattributecollectionlistener-update.md)|[onAttributeCollectionListener](../resources/onattributecollectionlistener.md)|Update the properties of an [onAttributeCollectionListener](../resources/onattributecollectionlistener.md) object.|
|[Delete onAttributeCollectionListener](../api/onattributecollectionlistener-delete.md)|None|Delete an [onAttributeCollectionListener](../resources/onattributecollectionlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Required. Inherited from [entity](../resources/entity.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|authenticationEventsFlowId|String| Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|Required. Configuration for what to invoke if the event resolves to this listener. This lets us define potential handler configurations per-event.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onAttributeCollectionListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
  }
}
```

