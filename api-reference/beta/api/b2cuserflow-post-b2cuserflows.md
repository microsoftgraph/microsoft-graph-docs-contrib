---
title: "Create b2cUserFlow"
description: "Create a new b2cUserFlow object."
localization_priority: Normal
doc_type: apiPageType
author: "jkdouglas"
ms.prod: "microsoft-identity-platform"
---

# Create b2cUserFlow

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [b2cUserFlow](../resources/b2cuserflows.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|IdentityUserFlow.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|IdentityUserFlow.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* External Identity User Flow administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
POST /identity/b2cUserFlows
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, provide a JSON representation of a [b2xUserFlow](../resources/b2xuserflows.md). All the properties listed in the following table are required.

|Property|Type|Description|
|:---------------|:--------|:----------|
|id|String|The name of the user flow.|
|userFlowType|String|The type of user flow you are creating. This value will always be `signUpOrSignIn`.|
|userFlowTypeVersion|Float|The version of the user flow. This value will always be 1.|

## Response

If successful, this method returns a `201 Created` response code and [b2xUserFlow](../resources/b2xuserflows.md) object in the response body. If unsuccessful, a `4xx` error will be returned with specific details.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "create_b2xuserflow_from_b2xuserflows"
}
-->

``` http
POST https://graph.microsoft.com/beta/identity/b2cUserFlows
Content-type: application/json
Content-length: 154

{
    "id": "B2C_1_Customer",
    "userFlowType": "signUpOrSignIn",
    "userFlowTypeVersion": 1,
}
```

### Response

The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.B2CUserFlows"
} -->

```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "id": "B2C_1_Customer",
    "userFlowType": "signUpOrSignIn",
    "userFlowTypeVersion": 3
}
```
