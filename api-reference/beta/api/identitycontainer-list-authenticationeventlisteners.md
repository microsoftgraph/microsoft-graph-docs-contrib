---
title: "List authenticationEventListeners"
description: "Get a list of the authenticationEventListener objects and their properties."
author: "soneff"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List authenticationEventListeners
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [authenticationEventListener](../resources/authenticationeventlistener.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Delegated (personal Microsoft account)|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|
|Application|CustomAuthenticationExtension.Read.All, Application.Read.All, CustomAuthenticationExtension.ReadWrite.All, Policy.ReadWrite.AuthenticationFlows, Application.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/authenticationEventListeners
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationEventListener](../resources/authenticationeventlistener.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "list_authenticationeventlistener"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/authenticationEventListeners
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationEventListener)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```

