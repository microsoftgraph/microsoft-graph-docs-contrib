---
title: "identityAccounts: invokeAction"
description: "Perform available actions for identity security identity accounts. This action allows reading and performing identity security actions on behalf of the signed-in identity."
author: "SamuelBenichou"
ms.date: 06/22/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: apiPageType
---

# identityAccounts: invokeAction

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Perform actions such as revoking accounts and forcing password reset for [identity accounts](../resources/security-identityaccounts.md) that are observed in Microsoft Defender for Identity. This action allows reading and performing identity security actions on behalf of the signed-in identity.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "security-identityaccounts-invokeaction-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/security-identityaccounts-invokeaction-permissions.md)]

[!INCLUDE [rbac-security-identity-accounts-apis](../includes/rbac-for-apis/rbac-security-identity-accounts-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /security/identities/identityAccounts/{identityAccountsId}/invokeAction
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|accountId|String|The identifier of the account to perform the action on.|
|action|microsoft.graph.security.action|The type of action to perform on the account. The possible values are: `disable`, `enable`, `forcePasswordReset`, `revokeAllSessions`, `requireUserToSignInAgain`, `markUserAsCompromised`.|
|identityProvider|microsoft.graph.security.identityProvider|The identity provider associated with the account. The possible values are: `entraID`, `activeDirectory`, `okta`.|

The following table shows the identity providers supported for each **action** value type:

|Action Value|Description|Supported identity providers|
|:---|:---|:---|
| Disable| Disable account. The account is unable to authenticate. If the account recently logged in, it doesn't have access to resources.| `activeDirectory`, `okta`|
| Enable| Enable account.| `activeDirectory`, `okta`|
| ForcePasswordReset| Force password reset of the account.| `activeDirectory`|
| RevokeAllSessions| Revoke all of active sessions for the account.| `okta`|

## Response

If successful, this action returns a `200 OK` response code and a [invokeActionResult](../resources/security-invokeactionresult.md) in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "identityaccountsthis.invokeaction"
}
-->
``` http
POST https://graph.microsoft.com/beta/security/identities/identityAccounts/0104216-0539-4838-88b1-55baafdc296b/invokeAction
Content-Type: application/json

{
  "accountId": "256db173-930a-4991-9061-0d51a9a93ba5",
  "action": "disable",
  "identityProvider": "activeDirectory"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/identityaccountsthisinvokeaction-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/identityaccountsthisinvokeaction-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/identityaccountsthisinvokeaction-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/identityaccountsthisinvokeaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/identityaccountsthisinvokeaction-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/identityaccountsthisinvokeaction-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/identityaccountsthisinvokeaction-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.security.invokeActionResult"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": 
    {
      "accountId": "256db173-930a-4991-9061-0d51a9a93ba5",
      "action": "disable",
      "provider": "activeDirectory",
      "correlationId": "ed2f052b-2a01-4cd9-acb3-f6145f83e1a5"
    }
}
```

> [!NOTE] 
> Actions related to Entra ID are not covered in the current scope.
> 
