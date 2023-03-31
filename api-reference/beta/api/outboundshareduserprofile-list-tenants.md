---
title: "Get tenantReferences"
description: "List the tenant references of an outboundSharedUserProfile."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get tenantReferences

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the tenant references of an [outboundSharedUserProfile](../resources/outboundshareduserprofile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CrossTenantUserProfileSharing.Read, CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite, CrossTenantUserProfileSharing.ReadWrite.All|
|Delegated (personal Microsoft account)|Not applicable|
|Application|CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite.All|

A user can retrieve their own [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) data when the app is granted the `CrossTenantUserProfileSharing.Read` delegated permission on their behalf.

[!INCLUDE [rbac-cross-tenant-access-shared-user-profiles-apis-read](../includes/rbac-for-apis/rbac-cross-tenant-access-shared-user-profiles-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/outboundSharedUserProfiles/{userId}/tenants
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [tenantReferences](../resources/tenantreference.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_outboundshareduserprofile_tenants"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/outboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac/tenants
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.tenantReference"
}
-->

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/outboundSharedUserProfiles('c228b2ae-c4fb-4eda-9620-7e73dddd1cac')/tenants",
  "value": [
        {
            "tenantId":"62bfb458-9474-4c44-896b-b30942d055f0"
        },
        {
            "tenantId":"5269b458-9474-4a44-996b-a30942d05000"
        }
    ]
}
```
