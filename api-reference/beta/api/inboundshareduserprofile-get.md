---
title: "Get inboundSharedUserProfile"
description: "Read the properties of an inboundSharedUserProfile."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get inboundSharedUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties of an [inboundSharedUserProfile](../resources/inboundshareduserprofile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CrossTenantUserProfileSharing.Read, CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite, CrossTenantUserProfileSharing.ReadWrite.All|
|Delegated (personal Microsoft account)|Not applicable|
|Application|CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite.All|

All users will have `CrossTenantUserProfileSharing.Read` and `CrossTenantUserProfileSharing.ReadWrite` to enable them get their own cross-tenant user profile information.

An account assigned with the Global Reader or Global Administrator role will be able to retrieve all [inboundSharedUserProfiles](../resources/inboundshareduserprofile.md).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/inboundSharedUserProfiles/userId
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [inboundSharedUserProfile](../resources/inboundshareduserprofile.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_inboundshareduserprofile"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/inboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac
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
    "userId": "c228b2ae-c4fb-4eda-9620-7e73dddd1cac",
    "userPrincipalName": "bob@contoso.com",
    "displayName": "Bob",
    "homeTenantId": "486fb458-9474-4c44-896b-b30942d055f0"
}
```
