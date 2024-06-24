---
title: "accessPackageAssignment: reprocess"
description: "Reprocess accesspackageassignment objects."
ms.localizationpriority: medium
author: "markwahl-msft"
ms.subservice: "entra-id-governance"
doc_type: "apiPageType"
---

# accessPackageAssignment: reprocess

Namespace: microsoft.graph

In [Microsoft Entra entitlement management](../resources/entitlementmanagement-overview.md), callers can automatically reevaluate and enforce an [accessPackageAssignment](../resources/accesspackageassignment.md) object of a user’s assignments for a specific access package. The **state** of the access package assignment must be `Delivered` for the administrator to reprocess the user's assignment. Only admins with the Access Package Assignment Manager role, or higher, in Microsoft Entra entitlement management can perform this action.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "accesspackageassignment_reprocess" } -->
[!INCLUDE [permissions-table](../includes/permissions/accesspackageassignment-reprocess-permissions.md)]
  
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /identityGovernance/entitlementManagement/assignments/{id}/reprocess 
```

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code and reevaluates and enforces the user's assignments of the [accessPackageAssignment](../resources/accesspackageassignment.md) object, meaning the status of the access package will be changed to Delivered. If the assignment doesn't exist, this method will return `404 Not Found` or if the **id** isn't valid, this method returns a `400 Bad Request` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reprocess_accesspackageassignments"
}-->
```http
POST https://graph.microsoft.com/v1.0/identityGovernance/entitlementManagement/assignments/d82eb508-acc4-43cc-bcf1-7c1c4a2c073b/reprocess
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reprocess-accesspackageassignments-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/reprocess-accesspackageassignments-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reprocess-accesspackageassignments-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reprocess-accesspackageassignments-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/reprocess-accesspackageassignments-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reprocess-accesspackageassignments-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/reprocess-accesspackageassignments-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reprocess-accesspackageassignments-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.


<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 202 Accepted 
```
