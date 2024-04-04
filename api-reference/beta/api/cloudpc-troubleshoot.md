---
title: "cloudPC: troubleshoot"
description: "Troubleshoot a specific Cloud PC. Use this API to check the health status of the Cloud PC and the session host."
author: "RuiHou105"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.topic: reference
---

# cloudPC: troubleshoot

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Troubleshoot a specific Cloud PC. Use this API to check the health status of the Cloud PC and the session host.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_troubleshoot" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-troubleshoot-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

To troubleshoot the [cloudPC](../resources/cloudpc.md) of the specified user (who is the signed-in user) in the organization using delegated permission:

``` http
POST /me/cloudPCs/{cloudPCId}/troubleshoot
POST /users/{userId}/cloudPCs/{cloudPCId}/troubleshoot
```

To troubleshoot the specified [cloudPC](../resources/cloudpc.md) in the organization, using either delegated permission (the signed-in user should be the administrator) or application permission:

``` http
POST /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/troubleshoot
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "troubleshoot_cloudpc"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/ff4eb6ab-d56a-4edf-90c1-baaec8dd6032/troubleshoot
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/troubleshoot-cloudpc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/troubleshoot-cloudpc-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/troubleshoot-cloudpc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/troubleshoot-cloudpc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/troubleshoot-cloudpc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/troubleshoot-cloudpc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/troubleshoot-cloudpc-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/troubleshoot-cloudpc-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```

### Example 2: Troubleshoot the cloudPC for the signed-in user

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "user_troubleshoot_cloudpc"
}
-->

``` http
POST https://graph.microsoft.com/beta/me/cloudPCs/36bd4942-0ca8-11ed-861d-0242ac120002/troubleshoot
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/user-troubleshoot-cloudpc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/user-troubleshoot-cloudpc-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/user-troubleshoot-cloudpc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/user-troubleshoot-cloudpc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/user-troubleshoot-cloudpc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/user-troubleshoot-cloudpc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/user-troubleshoot-cloudpc-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/user-troubleshoot-cloudpc-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
