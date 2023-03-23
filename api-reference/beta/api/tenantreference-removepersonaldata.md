---
title: "tenantReference: removePersonalData"
description: "Create a request to remove the personal data for an outboundSharedUserProfile."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# tenantReference: removePersonalData

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a request to remove the personal data for an [outboundSharedUserProfile](../resources/inboundshareduserprofile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| CrossTenantUserProfileSharing.ReadWrite, CrossTenantUserProfileSharing.ReadWrite.All|
|Delegated (personal Microsoft account)|Not applicable|
|Application|CrossTenantUserProfileSharing.ReadWrite.All|

All users have `CrossTenantUserProfileSharing.ReadWrite` assigned to be able to create removal requests of their own personal data.

An account assigned with the Global Administrator role will be able to remove data for all [outboundSharedUserProfiles](../resources/outboundshareduserprofile.md).

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
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "tenantreferencethis.removepersonaldata"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/outboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac/tenants/62bfb458-9474-4c44-896b-b30942d055f0/removePersonalData
```

### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
