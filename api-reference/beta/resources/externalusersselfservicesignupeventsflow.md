---
title: "externalUsersSelfServiceSignUpEventsFlow resource type"
description: "Represents a self-service user flow for external identities"
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# externalUsersSelfServiceSignUpEventsFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a self-service user flow for external identities within an Azure AD workforce tenant or customer tenant.

A user flow is implemented as a multi-event policy executing the following events:
onInteractiveAuthFlowStart
onAuthentictionMethodLoadStart
onAttributeCollection
onUserCreateStart

Inherits from [authenticationEventsFlow](../resources/authenticationeventsflow.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-authenticationeventsflows.md)|[authenticationEventsFlow](../resources/authenticationeventsflow.md) collection|Retrieve a list of the [authenticationEventsFlow](../resources/authenticationeventsflow.md) objects and their properties. There is no way to retrieve only the External Identities User Flows |
|[Create](../api/identitycontainer-post-authenticationeventsflows.md)|[externalUserSelfServiceSignupEventsFlow](../resources/externaluserselfservicesignupeventsflow.md)|Create an External Identities Self-Service-Sign-up User Flow|
|[Get](../api/authenticationeventsflow-get.md)|[externalUserSelfServiceSignupEventsFlow](../resources/externaluserselfservicesignupeventsflow.md)|Retrieve the properties and relationships of an External Identities Self-Service-Sign-up User Flow|
|[Update](../api/authenticationeventsflow-update.md)|None|Update the properties of an External Identities Self-Service-Sign-up User Flow|
|[Delete](../api/authenticationeventsflow-delete.md)|None|Delete an External Identities Self-Service-Sign-up User Flow|
|[List identity providers]()|None|List identity provider selections associated with an External Identities Self-Service-Sign-up User Flow|
|[Update identity providers]()|None|Update Identity Provider (Email Accounts) selection in an External Identities Self-Service-Sign-up User Flow|
|[Remove identity providers]()|None|Remove Identity Provider (Email Accounts) selection in an External Identities Self-Service-Sign-up User Flow|
|[List attributes in a user flow]()|[identityUserFlowAttribute](../resources/identityuserflowattribute.md) collection|Retrieve all user attributes associated with an External Identities Self-Service-Sign-up User Flow|
|[Add an attribute to a user flow]()|None|Retrieve all user attributes associated with an External Identities Self-Service-Sign-up User Flow|
|[Delete an attribute to a user flow]()|None|Remove a user flow attribute from an External Identities Self-Service-Sign-up User Flow|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the entity. Read-only. Inherited from [entity](../resources/entity.md).|
|displayName|String|Required. The display name for the events policy. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|description|String|Optional. The description of the events policy. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions representing the context of the authentication request which will be used to decide whether the events policy will be invoked. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|priority|Int32|The priority to use for each individual event of the events policy. If multiple competing listeners for an event have the same priority, one is chosen and an error is silently logged. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|onInteractiveAuthFlowStart|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|Required. The configuration for what to invoke for the onInteractiveAuthFlowStart event. |
|onAuthenticationMethodLoadStart|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|Required. The configuration for what to invoke for the onAuthenticationMethodLoadStart event. Must have at least one identity provider linked.|
|onAttributeCollection|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|The configuration for what to invoke for the onAttributeCollection event.|
|onUserCreateStart|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|The configuration for what to invoke for the onUserCreateStart event.|


## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
  "baseType": "microsoft.graph.authenticationEventsFlow",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalUsersSelfServiceSignUpEventsFlow",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "priority": "Integer",
  "onInteractiveAuthFlowStart": {
    "@odata.type": "microsoft.graph.onInteractiveAuthFlowStartHandler"
  },
  "onAuthenticationMethodLoadStart": {
    "@odata.type": "microsoft.graph.onAuthenticationMethodLoadStartHandler"
  },
  "onAttributeCollection": {
    "@odata.type": "microsoft.graph.onAttributeCollectionHandler"
  },
  "onUserCreateStart": {
    "@odata.type": "microsoft.graph.onUserCreateStartHandler"
  }
}
```

