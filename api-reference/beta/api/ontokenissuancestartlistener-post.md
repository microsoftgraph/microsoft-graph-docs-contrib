---
title: "Create onTokenIssuanceStartListener"
description: "Create a new onTokenIssuanceStartListener object."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Create onTokenIssuanceStartListener
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [onTokenIssuanceStartListener](../resources/onTokenIssuanceStartListener.md) object.

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
POST /identity/onTokenIssuanceStartListener
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [onTokenIssuanceStartListener](../resources/onTokenIssuanceStartListener.md) object.

You can specify the following properties when creating an **onTokenIssuanceStartListener**.

|Property|Type|Description|
|:---|:---|:---|
|priority|Int32| The priority of this handler. Between 0 (lower priority) and 1000 (higher priority). Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Required.|
|conditions|[authenticationConditions](../resources/authenticationconditions.md)|The conditions on which this authenticationEventListener should trigger. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Optional.|
|authenticationEventsFlowId|String|The identifier of the authentication events flow. Inherited from [authenticationEventListener](../resources/authenticationeventlistener.md). Optional.|
|handler|[onTokenIssuanceStartHandler](../resources/ontokenissuancestarthandler.md)|The handler to invoke when conditions are met for this onTokenIssuanceStartListener. Optional.|



## Response

If successful, this method returns a `201 Created` response code and an [onTokenIssuanceStartListener](../resources/onTokenIssuanceStartListener.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_ontokenissuancestartlistener_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/identity/onTokenIssuanceStartListener
Content-Type: application/json
Content-length: 312

{
  "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
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
  "@odata.type": "microsoft.graph.onTokenIssuanceStartListener"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.onTokenIssuanceStartListener",
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

