---
title: "onAttributeCollectionListener resource type"
description: "A listener for when attributes are collected in the authentication flow"
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onAttributeCollectionListener resource type

Namespace: microsoft.graph

A listener for when attributes are collected in an authentication flow. 

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Required. Inherited from [entity](../resources/entity.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|authenticationEventsFlowId|String| Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|Required. Configuration for what to invoke if the event resolves to this listener.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

