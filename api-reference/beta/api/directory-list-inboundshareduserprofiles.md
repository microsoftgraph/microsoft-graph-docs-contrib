---
title: "List inboundSharedUserProfiles"
description: "Retrieve the properties of an inboundSharedUserProfiles."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List inboundSharedUserProfiles

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties of all [inboundSharedUserProfiles](../resources/inboundshareduserprofile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite.All|
|Delegated (personal Microsoft account)|Not applicable|
|Application|CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite.All|

[!INCLUDE [rbac-cross-tenant-access-shared-user-profiles-apis-read](../includes/rbac-for-apis/rbac-cross-tenant-access-shared-user-profiles-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/inboundSharedUserProfiles
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) collection in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_inboundshareduserprofiles"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/inboundSharedUserProfiles
```

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
    "value": [
        {
            "userId":"c228b2ae-c4fb-4eda-9620-7e73dddd1cac",
            "userPrincipalName":"bob@contoso.onmicrosoft.com",
            "displayName":"Bob",
            "homeTenantId":"486fb458-9474-4c44-896b-b30942d055f0"
        },
        {
            "userId":"5586b2ae-c4fb-4eda-9620-7e73dddd1cac",
            "userPrincipalName":"alice@fabrikam.com",
            "displayName":"Alice",
            "homeTenantId":"385ab357-9774-4c44-896b-a35942d755e8"
        }
    ]
}

```
