---
title: "Get b2xUserFlows"
description: "Retrieve the properties and relationships a b2xUserFlow."
localization_priority: Normal
doc_type: apiPageType
author: "jodougla"
ms.prod: "microsoft-identity-platform"
---

# Get identityProvider

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of a [b2xUserFlow](../resources/b2xuserflows.md).

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
GET /identity/b2xUserFlows/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a JSON representation of the [userFlowAttribute](../resources/b2xuserflows.md) in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_b2xUserFlows"
}
-->

``` http
GET https://graph.microsoft.com/beta/identity/userFlowAttributes/{id}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.B2XUserFlows"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "id": "B2X_1_PartnerSignUp",
    "userFlowType": "signUpOrSignIn",
    "userFlowTypeVersion": 1
}
```
