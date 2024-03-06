---
title: "Update authenticationCombinationConfiguration"
description: "Update the properties of an authenticationCombinationConfiguration object."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Update authenticationCombinationConfiguration
Namespace: microsoft.graph

Update the properties of an [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) object. In use, only [fido2combinationConfigurations](../resources/fido2combinationconfiguration.md) may be updated as they're the only type of [authenticationCombinationConfiguration](../resources/authenticationcombinationconfiguration.md) that may be created.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationcombinationconfiguration_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationcombinationconfiguration-update-permissions.md)]

[!INCLUDE [rbac-authenticationstrength-apis-write](../includes/rbac-for-apis/rbac-authenticationstrength-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /identity/conditionalAccess/authenticationStrength/policies/{authenticationStrengthPolicyId}/combinationConfigurations/{authenticationCombinationConfigurationId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|appliesToCombinations|authenticationMethodModes collection|The combinations to which this configuration applies. The only possible value for fido2combinationConfigurations is `fido2`. Required.|



## Response

If successful, this method returns a `204 No Content` response code.
## Examples

### Request
Here's an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationcombinationconfiguration"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/identity/conditionalAccess/authenticationStrength/policies/0e371351-6419-4c8a-8047-61eef0212ffb/combinationConfigurations/4643f174-fe85-42b8-8b84-516775750a30
Content-Type: application/json
Content-length: 130

{
  "appliesToCombinations": ["fido2"]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-authenticationcombinationconfiguration-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-authenticationcombinationconfiguration-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-authenticationcombinationconfiguration-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-authenticationcombinationconfiguration-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-authenticationcombinationconfiguration-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-authenticationcombinationconfiguration-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-authenticationcombinationconfiguration-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
Here's an example of the response
<!-- {
  "blockType": "response",
  "truncated": true,
}
-->
``` http
HTTP/1.1 204 No Content
```

