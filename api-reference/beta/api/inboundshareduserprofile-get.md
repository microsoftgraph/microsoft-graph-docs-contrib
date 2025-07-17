---
title: "Get inboundSharedUserProfile"
description: "Read the properties of an inboundSharedUserProfile."
author: "yyuank"
ms.reviewer: mapamu, iamut
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 05/16/2024
---

# Get inboundSharedUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of an [inboundSharedUserProfile](../resources/inboundshareduserprofile.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "inboundshareduserprofile_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/inboundshareduserprofile-get-permissions.md)]

[!INCLUDE [rbac-cross-tenant-access-shared-user-profiles-apis-read](../includes/rbac-for-apis/rbac-cross-tenant-access-shared-user-profiles-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/inboundSharedUserProfiles/{userId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_inboundshareduserprofile"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/inboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-inboundshareduserprofile-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-inboundshareduserprofile-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-inboundshareduserprofile-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-inboundshareduserprofile-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-inboundshareduserprofile-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-inboundshareduserprofile-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-inboundshareduserprofile-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-inboundshareduserprofile-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.inboundSharedUserProfile"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "userId": "c228b2ae-c4fb-4eda-9620-7e73dddd1cac",
    "userPrincipalName": "bob@contoso.com",
    "displayName": "Bob",
    "homeTenantId": "486fb458-9474-4c44-896b-b30942d055f0"
}
```
