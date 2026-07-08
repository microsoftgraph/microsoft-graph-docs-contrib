---
title: "driveItem: releaseLock"
description: "Release the exclusive lock held by the calling user on a file (driveItem)."
author: "adwaitkumar"
ms.author: "adwaitkumar"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 05/14/2026
---

# driveItem: releaseLock

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Release the exclusive lock that the calling user currently holds on a file represented by a [driveItem](../resources/driveitem.md). After successful release, the file is immediately available for other users to lock and modify.

> [!NOTE]
> This API applies only to **driveItems** that represent files. Folders or other non-file **driveItems** can't be locked, so there's nothing to release. Requests that target a non-file **driveItem** are rejected with `400 Bad Request`.

Only the user who currently holds the lock can release it. The server identifies the lock from the file's current state (no lock identifier is required from the caller).


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_releaselock" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-releaselock-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /drives/{drive-id}/items/{item-id}/releaseLock
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method. The server determines the lock to release from the file's current lock state and the caller's identity.

## Response

If successful, this method returns a `204 No Content` response code. The lock is fully removed from the file and the file becomes available for other users to lock.

This method returns the following error response codes.

| HTTP code | Description |
|:----------|:------------|
| 400 | Bad request. The target **driveItem** isn't a file (for example, a folder). |
| 401 | Request lacks valid authentication credentials. |
| 403 | The caller doesn't have permission to release the lock on this file. |
| 404 | The **driveItem** wasn't found at the specified path. |
| 409 | The file isn't currently locked, or the caller isn't the lock owner. Use [lock](../api/driveitem-lock.md) to acquire a lock first. |

For more information about how errors are returned, see [Error responses and resource types for differences between Microsoft Graph for Microsoft accounts and Microsoft Graph for work or school accounts](/graph/errors).

## Examples

The following example releases the lock the calling user currently holds on the file identified by `{item-id}`.

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "driveItem_releaseLock"
}
-->

```http
POST https://graph.microsoft.com/beta/drives/{drive-id}/items/{item-id}/releaseLock
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/driveitem-releaselock-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```

## Remarks

- Only exclusive locks are currently supported.
- The caller must currently hold the lock. The server validates ownership by comparing the caller's identity against the lock owner recorded on the file. Other users that attempt to release the lock receive `409 Conflict`.
- After release, the file's lock state is cleared: a subsequent call to `GET /drives/{drive-id}/items/{item-id}?$select=lockInfo` returns the [lockInfo](../resources/lockinfo.md) facet with **lockType** `none` and an empty **owners** array.
- Releasing a lock is immediate and final; there's no soft state to recover. To re-acquire the lock, use [lock](../api/driveitem-lock.md).
- If the file isn't currently locked, the request fails with `409 Conflict`.

<!--
{
  "type": "#page.annotation",
  "description": "Release the exclusive lock on a file.",
  "keywords": "releaseLock,driveItem,file lock,exclusive lock",
  "section": "documentation",
  "tocPath": "Items/Release lock",
  "suppressions": [
  ]
}
-->
