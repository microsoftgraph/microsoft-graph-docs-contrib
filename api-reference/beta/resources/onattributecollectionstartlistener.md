---
title: "onAttributeCollectionStartListener resource type"
description: "A listener for the start of the user attribute collection stage of a sign up flow represented by an externalUsersSelfServiceSignUpEventsFlow object."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 04/08/2025
---

# onAttributeCollectionStartListener resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A listener for the start of the user attribute collection stage of a sign up flow represented by an [externalUsersSelfServiceSignUpEventsFlow](../resources/externalusersselfservicesignupeventsflow.md) object. This event is triggered when the user clicks the sign up button.

Inherits from [authenticationEventListener](../resources/authenticationeventlistener.md).

## Methods
None.

For the list of API operations for managing this resource type, see the [authenticationEventListener](../resources/authenticationeventlistener.md) resource type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authenticationEventsFlowId|String|The identifier of the authenticationEventsFlow object. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|displayName|String|The display name of the listener. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|
|handler|[onAttributeCollectionStartHandler](../resources/onattributecollectionstarthandler.md)|Configuration for what to invoke if the event resolves to this listener.|
|id|String|Identifier for this authenticationEventListener. Inherited from [entity](../resources/entity.md).|
|priority|Int32|The priority of this handler. Between 0 (lower priority) and 1000 (higher priority). Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onAttributeCollectionStartListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionStartListener",
  "id": "String (identifier)",
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionStartHandler"
  }
}
```

## Related content

- [Custom authentication extensions for attribute collection start and submit events](/entra/identity-platform/custom-extension-attribute-collection)
- [OnAttributeCollectionStart event reference](/entra/identity-platform/custom-extension-onattributecollectionstart-reference)
