---
title: "List combinationConfigurations"
description: "Get the authenticationCombinationConfiguration objects for an authentication strength policy."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 06/18/2024
---

# List combinationConfigurations
Namespace: microsoft.graph

Get the [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) objects for an [authentication strength policy](../resources/authenticationstrengthpolicy.md). The objects can be of one or more of the following derived types:
* [fido2combinationConfigurations](../resources/fido2combinationconfiguration.md)
* [x509certificatecombinationconfiguration](../resources/x509certificatecombinationconfiguration.md)

**authenticationCombinationConfiguration** objects are supported only for custom authentication strengths.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationstrengthpolicy_list_combinationconfigurations" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationstrengthpolicy-list-combinationconfigurations-permissions.md)]

[!INCLUDE [rbac-authenticationstrength-apis-read](../includes/rbac-for-apis/rbac-authenticationstrength-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /identity/conditionalAccess/authenticationStrength/policies/{authenticationStrengthPolicyId}/combinationConfigurations
```

## Optional query parameters
This method does not support OData query parameters.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) objects in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_authenticationcombinationconfiguration"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/identity/conditionalAccess/authenticationStrength/policies/0e371351-6419-4c8a-8047-61eef0212ffb/combinationConfigurations
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-authenticationcombinationconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-authenticationcombinationconfiguration-cli-snippets.md)]
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

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-authenticationcombinationconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
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

