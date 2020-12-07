---
title: "authenticationListener resource type"
description: "Defines the listener to evaluate during an authentication event."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationListener resource type

Namespace: microsoft.graph

Defines the listener to evaluate during an authentication event. An authenticationListener is abstract and is the base class of other listeners you can evaluate during an authentication event. You can invoke a user flow in the onSignUpStart authentication event contained in an [authenticationEventsPolicy](../resources/authenticationeventspolicy.md). To invoke a user flow, you use the [invokeUserFlowListener](../resources/invokeuserflowlistener.md) resource.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List onSignUpStart](../api/authenticationeventspolicy-list-onsignupstart.md)|[authenticationListener](../resources/authenticationlistener.md) collection|Get the collection of authenticationListener resources supported by the onSignupStart event.|
|[Create authenticationListener](../api/authenticationeventspolicy-post-onsignupstart.md)|[authenticationListener](../resources/authenticationlistener.md)|Create a new authenticationListener object for the onSignupStart event.|
|[Update authenticationListener](../api/authenticationlistener-update.md)|[authenticationListener](../resources/authenticationlistener.md)|Update the specified listener defined for the onSignupStart event in the authentication pipeline.|
|[Put authenticationListener](../api/authenticationlistener-put.md)|[authenticationListener](../resources/authenticationlistener.md)|Replace the properties of an authenticationListener object.|
|[Get authenticationListener](../api/authenticationlistener-get.md)|[authenticationListener](../resources/authenticationlistener.md)|Get the specified listener defined for the onSignupStart event in the authentication pipeline.|
|[Delete authenticationListener](../api/authenticationlistener-delete.md)|None|Delete the specified listener defined for the onSignupStart event in the authentication pipeline.|

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
  "@odata.type": "microsoft.graph.authenticationListener",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.authenticationListener",
  "id": "String (identifier)",
  "priority": "Integer",
  "sourceFilter": {
    "@odata.type": "microsoft.graph.authenticationSourceFilter"
  }
}
```
