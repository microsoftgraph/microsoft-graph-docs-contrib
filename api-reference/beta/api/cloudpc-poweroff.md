---
title: "cloudPC: powerOff"
description: "Power off a specific Cloud PC."
author: "rbayetov"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPC: powerOff

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Power off a [Windows 365 Frontline](https://www.microsoft.com/en/windows-365/frontline) Cloud PC. This action supports Microsoft Endpoint Manager (MEM) admin scenarios. 

After a [Windows 365 Frontline](https://www.microsoft.com/en/windows-365/frontline) Cloud PC is powered off, it's deallocated, and licenses are revoked immediately. Only IT admin users can perform this action. 

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpc_poweroff" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpc-poweroff-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /deviceManagement/virtualEndpoint/cloudPCs/{cloudPCId}/poweroff
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "poweroff_cloudpc"
}
-->

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/cloudPCs/831dd62e-cfa1-4d49-a3b4-58d4e9920f8e/poweroff
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/poweroff-cloudpc-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/poweroff-cloudpc-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/poweroff-cloudpc-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/poweroff-cloudpc-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/poweroff-cloudpc-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/poweroff-cloudpc-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/poweroff-cloudpc-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/poweroff-cloudpc-python-snippets.md)]
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
