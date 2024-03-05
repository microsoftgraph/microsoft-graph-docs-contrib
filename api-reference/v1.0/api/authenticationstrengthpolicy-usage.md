---
title: "authenticationStrengthPolicy: usage"
description: "Allows the caller to see which Conditional Access policies reference a specified authentication strength policy."
author: "InbarckMS"
ms.reviewer: conditionalaccesspm
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# authenticationStrengthPolicy: usage
Namespace: microsoft.graph

Allows the caller to see which Conditional Access policies reference a specified authentication strength policy. The policies are returned in two collections, one containing Conditional Access policies that require an MFA claim and the other containing Conditional Access policies that do not require such a claim. Policies in the former category are restricted in what kinds of changes may be made to them to prevent undermining the MFA requirement of those policies.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "authenticationstrengthpolicy_usage" } -->
[!INCLUDE [permissions-table](../includes/permissions/authenticationstrengthpolicy-usage-permissions.md)]

[!INCLUDE [rbac-authenticationstrength-apis-read](../includes/rbac-for-apis/rbac-authenticationstrength-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /policies/authenticationStrengthPolicies/{authenticationStrengthPolicyId}/usage
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and an [authenticationStrengthUsage](../resources/authenticationstrengthusage.md) complex type in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "authenticationstrengthpolicythis.usage"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/policies/authenticationStrengthPolicies/{authenticationStrengthPolicyId}/usage
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/authenticationstrengthpolicythisusage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/authenticationstrengthpolicythisusage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/authenticationstrengthpolicythisusage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/authenticationstrengthpolicythisusage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/authenticationstrengthpolicythisusage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/authenticationstrengthpolicythisusage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/authenticationstrengthpolicythisusage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/authenticationstrengthpolicythisusage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.authenticationStrengthUsage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "mfa": [
        {
            "displayName": "Conditional Access Policy 1",
            "id": "a26dbede-a6c0-4156-92e1-6c86dd7bc561",
            "grantControls": {
                "authenticationStrength": {
                    "id": "00000000-0000-0000-0000-000000000003"
                },
                "controls": [
                    "MfaAndChangePassword"
                ]
            }
        }
    ],
    "none": [
        {
            "displayName": "Conditional Access Policy 2",
            "id": "5d7d5a7f-dd35-412b-a18d-5411d8eafe8f",
            "grantControls": {
                "authenticationStrength": {
                    "id": "00000000-0000-0000-0000-000000000003"
                },
                "controls": [
                    "RequireCompliantDevice"
                ]
            }
        }
    ]
}
```

