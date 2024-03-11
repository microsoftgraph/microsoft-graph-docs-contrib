---
title: "riskyServicePrincipal: confirmCompromised"
description: "Confirm one or more riskyServicePrincipal objects as compromised."
author: "ebasseri"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# riskyServicePrincipal: confirmCompromised
Namespace: microsoft.graph

Confirm one or more [riskyServicePrincipal](../resources/riskyserviceprincipal.md) objects as compromised. This action sets the targeted service principal account's risk level to `high`.

>**Note:** Using the riskyServicePrincipal API requires a Microsoft Entra Workload ID Premium license.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "riskyserviceprincipal_confirmcompromised" } -->
[!INCLUDE [permissions-table](../includes/permissions/riskyserviceprincipal-confirmcompromised-permissions.md)]

[!INCLUDE [rbac-identity-protection-apis-write](../../beta/includes/rbac-for-apis/rbac-identity-protection-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityProtection/riskyServicePrincipals/confirmCompromised
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, specify the collection of ids of the risky service principals in a **servicePrincipalIds** property. 

## Response

If successful, this action returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "riskyserviceprincipal_confirmcompromised"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/identityProtection/riskyServicePrincipals/confirmCompromised
Content-Type: application/json

{
  "servicePrincipalIds": [
    "9089a539-a539-9089-39a5-899039a58990"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/riskyserviceprincipal-confirmcompromised-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/riskyserviceprincipal-confirmcompromised-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/riskyserviceprincipal-confirmcompromised-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/riskyserviceprincipal-confirmcompromised-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/riskyserviceprincipal-confirmcompromised-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/riskyserviceprincipal-confirmcompromised-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/riskyserviceprincipal-confirmcompromised-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/riskyserviceprincipal-confirmcompromised-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
