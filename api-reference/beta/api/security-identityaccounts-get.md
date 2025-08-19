---
title: "Get identityAccounts"
description: "Read the properties and relationships of an identity security account object. This allows retrieving information about available identity accounts."
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# Get identityAccounts

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a single [identity security account](../resources/security-identityaccounts.md) object. This allows retrieving information about available identity accounts.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "security_identityaccounts_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/security-identityaccounts-get-permissions.md)]

[!INCLUDE [rbac-security-identity-accounts-apis](../includes/rbac-for-apis/rbac-security-identity-accounts-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /security/identities/identityAccounts/{identityAccountsId}
```

## Optional query parameters

This method supports the '$select' OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.security.identityAccounts](../resources/security-identityaccounts.md) object in the response body.

## Examples

### Example 1: Get details of an identity account

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identityaccounts"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/identities/identityAccounts/0104216-0539-4838-88b1-55baafdc296b
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-identityaccounts-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-identityaccounts-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-identityaccounts-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-identityaccounts-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-identityaccounts-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-identityaccounts-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-identityaccounts-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.identityAccounts"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": 
    {
      "id": "00104216-0539-4838-88b1-55baafdc296b",
      "displayName": "accoundJon",
      "domain": "domain1.test.local",
      "onPremisesSecurityIdentifier": "S-1-5-21-989687458-3461180213-172365591-281652",
      "cloudSecurityIdentifier": "S-1-12-4-2492432728-1225839317-3974870967-847981844",
      "isEnabled": true,
      "accounts": [
        {
          "provider": "ActiveDirectory",
          "identifier": "256db173-930a-4991-9061-0d51a9a93ba5",
          "actions": ["Enable"]
        },
        {
          "provider": "EntraID",
          "identifier": "69dfa3ea-1295-4e2c-b469-59564581143d",
          "actions": []
        },
        {
          "provider": "Okta",
          "identifier": "878a6911-f3da-41eb-a895-1d46fa054d3e",
          "actions": ["revokeAllSessions"]
        }
      ]
    }
}
```

### Example 2: Get the account details of an identity account

#### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_identityaccounts_selected"
}
-->
``` http
GET https://graph.microsoft.com/beta/security/identities/identityAccounts/0104216-0539-4838-88b1-55baafdc296b?$select=accounts
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-identityaccounts-selected-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-identityaccounts-selected-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-identityaccounts-selected-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-identityaccounts-selected-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-identityaccounts-selected-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-identityaccounts-selected-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-identityaccounts-selected-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response of the identityAccount using the select param.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.identityAccounts"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": 
    {
      "accounts": [
        {
          "provider": "ActiveDirectory",
          "identifier": "256db173-930a-4991-9061-0d51a9a93ba5",
          "actions": ["disable", "forcePasswordReset"]
        },
        {
          "provider": "EntraID",
          "identifier": "69dfa3ea-1295-4e2c-b469-59564581143d",
          "actions": []
        },
        {
          "provider": "Okta",
          "identifier": "878a6911-f3da-41eb-a895-1d46fa054d3e",
          "actions": ["revokeAllSessions"]
        }
      ]
    }
}
```
> [!NOTE] 
> Actions related to Entra ID are not covered in the current scope.
> 
