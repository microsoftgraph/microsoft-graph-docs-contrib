---
title: "List b2cUserFlows"
description: "Retrieve a list of b2cUserFlow objects."
localization_priority: Normal
doc_type: apiPageType
author: "jkdouglas"
ms.prod: "microsoft-identity-platform"
---

# List b2cUserFlows

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [b2cUserFlow](../resources/b2cuserflows.md) objects.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityUserFlow.Read.All, IdentityUserFlow.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityUserFlow.Read.All, IdentityUserFlow.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* External Identity User Flow administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /identity/b2cUserFlows
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [b2cUserFlow](../resources/b2cuserflows.md)  objects in the response body.

## Example

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_b2cUserFlows"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/b2cUserFlows
```

### Response

The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.B2CUserFlows",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identity/b2cUserFlows",
    "value": [
      {
          "id": "B2C_1_CustomerSignUp",
          "userFlowType": "signUp",
          "userFlowTypeVersion": 1

      },
      {
          "id": "B2X_1_CustomerSignIn",
          "userFlowType": "signIn",
          "userFlowTypeVersion": 1
      },
    ]
}
```
