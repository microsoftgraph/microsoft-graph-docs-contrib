---
title: "onInteractiveAuthFlowStartListener resource type"
description: "A listener for what to invoke when an authentication flow is ready to be initiated"
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onInteractiveAuthFlowStartListener resource type

Namespace: microsoft.graph

A listener for what to invoke when an authentication flow is ready to be initiated. May be part of an [authenticationEventsFlow](../resources/authenticationeventsflow.md).

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Required. Inherited from [entity](../resources/entity.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Required. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|authenticationEventsFlowId|String| Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|Required. Configuration for what to invoke if the event resolves to this listener. This lets us define potential handler configurations per-event.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

