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

An account assigned with the Global Reader or Global Administrator role will be able to retrieve all [outboundSharedUserProfiles](../resources/outboundshareduserprofile.md).

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

<!-- {
  "blockType": "request",
  "name": "get_outboundshareduserprofile"
}
-->

``` http
GET https://graph.microsoft.com/beta/directory/outboundSharedUserProfiles
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
