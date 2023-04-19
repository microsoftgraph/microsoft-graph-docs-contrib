---
title: "List combinationConfigurations"
description: "Get the authenticationCombinationConfiguration objects for an authentication strength policy."
author: "mmcla"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List combinationConfigurations
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) objects for an [authentication strength policy](../resources/authenticationstrengthpolicy.md). authenticationCombinationConfiguration represents requirements placed on specific authentication method combinations that require specified variants of those authentication methods to be used when authenticating. Currently, only [fido2combinationConfigurations](../resources/fido2combinationconfiguration.md) objects are supported.

authenticationCombinationConfiguration objects are supported only for custom authentication strengths.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Policy.Read.All, Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Policy.Read.All, Policy.ReadWrite.ConditionalAccess, Policy.ReadWrite.AuthenticationMethod|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/conditionalAccess/authenticationStrengths/policies/{authenticationStrengthPolicyId}/combinationConfigurations
```

## Optional query parameters
This method does not support OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationcombinationconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/beta/identity/conditionalAccess/authenticationStrengths/policies/0e371351-6419-4c8a-8047-61eef0212ffb/combinationConfigurations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-authenticationcombinationconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-authenticationcombinationconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-authenticationcombinationconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-authenticationcombinationconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-authenticationcombinationconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-authenticationcombinationconfiguration-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authenticationCombinationConfiguration)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type" : "#microsoft.graph.fido2CombinationConfiguration",
      "id": "133b68c4-503b-4e87-839a-6c286a27381b",
      "allowedAAGUIDs": [
        "dcf6eadd-31fd-49e5-b84e-44035a5e6295",
        "e0d9c83d-f035-45b2-8d98-345903f91e29"
      ],
      "appliesToCombinations": ["fido2"]
    }
  ]
}
```

