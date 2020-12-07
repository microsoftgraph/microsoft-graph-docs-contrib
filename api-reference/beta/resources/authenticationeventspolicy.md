---
title: "authenticationEventsPolicy resource type"
description: "Authentication events are used to invoke user flows at specific points in the authentication flow."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# authenticationEventsPolicy resource type

Namespace: microsoft.graph

A policy that defines events in an authentication pipeline, with each event further defining the appropriate actions.

By assigning [invokeUserFlowListener](../resources/invokeuserflowlistener.md) to an onSignUpStart event, you are selecting an application to be associated with a user flow, therefore enabling a [self-service sign up](https://docs.microsoft.com/azure/active-directory/external-identities/self-service-sign-up-overview) process on it. Once the authentication event for invoking a user flow is created, users who go to that application will be able to initiate a sign-up flow that provisions a guest account.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List onSignUpStart](../api/authenticationeventspolicy-list-onsignupstart.md)|[authenticationListener](../resources/authenticationlistener.md) collection|Get the collection of authenticationListener resources supported by the onSignupStart event.|
|[Create authenticationListener](../api/authenticationeventspolicy-post-onsignupstart.md)|[authenticationListener](../resources/authenticationlistener.md)|Create a new authenticationListener object for the onSignupStart event.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the policy.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|onSignupStart|[authenticationListener](../resources/authenticationlistener.md) collection|A list of applicable actions to be taken on sign-up.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationEventsPolicy",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.authenticationEventsPolicy",
  "id": "String (identifier)"
}
```
