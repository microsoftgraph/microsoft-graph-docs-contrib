---
title: "Remove sponsor"
description: "Remove a user's sponsor."
author: "sadia353"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# Remove sponsor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a user's sponsor.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | User.ReadWrite.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /users/{id}/sponsors/{id}/$ref
```

[!CAUTION]
> If `/$ref` is not appended to the request and the calling app has permissions to manage the sponsor object type, the sponsor object will also be deleted from Azure Active Directory (Azure AD); otherwise, a `403 Forbidden` error is returned. For example, an app with *User.ReadWrite.All* permissions will delete a user who is a sponsor. You can restore specific objects through the [Restore deleted items API](directory-deleteditems-restore.md)

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_sponsors_from_user"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/users/{user-id}/sponsors/{directory-object-id}/$ref
```

### Response

The following is an example of the response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
