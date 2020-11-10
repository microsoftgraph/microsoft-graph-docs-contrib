---
title: "invokeUserFlowAction resource type"
description: "An action that is used to invoke a user flow during an authentication event."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: resourcePageType
---

# invokeUserFlowAction resource type

Namespace: microsoft.graph

An action that is used to invoke a user flow during an authentication event. Authentication events are controlled by the [authenticationEventsPolicy](../resources/authenticationeventspolicy.md).

Inherits from [authenticationAction](../resources/authenticationaction.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the action. Inherited from [authenticationAction](../resources/authenticationaction.md)|
|priority|Int32|The priority of the action that is used to determine one out of multiple applicable actions. Inherited from [authenticationAction](../resources/authenticationaction.md)|
|sourceFilter|[authenticationSourceFilter](../resources/authenticationsourcefilter.md)|Filter based on the source of the authentication that is used to determine whether the action is executed. Inherited from [authenticationAction](../resources/authenticationaction.md)|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|userFlow|[b2xIdentityUserFlow](../resources/b2xidentityuserflow.md)|The user flow that is invoked if this action is executed.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.invokeUserFlowAction",
  "baseType": "microsoft.graph.authenticationAction",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.invokeUserFlowAction",
  "id": "String (identifier)",
  "priority": "Integer",
  "sourceFilter": {
    "@odata.type": "microsoft.graph.authenticationSourceFilter"
  },
  "userFlow": {
    "@odata.type": "microsoft.graph.b2xIdentityUserFlow"
  }
}
```
