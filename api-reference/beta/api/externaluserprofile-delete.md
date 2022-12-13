---
title: "Delete externalUserProfile"
description: "Delete an externalUserProfile object."
ms.localizationpriority: medium
doc_type: apiPageType
author: "jkdouglas"
ms.prod: "directory-management"
---

# Delete externalUserProfile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [externalUserProfile](../resources/externaluserprofile.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)|ExternalUserProfile.ReadWrite.All|
|Delegated (personal Microsoft account)| Not supported.|
|Application|ExternalUserProfile.ReadWrite.All|

The work or school account needs to belong to one of the following roles:

* Global administrator
* Teams service administrator

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /directory/externalUserProfiles/{id}
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
  "name": "delete_externalUserProfile"
}
-->

``` http
DELETE https://graph.microsoft.com/beta/directory/externalUserProfiles/{id}
```

### Response

The following is an example of the response.

**Note:** To permanently delete the externalUserProfile, follow [permanently delete an item](directory-deleteditems-delete.md). To restore an externalUserProfile, follow [restore a deleted item](directory-deleteditems-restore.md).

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
