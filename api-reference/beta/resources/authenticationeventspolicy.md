---
title: "authenticationEventsPolicy resource type"
description: "Authentication events are used to invoke user flows at specific points in the authentication flow."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 05/23/2024
---

# authenticationEventsPolicy resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource that specifies the events in the authentication experience, with each event further defining the available types of listeners that can be created for the event. Events are inherent to the authentication experience; this resource isn't user configurable.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List listeners](../api/authenticationeventspolicy-list-onsignupstart.md)|[authenticationListener](../resources/authenticationlistener.md) collection|Get the collection of authenticationListener resources supported by the onSignupStart event.|
|[Create listener](../api/authenticationeventspolicy-post-onsignupstart.md)|[authenticationListener](../resources/authenticationlistener.md)|Create a new authenticationListener object for the onSignupStart event.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the policy.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|onSignupStart|[authenticationListener](../resources/authenticationlistener.md) collection|A list of applicable actions to be taken on sign-up.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authenticationEventsPolicy",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.authenticationEventsPolicy",
  "id": "String (identifier)"
}
```
