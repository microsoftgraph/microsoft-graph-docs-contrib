---
title: "inboundSharedUserProfile: removePersonalData"
description: "Create a request to remove the personal data for an inboundSharedUserProfile."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# inboundSharedUserProfiles: removePersonalData

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a request to remove the personal data for an [inboundSharedUserProfile](../resources/inboundshareduserprofile.md). 

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| CrossTenantUserProfileSharing.ReadWrite, CrossTenantUserProfileSharing.ReadWrite.All|
|Delegated (personal Microsoft account)|Not applicable|
|Application|CrossTenantUserProfileSharing.ReadWrite.All|

All users have `CrossTenantUserProfileSharing.ReadWrite` assigned to be able to create removal requests of their own personal data.

An account assigned with the Global Reader or Global Administrator role will be able to retrieve all [inboundSharedUserProfiles](../resources/inboundshareduserprofile.md).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /directory/inboundSharedUserProfiles/{userId}/removePersonalData
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "inboundshareuserprofile_removepersonaldata"
}
-->

``` http
POST https://graph.microsoft.com/beta/directory/inboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac/removePersonalData
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
