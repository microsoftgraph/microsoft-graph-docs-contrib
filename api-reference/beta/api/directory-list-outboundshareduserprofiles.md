---
title: "List outboundSharedUserProfiles"
description: "Retrieve the properties of all outboundSharedUserProfiles."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List outboundSharedUserProfiles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of all [outboundSharedUserProfiles](../resources/outboundshareduserprofile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CrossTenantUserProfileSharing.Read, CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite, CrossTenantUserProfileSharing.ReadWrite.All|
|Delegated (personal Microsoft account)|Not applicable|
|Application|CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite.All|

[!INCLUDE [rbac-cross-tenant-access-shared-user-profiles-apis-read](../includes/rbac-for-apis/rbac-cross-tenant-access-shared-user-profiles-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/outboundSharedUserProfiles
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [outboundSharedUserProfiles](../resources/outboundshareduserprofile.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_outboundshareduserprofile_e1"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/outboundSharedUserProfiles
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-outboundshareduserprofile-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-outboundshareduserprofile-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-outboundshareduserprofile-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-outboundshareduserprofile-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-outboundshareduserprofile-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-outboundshareduserprofile-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.outboundSharedUserProfile"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/outboundSharedUserProfiles",
  "value": [
        {
            "userId":"62bfb458-9474-4c44-896b-b30942d055f0"
        },
        {
            "userId":"5269b458-9474-4a44-996b-a30942d05000"
        }
    ]
}
```
