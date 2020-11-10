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

Authentication events are used to invoke actions at specific points in the authentication flow. By assigning [invokeUserFlowAction](../resources/invokeuserflowaction.md) to an authenticationEventsPolicy, you are selecting an application to be associated with a user flow, therefore enabling a [self-service sign up](https://docs.microsoft.com/azure/active-directory/external-identities/self-service-sign-up-overview) process on it. Once the authentication event for invoking a user flow is created, users who go to that application will be able to initiate a sign-up flow that provisions a guest account.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get events](../api/authenticationeventspolicy-get.md)|[authenticationEventsPolicy](../resources/authenticationeventspolicy.md)|Read the properties and relationships of an [authenticationEventsPolicy](../resources/authenticationeventspolicy.md) object.|
|[List authenticationAction](../api/authenticationaction-list.md)|[authenticationAction](../resources/authenticationaction.md) collection|Get the authenticationAction resources from the onSignupStart navigation property.|
|[Create authenticationAction](../api/authenticationaction-create.md)|[authenticationAction](../resources/authenticationaction.md)|Create a new authenticationAction object.|
|[Get authenticationAction](../api/authenticationaction-get.md)|[authenticationAction](../resources/authenticationaction.md)|Read the properties and relationships of an [authenticationAction](../resources/authenticationaction.md) object.|
|[Update authenticationAction](../api/authenticationaction-update.md)|[authenticationAction](../resources/authenticationaction.md)|Update the properties of an onSignupStart object.|
|[Remove authenticationAction](../api/authenticationaction-remove.md)|None|Delete an [authenticationAction](../resources/authenticationaction.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the policy.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|onSignupStart|[authenticationAction](../resources/authenticationaction.md) collection|A list of applicable actions to be taken on sign-up.|

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
