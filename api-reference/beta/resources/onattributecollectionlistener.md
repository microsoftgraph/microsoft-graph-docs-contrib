---
title: "onAttributeCollectionListener resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onAttributeCollectionListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


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
|id|String|Read-only. Inherited from [entity](../resources/entity.md).|
|priority|Int32|Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|authenticationEventsFlowId|String|**NOT IN SPEC** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|Required. Configuration for what to invoke if the event resolves to this listener.
|

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

