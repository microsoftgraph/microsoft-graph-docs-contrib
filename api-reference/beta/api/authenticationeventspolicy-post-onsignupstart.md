---
title: "Create onSignupStart"
description: "Create a new authenticationAction object."
author: "jkdouglas"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# Create onSignupStart

Namespace: microsoft.graph

Create a new authenticationAction object.

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
POST /identity/events/onSignupStart
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [authenticationAction](../resources/authenticationaction.md) object.

The following table shows the properties that are required when you create the [invokeUserFlowAction](../resources/invokeuserflowaction.md).

|Property|Type|Description|
|:---|:---|:---|
|priority|Int32|The priority of the action that is used to determine one out of multiple applicable actions.|
|sourceFilter|[authenticationSourceFilter](../resources/authenticationsourcefilter.md)|Filter based on the source of the authentication that is used to determine whether the action is executed.|
|userFlow|[b2xIdentityUserFlow](../resources/b2xidentityuserflow.md)|The reference to the user flow object that is invoked in this action.|

## Response

If successful, this method returns a `201 Created` response code and an [authenticationAction](../resources/authenticationaction.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "create_authenticationaction_from_"
}
-->

``` http
POST https://graph.microsoft.com/beta/identity/events/onSignupStart
Content-Type: application/json

{
    "@odata.type": "#Microsoft.Graph.InvokeUserFlowAction",
    "priority": 101,
    "sourceFilter": {
        "includeApplications": [
            "1fc41a76-3050-4529-8095-9af8897cf63d"
        ]
    },
    "userFlow": {
        "id": "B2X_1_Partner"
    }
}
```

### Response

**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationAction"
}
-->

``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#identity/events/onSignupStart/Microsoft.Graph.InvokeUserFlowAction/$entity",
    "@odata.type": "#Microsoft.Graph.InvokeUserFlowAction",
    "id": "2be3336b-e3b4-44f3-9128-b6fd9ad39bb8",
    "priority": 101,
    "sourceFilter": {
        "includeApplications": [
            "1fc41a76-3050-4529-8095-9af8897cf63d"
        ]
    }
}
```
