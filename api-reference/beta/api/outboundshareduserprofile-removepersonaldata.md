---
title: "outboundSharedUserProfile: removePersonalData"
description: "Create a request to remove the personal data for an outboundSharedUserProfile."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# outboundSharedUserProfiles: removePersonalData

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

An account assigned with the Global Reader or Global Administrator role will be able to retrieve all [outboundSharedUserProfiles](../resources/outboundshareduserprofile.md).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
GET /directory/outboundSharedUserProfiles/userId/removePersonalData
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Provide a request body with the following parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|bindingParameter|[microsoft.graph.outboundSharedUserProfile](../resources/outboundshareduserprofile.md)|The binding parameter of the action. This is the user id of the inbound shared user profile.|

## Response

If successful, this method returns a `204 No content` response code.

## Examples

### Request

<!-- {
  "blockType": "request",
  "name": "inboundshareuserprofile_removepersonaldata"
}
-->

``` http
POST https://graph.microsoft.com/beta/directory/outboundSharedUserProfiles/c228b2ae-c4fb-4eda-9620-7e73dddd1cac/removePersonalData
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
