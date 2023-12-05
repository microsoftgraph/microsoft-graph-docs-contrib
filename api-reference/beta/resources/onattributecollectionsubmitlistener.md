---
title: "onAttributeCollectionSubmitListener resource type"
description: "Listener for the onAttributeCollectionSubmit event."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionSubmitListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A listener for the end of the user attribution collection stage of a sign up flow. This event is triggered when the user submits the attribute collection form. 

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onAttributeCollectionSubmitListeners](../api/onattributecollectionsubmitlistener-list.md)|[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md) collection|Get a list of the [onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md) objects and their properties.|
|[Get onAttributeCollectionSubmitListener](../api/onattributecollectionsubmitlistener-get.md)|[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)|Read the properties and relationships of an [onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md) object.|
|[Update onAttributeCollectionSubmitListener](../api/onattributecollectionsubmitlistener-update.md)|[onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md)|Update the properties of an [onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md) object.|
|[Delete onAttributeCollectionSubmitListener](../api/onattributecollectionsubmitlistener-delete.md)|None|Delete an [onAttributeCollectionSubmitListener](../resources/onattributecollectionsubmitlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the authenticationEventsFlow object. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onAttributeCollectionSubmitHandler](../resources/onattributecollectionsubmithandler.md)|Configuration for what to invoke if the event resolves to this listener. |
|id|String|Identifier for this authenticationEventListener. Inherited from [entity](../resources/entity.md).|
|priority|Int32|The priority of this listener. Between 0 (lower priority) and 1000 (higher priority). Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onAttributeCollectionSubmitListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionSubmitHandler"
  }
}
```

