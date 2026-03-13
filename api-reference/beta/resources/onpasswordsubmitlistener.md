---
title: "onPasswordSubmitListener resource type"
description: "Represents an event listener for the onPasswordSubmit authentication event, used for Just-In-Time migration scenarios."
author: "diadabal"
ms.date: 01/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onPasswordSubmitListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an event listener that triggers during password submission in the authentication flow. This listener enables organizations to intercept password submission events for specific applications and invoke custom logic, such as validating credentials against a legacy authentication system for Just-In-Time (JIT) user migration.

When configured, this listener activates during the sign-in process when a user submits their password. The listener evaluates the conditions to determine if it should invoke the configured handler for the authentication event.

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
|handler|[onPasswordSubmitHandler](../resources/onpasswordsubmithandler.md)|Configuration for the handler to invoke when this listener is triggered. For JIT migration scenarios, this is typically an [onPasswordMigrationCustomExtensionHandler](../resources/onpasswordmigrationcustomextensionhandler.md).|
|id|String|Unique identifier for the authentication event listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Priority of this listener relative to other listeners for the same event. Lower values indicate higher priority. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onPasswordSubmitListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onPasswordSubmitListener",
  "id": "String (identifier)",
  "displayName": "String",
  "priority": 1024,
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onPasswordSubmitHandler"
  }
}
```

