---
title: "onTokenIssuanceStartListener resource type"
description: "A listener for when a token is about to be issued to your application."
author: "soneff"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 05/16/2024
---

# onTokenIssuanceStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A listener for when a token is about to be issued to your application.

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [authenticationEventListener](../resources/authenticationeventlistener.md) resource type.        

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the [authenticationEventsFlow](authenticationeventsflow.md). Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which onTokenIssuanceStartListener should trigger. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met for this onTokenIssuanceStartListener.|
|id|String|Identifier for the onTokenIssuanceStartListener. Inherited from [entity](../resources/entity.md).|
|displayName|String|The display name of the listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32| The priority of this handler. Priority should be set to 500 for onTokenIssuanceStartListeners. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onTokenIssuanceStartHandler"
  }
}
```

