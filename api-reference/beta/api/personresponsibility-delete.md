---
title: "Delete personResponsibility"
description: "Deletes a personResponsibility object."
author: "kevinbellinger"
ms.localizationpriority: medium
ms.prod: "people"
doc_type: apiPageType
ms.topic: reference
---

# Delete personResponsibility
Namespace: microsoft.graph

Deletes a [personResponsibility](../resources/personresponsibility.md) object from a user's [profile](../resources/profile.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "personresponsibility_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/personresponsibility-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /me/responsibilities/{id}
DELETE /users/{id | userPrincipalName}/responsibilities/{id}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
<!-- {
  "blockType": "request",
  "sampleKeys": ["0fb4c1e3-c1e3-0fb4-e3c1-b40fe3c1b40f"],
  "name": "delete_personresponsibility"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/me/responsibilities/0fb4c1e3-c1e3-0fb4-e3c1-b40fe3c1b40f
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


