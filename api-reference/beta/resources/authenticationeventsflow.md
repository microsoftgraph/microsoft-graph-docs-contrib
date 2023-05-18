---
title: "authenticationEventsFlow resource type"
description: "An abstract entity that represents a multi-event policy used to orchestrate an authentication flow."
author: "nanguil"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# authenticationEventsFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Entity that represents a multi-event policy, that is, a **user flow**, and holds the handler configuration for multiple events. Each property of name *eventType* is optional and corresponds to the handler configuration on the event listener. This is a management level for the atomic authenticationEventListener that allows for managing of multiple listeners under the same priority and condition set. This provides a better managed view of checking which event listeners will be executed under a certain circumstance.

If no handler is set for an event, then this policy will not affect that event in any authentication, i.e. no listener will be created for that event.

Additionally, this entity works as an orchestration step for the various event listeners it manages. For each event listener managed by the entity, it will create, modify, or delete the event listener accordingly. This means on creation time, it will create multiple event listeners and handle any rollback scenarios for any failing requests.

This is an abstract type from which the [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object type is derived.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitycontainer-list-authenticationeventsflows.md)|[authenticationEventsFlow](../resources/authenticationeventsflow.md) collection|Retrieve a list of the [authenticationEventsFlow](../resources/authenticationeventsflow.md) objects and their properties. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are available.|
|[Create](../api/identitycontainer-post-authenticationeventsflows.md)|[authenticationEventsFlow](../resources/authenticationeventsflow.md)|Create a new [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are supported.|
|[Get](../api/authenticationeventsflow-get.md)|[authenticationEventsFlow](../resources/authenticationeventsflow.md)|Read the properties and relationships of an [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are available.|
|[Update](../api/authenticationeventsflow-update.md)|None|Update the properties of an [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are available.|
|[Delete](../api/authenticationeventsflow-delete.md)|None|Delete an [authenticationEventsFlow](../resources/authenticationeventsflow.md) object. Only objects of the [externalUserSelfServiceSignupEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) subtype are supported. |
|[List linked applications](../api/authenticationconditionsapplications-list-includeapplications.md)|[authenticationConditionApplication](../resources/authenticationconditionapplication.md) collection|List listeners associated with an external identities self-service sign-up user flow.|
|[Add linked application](../api/authenticationconditionsapplications-post-includeapplications.md)|None|List listeners associated with an external identities self-service sign-up user flow.|
|[Remove linked application](../api/authenticationconditionapplication-delete.md)|None|List listeners associated with an external identities self-service sign-up user flow.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the entity. Read-only. Inherited from [entity](../resources/entity.md). Auto-generated.|
|displayName|String|Required. The display name for the events policy.|
|description|String|The description of the events policy.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions representing the context of the authentication request which will be used to decide whether the events policy will be invoked.|
|priority|Int32|The priority to use for each individual event of the events policy. If multiple competing listeners for an event have the same priority, one is chosen and an error is silently logged. Defaults to 500.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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
  },
  "priority": "Integer"
}
```

