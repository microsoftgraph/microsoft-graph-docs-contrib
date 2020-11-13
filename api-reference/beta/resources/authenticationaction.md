---
title: "authenticationAction resource type"
description: "Defines the action to take during an authentication event."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationAction resource type

Namespace: microsoft.graph

Defines the action to take during an authentication event. An authenticationAction is abstract and is the base class of other actions you can take during an authentication event. You can invoke a user flow in the onSignUpStart authentication event contained in an [authenticationEventsPolicy](../resources/authenticationeventspolicy.md). To invoke a user flow, you use the [invokeUserFlowAction](../resources/invokeuserflowaction.md) resource.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List onSignUpStart](../api/authenticationeventspolicy-list-onsignupstart.md)|[authenticationAction](../resources/authenticationaction.md) collection|Get the collection of authenticationAction resources supported by the onSignupStart event.|
|[Create authenticationAction](../api/authenticationeventspolicy-post-onsignupstart.md)|[authenticationAction](../resources/authenticationaction.md)|Create a new authenticationAction object for the onSignupStart event.|
|[Update authenticationAction](../api/authenticationaction-update.md)|[authenticationAction](../resources/authenticationaction.md)|Update the properties of an authenticationAction object.|
|[Get authenticationAction](../api/authenticationaction-get.md)|[authenticationAction](../resources/authenticationaction.md)|Read the properties and relationships of an authenticationAction object.|
|[Delete authenticationAction](../api/authenticationaction-delete.md)|None|Delete an authenticationAction from an event supported by an authenticationEventsPolicy.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the action.|
|priority|Int32|The priority of the action that is used to determine one out of multiple applicable actions.|
|sourceFilter|[authenticationSourceFilter](../resources/authenticationsourcefilter.md)|Filter based on the source of the authentication that is used to determine whether the action is executed.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationAction",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.authenticationAction",
  "id": "String (identifier)",
  "priority": "Integer",
  "sourceFilter": {
    "@odata.type": "microsoft.graph.authenticationSourceFilter"
  }
}
```
