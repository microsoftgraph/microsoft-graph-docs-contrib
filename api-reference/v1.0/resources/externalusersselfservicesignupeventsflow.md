---
title: "externalUsersSelfServiceSignUpEventsFlow resource type"
description: "Represents a self-service user flow for external identities within a Microsoft Entra External ID in workforce or external tenants."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 08/06/2024
---

# externalUsersSelfServiceSignUpEventsFlow resource type

Namespace: microsoft.graph

Represents a self-service user flow for external identities within a Microsoft Entra External ID in workforce or external tenants. A user flow is implemented as a multi-event policy executing the specific events at specific points of user interaction.

Inherits from [authenticationEventsFlow](../resources/authenticationeventsflow.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [authenticationEventsFlow resource type](../resources/authenticationeventsflow.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the entity. Read-only. Inherited from [entity](../resources/entity.md).|
|displayName|String|Required. The display name for the events policy. Must be unique. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|description|String|Optional. The description of the events policy. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Optional. The conditions representing the context of the authentication request which is used to decide whether the events policy is invoked. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|onInteractiveAuthFlowStart|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|Required. The configuration for what to invoke when an authentication flow is ready to be initiated. |
|onAttributeCollection|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|The configuration for what to invoke when attributes are ready to be collected from the user.|
|onAuthenticationMethodLoadStart|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked. <br/><br/> Supports `$filter` (`eq`). See [support for filtering on user flows](#support-for-filtering-on-user-flows) for syntax information. |
|onUserCreateStart|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|The configuration for what to invoke during user creation.|

### Support for filtering on user flows

- Filter on identityProviders: `?$filter=microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAuthenticationMethodLoadStart/microsoft.graph.onAuthenticationMethodLoadStartExternalUsersSelfServiceSignUp/identityProviders/any(idp:idp/id eq '{identityProvider-id}')`
- Filter on attributes: `?$filter=microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/onAttributeCollection/microsoft.graph.onAttributeCollectionExternalUsersSelfServiceSignUp/attributes/any(attribute:attribute/id eq '{attribute-ID}')`
- Filter on linked applications: `?$filter=microsoft.graph.externalUsersSelfServiceSignUpEventsFlow/conditions/applications/includeApplications/any(appId:appId/appId eq '{appId}')`

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

