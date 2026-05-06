---
title: "onVerifiedIdClaimValidationListener resource type"
description: "Represents an event listener for the onVerifiedIdClaimValidation authentication event, used for validating claims from Verified ID credential presentations."
author: "vbogomaz"
ms.date: 03/05/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# onVerifiedIdClaimValidationListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an [event listener](../resources/authenticationeventlistener.md) for the Verified ID claim validation step in the authentication flow. This listener allows organizations to validate claims from Verified ID credential presentations for specific applications by invoking custom logic that checks the claims against expected values.

When a user presents a Verified ID credential during sign-in, this listener evaluates the configured conditions to determine whether to invoke the handler for the authentication event.

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
|handler|[onVerifiedIdClaimValidationHandler](../resources/onverifiedidclaimvalidationhandler.md)|Configuration for the handler to invoke when this listener is triggered. For Verified ID claim validation scenarios, this is typically an [onVerifiedIdClaimValidationCustomExtensionHandler](../resources/onverifiedidclaimvalidationcustomextensionhandler.md).|
|id|String|Unique identifier for the authentication event listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|priority|Int32|Priority of this listener relative to other listeners for the same event. Lower values indicate higher priority. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

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
