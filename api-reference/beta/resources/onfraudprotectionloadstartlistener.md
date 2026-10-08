---
title: "onFraudProtectionLoadStartListener resource type"
description: "A listener for fraud protection load start events in Microsoft Entra External ID"
author: "more-rasika"
ms.date: 08/05/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onFraudProtectionLoadStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A listener for fraud protection load start events in Microsoft Entra External ID. This resource enables you to configure actions and conditions that trigger at the start of a fraud protection check, such as during sign-up scenarios.


Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).


## Methods
 None.

  For the list of API operations for managing this resource type, see the [authenticationEventListener](../resources/authenticationeventlistener.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the authentication events flow associated with this listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Defines the conditions under which this listener is triggered. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|displayName|String|The display name of the listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onFraudProtectionLoadStartHandler](../resources/onfraudprotectionloadstarthandler.md)| Configuration for what to invoke if the event resolves to this listener.|
|id|String|The unique identifier of the listener. Inherited from [entity](../resources/entity.md).|
|priority|Int32|Indicates the execution priority of the listener relative to other listeners. Between 0 (lower priority) and 1000 (higher priority). Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onFraudProtectionLoadStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onFraudProtectionLoadStartListener",
  "id": "String (identifier)",
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onFraudProtectionLoadStartHandler"
  }
}
```

