---
title: "externalUsersSelfServiceSignUpEventsFlow resource type"
description: "Represents a self-service user flow for external identities within a Microsoft Entra workforce tenant or customer tenant."
author: "garrodonnell"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# externalUsersSelfServiceSignUpEventsFlow resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a self-service user flow for external identities within a Microsoft Entra workforce tenant or customer tenant. A user flow is implemented as a multi-event policy executing the specific events at specific points of user interaction.

Inherits from [authenticationEventsFlow](../resources/authenticationeventsflow.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List externalUsersSelfServiceSignUpEventsFlows](../api/externalusersselfservicesignupeventsflow-list.md)|[externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) collection|Get a list of the [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) objects and their properties.|
|[Get externalUsersSelfServiceSignUpEventsFlow](../api/externalusersselfservicesignupeventsflow-get.md)|[externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md)|Read the properties and relationships of an [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object.|
|[Update externalUsersSelfServiceSignUpEventsFlow](../api/externalusersselfservicesignupeventsflow-update.md)|[externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md)|Update the properties of an [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object.|
|[Delete externalUsersSelfServiceSignUpEventsFlow](../api/externalusersselfservicesignupeventsflow-delete.md)|None|Delete an [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|Optional. The conditions representing the context of the authentication request which is used to decide whether the events policy is invoked. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|description|String|Optional. The description of the events policy. Must be unique. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|displayName|String|Required. The display name for the events policy. Must be unique. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|
|id|String|The unique identifier for the entity. Read-only. Inherited from [entity](../resources/entity.md).|
|onAttributeCollection|[onAttributeCollectionHandler](../resources/onattributecollectionhandler.md)|The configuration for what to invoke when attributes are ready to be collected from the user.||
|onAttributeCollectionStart|[onAttributeCollectionStartHandler](../resources/onattributecollectionstarthandler.md)|The configuration for what to invoke when attribution collection has started.|
|onAttributeCollectionSubmit|[onAttributeCollectionSubmitHandler](../resources/onattributecollectionsubmithandler.md)|The configuration for what to invoke when attributes have been submitted at the end of attribution collection.|
|onAuthenticationMethodLoadStart|[onAuthenticationMethodLoadStartHandler](../resources/onauthenticationmethodloadstarthandler.md)|Required. The configuration for what to invoke when authentication methods are ready to be presented to the user. Must have at least one identity provider linked.|
|onInteractiveAuthFlowStart|[onInteractiveAuthFlowStartHandler](../resources/oninteractiveauthflowstarthandler.md)|Required. The configuration for what to invoke when an authentication flow is ready to be initiated. |
|onUserCreateStart|[onUserCreateStartHandler](../resources/onusercreatestarthandler.md)|The configuration for what to invoke during user creation.|
|priority|Int32|Optional. The priority to use for each individual event of the events policy. If multiple competing listeners for an event have the same priority, one is chosen and an error is silently logged. Default is 500. Inherited from [authenticationEventsFlow](../resources/authenticationeventsflow.md).|

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
  "onAttributeCollectionStart": {
    "@odata.type": "microsoft.graph.onAttributeCollectionStartHandler"
  },
  "onAttributeCollectionSubmit": {
    "@odata.type": "microsoft.graph.onAttributeCollectionSubmitHandler"
  },
  "onUserCreateStart": {
    "@odata.type": "microsoft.graph.onUserCreateStartHandler"
  }
}
```

