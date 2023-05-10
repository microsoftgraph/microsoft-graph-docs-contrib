---
title: "Create authenticationEventListener"
description: "Create a new authenticationEventListener object."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create authenticationEventListener
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [authenticationEventListener](../resources/authenticationeventlistener.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Delegated (personal Microsoft account)|CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Application|CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identity/authenticationEventListeners
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [authenticationEventListener](../resources/authenticationeventlistener.md) object.

You can specify the following properties when creating an **authenticationEventListener**.

|Property|Type|Description|
|:---|:---|:---|
|priority|Int32| The priority of this handler. Between 0 (lower priority) and 1000 (higher priority). Required.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Optional.|
|authenticationEventsFlowId|String|The identifier of the authentication events flow. Optional.|


## Response

If successful, this method returns a `201 Created` response code and an [authenticationEventListener](../resources/authenticationeventlistener.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_authenticationeventlistener_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/authenticationEventListeners
Content-Type: application/json
Content-length: 312

{
  "@odata.type": "#microsoft.graph.authenticationEventListener",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "tags": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "authenticationEventsFlowId": "String"
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationEventListener"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.authenticationEventListener",
  "id": "aa325b11-0ffe-ff80-0572-1b796dc7012a",
  "priority": "Integer",
  "conditions": {
    "@odata.type": "microsoft.graph.authenticationConditions"
  },
  "tags": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "authenticationEventsFlowId": "String"
}
```

