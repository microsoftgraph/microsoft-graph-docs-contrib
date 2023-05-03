---
title: "onTokenIssuanceStartListener resource type"
description: "A listener for the onTokenIssuanceStart event."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# onTokenIssuanceStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A listener for the onTokenIssuanceStart event.

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List onTokenIssuanceStartListeners](../api/ontokenissuancestartlistener-list.md)|[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) collection|Get a list of the [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) objects and their properties.|
|[Get onTokenIssuanceStartListener](../api/ontokenissuancestartlistener-get.md)|[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md)|Read the properties and relationships of an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object.|
|[Update onTokenIssuanceStartListener](../api/ontokenissuancestartlistener-update.md)|[onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md)|Update the properties of an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object.|
|[Delete onTokenIssuanceStartListener](../api/ontokenissuancestartlistener-delete.md)|None|Deletes an [onTokenIssuanceStartListener](../resources/ontokenissuancestartlistener.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the authentication events flow. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which onTokenIssuanceStartListener should trigger. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met for this onTokenIssuanceStartListener.|
|id|String|Identifier for the onTokenIssuanceStartListener. Inherited from [entity](../resources/entity.md).|
|priority|Int32| The priority of this handler. Between 0 (lower priority) and 1000 (higher priority). Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|tags|[keyValuePair](../resources/intune-keyvaluepair.md) collection|**TODO: What is this for?** Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onTokenIssuanceStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "tags": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onTokenIssuanceStartHandler"
  }
}
```

