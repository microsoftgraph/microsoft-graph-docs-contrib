---
title: "onAttributeCollectionSubmitListener resource type"
description: "A listener for the end of the user attribution collection stage of a sign up flow. This event is triggered when the user submits the attribute collection form."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 05/14/2024
---

# onAttributeCollectionSubmitListener resource type

Namespace: microsoft.graph

A listener for the end of the user attribution collection stage of a sign up flow. This event is triggered when the user submits the attribute collection form. 

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
|handler|[onAttributeCollectionSubmitHandler](../resources/onattributecollectionsubmithandler.md)|Configuration for what to invoke if the event resolves to this listener. |
|id|String|Identifier for this authenticationEventListener. Inherited from [entity](../resources/entity.md).|
|priority|Int32|The priority of this listener. Between 0 (lower priority) and 1000 (higher priority). Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.onAttributeCollectionSubmitListener",
  "baseType": "microsoft.graph.authenticationEventListener",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.onAttributeCollectionSubmitListener",
  "id": "String (identifier)",
  "displayName": "String",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "authenticationEventsFlowId": "String",
  "handler": {
    "@odata.type": "microsoft.graph.onAttributeCollectionSubmitHandler"
  }
}
```

## Related content

- [Custom authentication extensions for attribute collection start and submit events](/entra/identity-platform/custom-extension-attribute-collection)
- [OnAttributeCollectionSubmit event reference](/entra/identity-platform/custom-extension-onattributecollectionsubmit-reference)
