---
title: "tenantReference: removePersonalData"
description: "Create a request to remove the personal data for an outboundSharedUserProfile."
author: "jkdouglas"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.topic: reference
---

# tenantReference: removePersonalData

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a request to remove the personal data for an [outboundSharedUserProfile](../resources/inboundshareduserprofile.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantreference_removepersonaldata" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantreference-removepersonaldata-permissions.md)]

A user can create a request to remove their own personal data when the app is granted the `CrossTenantUserProfileSharing.ReadWrite` delegated permission on their behalf.

[!INCLUDE [rbac-cross-tenant-access-shared-user-profiles-apis-write](../includes/rbac-for-apis/rbac-cross-tenant-access-shared-user-profiles-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/outboundSharedUserProfiles/{userId}/tenants/{tenantId}/removePersonalData
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tenantreferencethis.removepersonaldata"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/outboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac/tenants/62bfb458-9474-4c44-896b-b30942d055f0/removePersonalData
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tenantreferencethisremovepersonaldata-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/tenantreferencethisremovepersonaldata-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tenantreferencethisremovepersonaldata-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tenantreferencethisremovepersonaldata-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tenantreferencethisremovepersonaldata-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tenantreferencethisremovepersonaldata-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tenantreferencethisremovepersonaldata-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/tenantreferencethisremovepersonaldata-python-snippets.md)]
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
