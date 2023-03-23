---
title: "Get outboundSharedUserProfile"
description: "Get the details of an outboundSharedUserProfile."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get outboundSharedUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of an [outboundSharedUserProfile](../resources/outboundshareduserprofile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|CrossTenantUserProfileSharing.Read, CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite, CrossTenantUserProfileSharing.ReadWrite.All|
|Delegated (personal Microsoft account)|Not applicable|
|Application|CrossTenantUserProfileSharing.Read.All, CrossTenantUserProfileSharing.ReadWrite.All|

All users have `CrossTenantUserProfileSharing.Read` and will be able to retrieve their own [outboundSharedUserProfile](../resources/outboundshareduserprofile.md).

An account assigned with the Global Reader or Global Administrator role will be able to retrieve all [outboundSharedUserProfiles](../resources/outboundshareduserprofile.md).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/outboundSharedUserProfiles/{userId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [outboundSharedUserProfile](../resources/outboundshareduserprofile.md) object in the response body.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "get_outboundshareduserprofile"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/outboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac
```

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#directory/outboundSharedUserProfiles/$entity",
  "userId": "c228b2ae-c4fb-4eda-9620-7e73dddd1cac"
}
```
