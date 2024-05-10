---
title: "externalUsersSelfServiceSignUpEventsFlow resource type"
description: "Represents a self-service user flow for external identities within a Microsoft Entra workforce tenant or customer tenant."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# externalUsersSelfServiceSignUpEventsFlow resource type

Namespace: microsoft.graph

Represents a self-service user flow for external identities within a Microsoft Entra workforce tenant or customer tenant. A user flow is implemented as a multi-event policy executing the specific events at specific points of user interaction.

Inherits from [authenticationEventsFlow](../resources/authenticationeventsflow.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-authenticationeventsflows.md)|[authenticationEventsFlow](../resources/authenticationeventsflow.md) collection|Retrieve a list of the [authenticationEventsFlow](../resources/authenticationeventsflow.md) objects and their properties.  |
|[Create](../api/identitycontainer-post-authenticationeventsflows.md)|[externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md)|Create an external identities self-service sign-up user flow.|
|[Get](../api/authenticationeventsflow-get.md)|[externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md)|Retrieve the properties and relationships of an external identities self-service sign-up user flow.|
|[Update](../api/authenticationeventsflow-update.md)|None|Update the properties of an external identities self-service sign-up user flow|
|[Delete](../api/authenticationeventsflow-delete.md)|None|Delete an external identities self-service sign-up user flow.|
|[List linked applications](../api/authenticationconditionsapplications-list-includeapplications.md)|[authenticationConditionApplication](../resources/authenticationconditionapplication.md) collection|List listeners associated with an external identities self-service sign-up user flow.|
|[Add linked application](../api/authenticationconditionsapplications-post-includeapplications.md)|None|List listeners associated with an external identities self-service sign-up user flow.|
|[Remove linked application](../api/authenticationconditionapplication-delete.md)|None|List listeners associated with an external identities self-service sign-up user flow.|
|[List identity providers](../api/onauthenticationmethodloadstartexternalusersselfservicesignup-list-identityproviders.md)|[identityProvider](../resources/identityproviderbase.md) collection|List identity provider selections associated with an external identities self-service sign-up user flow.|
|[Add identity providers](../api/onauthenticationmethodloadstartexternalusersselfservicesignup-post-identityproviders.md)|None|Add an identity provider to an external identities self-service sign-up user flow.|
|[Remove identity providers](../api/onauthenticationmethodloadstartexternalusersselfservicesignup-delete-identityproviders.md)|None|Remove an identity provider from an external identities self-service sign-up user flow.|
|[List attributes](../api/onattributecollectionexternalusersselfservicesignup-list-attributes.md)|[identityUserFlowAttribute](../resources/identityuserflowattribute.md) collection|Retrieve all user attributes associated with an external identities self-service sign-up user flow.|
|[Add an attribute](../api/onattributecollectionexternalusersselfservicesignup-post-attributes.md)|None|Retrieve all user attributes associated with an external identities self-service sign-up user flow.|
|[Delete an attribute](../api/onattributecollectionexternalusersselfservicesignup-delete-attributes.md)|None|Remove a user flow attribute from an external identities self-service sign-up user flow.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the entity. Read-only. Inherited from [entity](../resources/entity.md).|
|displayName|String|Required. The display name for the events policy. Must be unique. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|description|String|Optional. The description of the events policy. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Optional. The conditions representing the context of the authentication request which is used to decide whether the events policy is invoked. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|onInteractiveAuthFlowStart|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|Required. The configuration for what to invoke when an authentication flow is ready to be initiated. |
|onAttributeCollection|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|The configuration for what to invoke when attributes are ready to be collected from the user.|
|onAuthenticationMethodLoadStart|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked.|
|onUserCreateStart|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|The configuration for what to invoke during user creation.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

