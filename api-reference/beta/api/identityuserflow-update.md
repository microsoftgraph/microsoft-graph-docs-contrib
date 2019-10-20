---
title: "Update identityuserflow"
description: "Update the properties of identityuserflow object."
localization_priority: Normal
author: "valnav"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# Update identityuserflow

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of identityuserflow object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | IdentityUserFlow.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | IdentityUserFlow.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PATCH /identity/userFlows/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance, don't include existing values that haven't changed.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|userFlowType|string| Possible values are: `signUp`, `signIn`, `signUpOrSignIn`, `passwordReset`, `profileUpdate`, `resourceOwner`, `unknownFutureValue`.|
|userFlowTypeVersion|Single||

## Response

If successful, this method returns a `200 OK` response code and an updated [identityUserFlow](../resources/identityuserflow.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_identityuserflow"
}-->

```http
PATCH https://graph.microsoft.com/beta/identity/userFlows/{id}
Content-type: application/json

{
  "userFlowType": "userFlowType-value",
  "userFlowTypeVersion": "userFlowTypeVersion-value"
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.identityUserFlow"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "id": "id-value",
  "userFlowType": "userFlowType-value",
  "userFlowTypeVersion": "userFlowTypeVersion-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update identityuserflow",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->