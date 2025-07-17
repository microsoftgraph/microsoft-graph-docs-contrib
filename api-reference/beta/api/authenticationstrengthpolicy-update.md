---
title: "Update authenticationStrengthPolicy"
description: "Update the properties of an authenticationStrengthPolicy object."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 04/05/2024
---

# Update authenticationStrengthPolicy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [authenticationStrengthPolicy](../resources/authenticationstrengthpolicy.md) object. You cannot update the allowed auth method combinations using this request. To do so, use the [Update allowed combinations](authenticationstrengthpolicy-updateallowedcombinations.md) action.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationstrengthpolicy_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationstrengthpolicy-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/authenticationStrengthPolicies/{authenticationStrengthPolicyId}
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
|displayName|String|The display name of the policy to be created. Optional.|
|description|String|The description of the policy to be created. Optional.|

## Response

If successful, this method returns a `204 NO CONTENT` response code.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_authenticationstrengthpolicy"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/authenticationStrengthPolicies/a34a4c89-c5bf-4c0b-927d-adc396bf1f19
Content-Type: application/json
Content-length: 239

{
  "@odata.type": "#microsoft.graph.authenticationStrengthPolicy",
  "displayName": "FIDO2 only",
  "description": "An auth strength allowing only FIDO2 security keys."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-authenticationstrengthpolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-authenticationstrengthpolicy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-authenticationstrengthpolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-authenticationstrengthpolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-authenticationstrengthpolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-authenticationstrengthpolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-authenticationstrengthpolicy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-authenticationstrengthpolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
}
-->
``` http
HTTP/1.1 204 No Content
```

