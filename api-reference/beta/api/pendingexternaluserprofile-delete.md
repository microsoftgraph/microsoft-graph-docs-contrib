---
title: "Delete pendingExternalUserProfile"
description: "Delete a pendingExternalUserProfile object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "jkdouglas"
ms.prod: "directory-management"
---

# Delete pendingExternalUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [pendingExternalUserProfile](../resources/pendingexternaluserprofile.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|PendingExternalUserProfile.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|PendingExternalUserProfile.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* Teams service administrator

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
DELETE /directory/pendingExternalUserProfiles/{id}
```

## Request headers

|Name|Description|
|:---------------|:----------|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code.

## Example

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "delete_pendingExternalUserProfile"
}
-->

``` http
DELETE https://graph.microsoft.com/beta/directory/pendingExternalUserProfiles/{id}
```

### Response

The following is an example of the response.

**Note:** To permanently delete the pendingExternalUserProfile, follow [permanently delete an item](directory-deleteditems-delete.md). To restore a pendingExternalUserProfile, follow [restore a deleted item](directory-deleteditems-restore.md).

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
