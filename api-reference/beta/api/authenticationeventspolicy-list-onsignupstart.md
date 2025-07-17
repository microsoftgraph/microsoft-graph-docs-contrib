---
title: "List onSignUpStart listeners"
description: "Get the collection of authenticationListener resources supported by the onSignupStart event."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 04/05/2024
---

# List onSignUpStart listeners

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the collection of authenticationListener resources supported by the onSignupStart event. The onSignUpStart event supports the [invokeUserFlowListener](../resources/invokeuserflowlistener.md) type.

When an [invokeUserFlowListener](../resources/invokeuserflowlistener.md) is assigned to an onSignUpStart event, an application is associated with a user flow, therefore enabling a [self-service sign up](/azure/active-directory/external-identities/self-service-sign-up-overview) process on it. Once the authentication event for invoking a user flow is created, users who go to that application will be able to initiate a sign-up flow that provisions a guest account.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationeventspolicy_list_onsignupstart" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationeventspolicy-list-onsignupstart-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /identity/events/onSignupStart
```

## Optional query parameters

This method supports the `$expand` OData query parameter to expand the details of an invokeUserFlowListener. See below for an example. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationListener](../resources/authenticationlistener.md) objects in the response body.

## Examples

### Example 1: List authenticationListeners for the onSignUpStart event

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_authenticationlistener"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/events/onSignupStart
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationListener)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/events/onSignUpStart",
  "value": [
    {
      "@odata.type": "#microsoft.graph.invokeUserFlowListener",
      "id": "2adb5c12-5c12-2adb-125c-db2a125cdb2a",
      "priority": 101,
      "sourceFilter": {
        "includeApplications": [
            "3dfff01b-0afb-4a07-967f-d1ccbd81102a"
        ]
      }
    },
    {
      "@odata.type": "#Microsoft.Graph.InvokeUserFlowListener",
      "id": "0a09997f-fa0c-4f3c-9d02-76762ac069c8",
      "priority": 100,
      "sourceFilter": {
          "includeApplications": [
              "b0e1638f-4c39-4cd1-82b3-91d1caef65f8"
        ]
      }
    }
  ]
}
```

### Example 2: Expand invokeUserFlowListeners in authenticationListeners for the onSignUpStart event

The following example lists the listeners defined for the onSignupStart event, and for each listener, expands the user flow that is invoked.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "list_authenticationlistener_invokeuserflowlistener"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/events/onSignupStart?$expand=microsoft.graph.invokeUserFlowListener/userFlow
```

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.invokeUserFlowListener)"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/events/onSignUpStart(microsoft.graph.invokeUserFlowListener/userFlow())/$entity",
  "value": [
    {
      "@odata.type": "#microsoft.graph.invokeUserFlowListener",
      "id": "2adb5c12-5c12-2adb-125c-db2a125cdb2a",
      "priority": 101,
      "sourceFilter": {
        "includeApplications": [
            "3dfff01b-0afb-4a07-967f-d1ccbd81102a"
        ]
      },
      "userFlow": {
            "id": "B2X_1_Partner",
            "userFlowType": "signUpOrSignIn",
            "userFlowTypeVersion": 1
      }
    },
    {
      "@odata.type": "#microsoft.graph.InvokeUserFlowListener",
      "id": "0a09997f-fa0c-4f3c-9d02-76762ac069c8",
      "priority": 100,
      "sourceFilter": {
        "includeApplications": [
            "b0e1638f-4c39-4cd1-82b3-91d1caef65f8"
        ]
      },
      "userFlow": {
            "id": "B2X_1_Partner",
            "userFlowType": "signUpOrSignIn",
            "userFlowTypeVersion": 1
      }
    }
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "List onSignUpStart",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
    "Error: listauthenticationlistenerinvokeuserflowlistener/container/userFlow/userFlowTypeVersion:
      Expected type Single but actual was Int64. Property: userFlowTypeVersion, actual value: '1'",
    "Error: listauthenticationlistenerinvokeuserflowlistener/container/userFlow/userFlowTypeVersion:
      Expected type Single but actual was Int64. Property: userFlowTypeVersion, actual value: '1'"
  ]
}-->
