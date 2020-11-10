---
title: "Update authenticationAction"
description: "Update the properties of an authenticationAction object."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Update authenticationAction

Namespace: microsoft.graph

Update the properties of an authenticationAction object.

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

In the request body, supply a JSON representation of the [authenticationAction](../resources/authenticationaction.md) object.

The following table shows the properties that are required when you update the [invokeUserFlowAction](../resources/invokeuserflowaction.md).

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
