---
title: "onPasswordUpdateListener resource type"
description: "Represents an event listener for the onPasswordUpdate authentication event, used to notify external systems after password updates."
author: "junrlin"
ms.date: 10/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPasswordUpdateListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [authentication event listener](../resources/authenticationeventlistener.md) that triggers after a user completes a self-service password reset (SSPR). This listener allows organizations to notify an external system of the password update for selected applications.

When a password update occurs, the listener evaluates its configured conditions to determine whether to invoke the associated handler.

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [authenticationEventListener](../resources/authenticationeventlistener.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|Identifier of the authentication events flow. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Conditions that determine when this listener is active, such as which applications trigger the event. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|displayName|String|Display name for the authentication event listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onPasswordUpdateHandler](../resources/onpasswordupdatehandler.md)|Configuration for the handler to invoke when this listener is triggered. This is typically an [onPasswordUpdateCustomExtensionHandler](../resources/onpasswordupdatecustomextensionhandler.md).|
|id|String|Unique identifier for the authentication event listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Priority of this listener relative to other listeners for the same event. Lower values indicate higher priority. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPasswordUpdateListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPasswordUpdateListener",
  "id": "String (identifier)",
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onPasswordUpdateHandler"
  }
}
```
