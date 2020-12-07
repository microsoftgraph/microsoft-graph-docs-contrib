---
title: "Update authenticationListener"
description: "Update the specified listener defined for an event in the authentication pipeline."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update authenticationListener

Namespace: microsoft.graph

Update the specified [authenticationListener](../resources/authenticationlistener.md) defined for an event in the authentication pipeline.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.ApplicationConfiguration|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.ReadWrite.ApplicationConfiguration|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
PATCH /identity/events/onSignupStart/{id}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [authenticationListener](../resources/authenticationlistener.md) object.

The following table shows the properties that are required when you update the [invokeUserFlowAction](../resources/invokeuserflowlistener.md).

|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|The priority of the action which is used for determining one out of multiple applicable actions.|
|sourceFilter|[authenticationSourceFilter](../resources/authenticationsourcefilter.md)|Filter based on the source of the authentication which is used to determine whether the action is executed or not.|
|userFlow|String|The identifier of the [b2xIdentityUserFlow](../resources/b2xidentityuserflow.md) object that will be invoked in this action.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "update_onsignupstart"
}
-->

``` http
PATCH https://graph.microsoft.com/beta/identity/events/onSignupStart/id
Content-Type: application/json

{
  "priority": 101
}
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
