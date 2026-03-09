---
title: "onVerifiedIdClaimValidationListener resource type"
description: "A derived class of authenticationEventListener for the OnVerifiedIdClaimValidation event, used to configure event listeners that validate claims from Verified ID presentations during authentication."
author: "FaithOmbongi"
ms.date: 03/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onVerifiedIdClaimValidationListener resource type

Namespace: microsoft.graph

A derived class of [authenticationEventListener](authenticationeventlistener.md) for the OnVerifiedIdClaimValidation event. This listener type enables organizations to configure event listeners that validate claims from Verified ID credential presentations during authentication flows.

When configured, this listener triggers during authentication when a user presents a Verified ID credential, allowing organizations to validate the presented claims against internal systems or business rules through a custom extension.

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods

This resource is part of a polymorphic collection managed by the [authenticationEventListener](authenticationeventlistener.md) base type. Operations are performed through the base type endpoints:

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md) collection|Get a list of authentication event listeners, including onVerifiedIdClaimValidationListener objects.|
|[Create](../api/identitycontainer-post-authenticationeventlisteners.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Create a new onVerifiedIdClaimValidationListener object.|
|[Get](../api/authenticationeventlistener-get.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Read the properties and relationships of an onVerifiedIdClaimValidationListener object.|
|[Update](../api/authenticationeventlistener-update.md)|[authenticationEventListener](../resources/authenticationeventlistener.md)|Update the properties of an onVerifiedIdClaimValidationListener object.|
|[Delete](../api/authenticationeventlistener-delete.md)|None|Delete an onVerifiedIdClaimValidationListener object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the authentication events flow. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions under which the listener should trigger, such as which applications or user actions should activate the event. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|displayName|String|A display name for the event listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onVerifiedIdClaimValidationHandler](../resources/onverifiedidclaimvalidationhandler.md)|Configuration for the handler to invoke if the OnVerifiedIdClaimValidation event resolves to this listener. The handler specifies which custom extension to call for claims validation.|
|id|String|Unique identifier for the event listener. Inherited from [entity](../resources/entity.md).|
|priority|Int32|The priority of the listener. Determines the order in which listeners are evaluated when an event has multiple listeners configured. Lower values have higher priority. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onVerifiedIdClaimValidationListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onVerifiedIdClaimValidationListener",
  "id": "String (identifier)",
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onVerifiedIdClaimValidationHandler"
  }
}
```
