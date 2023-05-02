---
title: "onInteractiveAuthFlowStartListener resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# onInteractiveAuthFlowStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Derived class of [authenticationEventListener](../resources/authenticationeventlistener.md) for the **onInteractiveAuthFlowStart** event. Used for configuring whether the authentication flow allows for sign up. If this listener is not specified, then sign up will be disabled by default.


Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onInteractiveAuthFlowStartListeners](../api/oninteractiveauthflowstartlistener-list.md)|[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) collection|Get a list of the [onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) objects and their properties.|
|[Get onInteractiveAuthFlowStartListener](../api/oninteractiveauthflowstartlistener-get.md)|[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md)|Read the properties and relationships of an [onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) object.|
|[Update onInteractiveAuthFlowStartListener](../api/oninteractiveauthflowstartlistener-update.md)|[onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md)|Update the properties of an [onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) object.|
|[Delete onInteractiveAuthFlowStartListener](../api/oninteractiveauthflowstartlistener-delete.md)|None|Delete an [onInteractiveAuthFlowStartListener](../resources/oninteractiveauthflowstartlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Required. Inherited from [entity](../resources/entity.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|authenticationEventsFlowId|String|ID of the listener. Auto-generated. Read-only. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|Configuration for what to invoke if the event resolves to this listener. This lets us define potential handler configurations per-event.
|



## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onInteractiveAuthFlowStartListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartHandler"
  }
}
```

