---
title: "onAttributeCollectionStartListener resource type"
description: "Listener for the onAttributeCollectionStart event."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A listener for the start of the user attribution collection stage of a sign up flow.

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onAttributeCollectionStartListeners](../api/onattributecollectionstartlistener-list.md)|[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md) collection|Get a list of the [onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md) objects and their properties.|
|[Get onAttributeCollectionStartListener](../api/onattributecollectionstartlistener-get.md)|[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)|Read the properties and relationships of an [onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md) object.|
|[Update onAttributeCollectionStartListener](../api/onattributecollectionstartlistener-update.md)|[onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md)|Update the properties of an [onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md) object.|
|[Delete onAttributeCollectionStartListener](../api/onattributecollectionstartlistener-delete.md)|None|Delete an [onAttributeCollectionStartListener](../resources/onattributecollectionstartlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the authenticationEventsFlow object. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onAttributeCollectionStartHandler](../resources/onattributecollectionstarthandler.md)|Configuration for what to invoke if the event resolves to this listener.|
|id|String|Identifier for this authenticationEventListener. Inherited from [entity](../resources/entity.md).|
|priority|Int32|The priority of this handler. Between 0 (lower priority) and 1000 (higher priority). Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onAttributeCollectionStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionStartListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionStartHandler"
  }
}
```

