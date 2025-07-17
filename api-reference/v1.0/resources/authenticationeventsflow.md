---
title: "authenticationEventsFlow resource type"
description: "An abstract entity that represents a multi-event policy used to orchestrate an authentication flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# authenticationEventsFlow resource type

Namespace: microsoft.graph

Represents a multi-event policy, that is, a **user flow**, and holds the handler configuration for multiple events. Each property of name *eventType* is optional and corresponds to the handler configuration on the event listener. This resource allows for managing multiple [authenticationEventListener](../resources/authenticationeventlistener.md) objects under the same priority and condition set. This resource provides a better-managed view of checking which event listeners are executed under a certain circumstance.

If no handler is set for an event, then this policy doesn't effect that event in any authentication, and no listener is created for that event.

Additionally, this entity works as an orchestration step for the various event listeners it manages. For each event listener that it manages, it creates, modifies, or deletes the event listener accordingly. This means on creation time, it creates multiple event listeners and manages any rollback scenarios for any failing requests.

This resource is an abstract type from which the [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object type is derived.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-authenticationeventsflows.md)|[authenticationEventsFlow](../resources/authenticationeventsflow.md) collection|Retrieve a list of the [authenticationEventsFlow](../resources/authenticationeventsflow.md) objects and their properties. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are available.|
|[Create](../api/identitycontainer-post-authenticationeventsflows.md)|[authenticationEventsFlow](../resources/authenticationeventsflow.md)|Create a new [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are supported.|
|[Get](../api/authenticationeventsflow-get.md)|[authenticationEventsFlow](../resources/authenticationeventsflow.md)|Read the properties and relationships of an [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are available.|
|[Update](../api/authenticationeventsflow-update.md)|None|Update the properties of an [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are available.|
|[Delete](../api/authenticationeventsflow-delete.md)|None|Delete an [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are supported. |
|**Identity providers in a user flow**|||
|[List](../api/onauthenticationmethodloadstartexternalusersselfservicesignup-list-identityproviders.md)|[identityProviderBase](../resources/identityproviderbase.md) collection|Get the identity providers that are defined for an external identities self-service sign-up user flow that's represented by an **externalUsersSelfServiceSignupEventsFlow** object type.|
|[Add](../api/onauthenticationmethodloadstartexternalusersselfservicesignup-post-identityproviders.md)|None|Add an identity provider to an external identities self-service sign-up user flow that's represented by an **externalUsersSelfServiceSignupEventsFlow** object type. The identity provider must first be configured in the tenant.|
|[Remove](../api/onauthenticationmethodloadstartexternalusersselfservicesignup-delete-identityproviders.md)|None|Remove an identity provider from an external identities self-service sign-up user flow that's represented by an **externalUsersSelfServiceSignupEventsFlow** object type.|
|**User flow attributes**|||
|[List](../api/identityuserflowattribute-list.md)|identityUserFlowAttributes collection|Retrieve all built-in and custom user flow attributes.|
|[Create](../api/identityuserflowattribute-post.md)|identityUserFlowAttribute|Create a new custom user flow attribute.|
|[Get](../api/identityuserflowattribute-get.md) |identityUserFlowAttribute|Retrieve properties of a user flow attribute.|
|[Update](../api/identityuserflowattribute-update.md)|None|Update a custom user flow attribute.|
|[Delete](../api/identityuserflowattribute-delete.md)|None|Delete a custom user flow attribute.|
|[List attributes in a user flow](../api/onattributecollectionexternalusersselfservicesignup-list-attributes.md)|None|Get the collection of **identityUserFlowAttribute** objects associated with an external identities self-service sign-up user flow that's represented by an **externalUsersSelfServiceSignupEventsFlow** object.|
|[Add attribute to a user flow](../api/onattributecollectionexternalusersselfservicesignup-post-attributes.md)|None|Add an **identityUserFlowAttribute** object associated with an external identities self-service sign-up user flow that's represented by an **externalUsersSelfServiceSignupEventsFlow** object.|
|[Remove attribute from a user flow](../api/onattributecollectionexternalusersselfservicesignup-delete-attributes.md)|None|Remove an **identityUserFlowAttribute** object associated with an external identities self-service sign-up user flow that's represented by an **externalUsersSelfServiceSignupEventsFlow** object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the entity. Read-only. Inherited from [entity](../resources/entity.md). Autogenerated.|
|displayName|String|Required. The display name for the events policy.|
|description|String|The description of the events policy.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions representing the context of the authentication request that's used to decide whether the events policy is invoked. <br/><br/> Supports `$filter` (`eq`). See [support for filtering on user flows](#support-for-filtering-on-user-flows) for syntax information.|

### Support for filtering on user flows

+ Filter on identityProviders: `?$filter=microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/any(idp:idp/id eq '{identityProvider-id}')`
+ Filter on attributes: `?$filter=microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/any(attribute:attribute/id eq '{attribute-ID}')`
+ Filter on linked applications: `?$filter=microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications/any(appId:appId/appId eq '{appId}')`

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationEventsFlow",
  "baseType": "microsoft.graph.entity",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authenticationEventsFlow",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  }
}
```

