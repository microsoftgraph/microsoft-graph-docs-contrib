---
title: "Update authenticationFlowsPolicy"
description: "Update the Boolean selfServiceSignUp property of an authenticationFlowsPolicy object."
author: "linkhp"
ms.localizationpriority: high
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update authenticationFlowsPolicy

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the Boolean **selfServiceSignUp** property of an [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object. The properties **id**, **type**, and **description** cannot be modified.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.ReadWrite.AuthenticationFlows|
|Delegated (personal Microsoft account)|Not Supported|
|Application|Policy.ReadWrite.AuthenticationFlows|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/authenticationFlowsPolicy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, you can supply a JSON representation of the [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md) object (but is not required.)

The following table shows the properties that are required when you update the [authenticationFlowsPolicy](../resources/authenticationflowspolicy.md).

|Property|Type|Description|
|:---|:---|:---|
|selfServiceSignUp|[selfServiceSignUpAuthenticationFlowConfiguration](../resources/selfservicesignupauthenticationflowconfiguration.md)|Self-service sign-up configuration.|

## Response

If successful, this method returns a `204 No Content` response code and an empty response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationflowspolicy"
}
-->
```http
PATCH https://graph.microsoft.com/beta/policies/authenticationFlowsPolicy
Content-Type: application/json

{
  "selfServiceSignUp": {
    "isEnabled": true
  }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-authenticationflowspolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-authenticationflowspolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-authenticationflowspolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-authenticationflowspolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-authenticationflowspolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-authenticationflowspolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
``` http
HTTP/1.1 204 No Content
```


