---
title: "driveItem: lock"
description: "Acquire an exclusive lock on a drive item file, or extend an existing lock held by the calling user."
author: "adwaitkumar"
ms.author: "adwaitkumar"
ms.localizationpriority: medium
ms.subservice: "onedrive"
doc_type: apiPageType
ms.date: 05/14/2026
---

# driveItem: lock

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Acquire an exclusive lock on a file represented by a [driveItem](../resources/driveitem.md), or extend an existing lock you already hold. While the lock is held, other users are prevented from acquiring a lock on the same file. The lock automatically expires after the duration specified in the request elapses.

> [!NOTE]
> This API applies only to **driveItems** that represent files. Locks can't be applied to folders or other non-file **driveItems**. Requests that target a non-file **driveItem** are rejected with `400 Bad Request`.

A single endpoint handles both initial acquisition and refresh. The server determines which behavior applies based on the file's current lock state and the caller's identity. The caller doesn't need to track whether they previously locked the file, and doesn't need to manage a lock identifier.

Only exclusive locks are currently supported.


## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "driveitem_lock" } -->
[!INCLUDE [permissions-table](../includes/permissions/driveitem-lock-permissions.md)]

[!INCLUDE [app-permissions](../includes/sharepoint-embedded-app-driveitem-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /drives/{drive-id}/items/{item-id}/lock
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the lock parameters.

|Property|Type|Required|Description|
|:---|:---|:---|:---|
|durationMinutes|Int32|Yes|Lock duration in minutes. Must be between 1 and 30 minutes. The lock expires at the request time plus this value.|

The lock identifier and lock type are server-determined and must not be provided by the caller.

## Response

The server determines whether this request acquires a new lock or refreshes an existing one based on the file's current lock state and the caller's identity:

|Current state|Caller identity|Action|
|:---|:---|:---|
|File isn't locked, or the existing lock expired.|Any caller with permission.|Acquire a new lock.|
|File is locked, and the caller holds the lock.|Same caller as the lock owner.|Refresh the existing lock; **expirationDateTime** is updated.|
|File is locked by another user.|Different caller.|Return `409 Conflict`. The caller can't acquire a lock until the existing lock is released or expires.|

If successful, this method returns a `200 OK` response code and a [lockInfo](../resources/lockinfo.md) resource in the response body.

This method returns the following error response codes.

| HTTP code | Description |
|:----------|:------------|
| 400 | Bad request. The **durationMinutes** is missing, non-positive, or exceeds the 30-minute maximum. Also returned when the target **driveItem** isn't a file (for example, a folder). |
| 401 | Request lacks valid authentication credentials. |
| 403 | The caller doesn't have permission to lock this file. |
| 404 | The **driveItem** wasn't found at the specified path. |
| 409 | The file is locked by another user. The caller must wait for the existing lock to be released or expire before acquiring a new lock. |

For more information about how errors are returned, see [Error responses and resource types for differences between Microsoft Graph for Microsoft accounts and Microsoft Graph for work or school accounts](/graph/errors).

## Examples

### Example 1: Acquire a lock on an unlocked file

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "driveItem_lock"
}
-->

```http
POST https://graph.microsoft.com/beta/drives/{drive-id}/items/{item-id}/lock
Content-Type: application/json

{
  "durationMinutes": 30
}
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.lockInfo"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "lockType": "exclusive",
  "expirationDateTime": "2026-05-13T14:30:00Z",
  "createdDateTime": "2026-05-13T14:00:00Z"
}
```

### Example 2: Refresh an existing lock the caller already holds

The request body is identical to the acquire case; only the file's current state differs.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "driveItem_lock_refresh"
}
-->

```http
POST https://graph.microsoft.com/beta/drives/{drive-id}/items/{item-id}/lock
Content-Type: application/json

{
  "durationMinutes": 10
}
```

#### Response

The following example shows the response. The **expirationDateTime** is updated.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.lockInfo"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "lockType": "exclusive",
  "expirationDateTime": "2026-05-13T14:39:00Z",
  "createdDateTime": "2026-05-13T14:00:00Z"
}
```

## Remarks

- Only exclusive locks are currently supported. The **lockType** in the response is always `exclusive`.
- Lock duration is capped at 30 minutes per request. For longer holds, call this API again before the existing lock expires; the call is automatically handled as a refresh.
- The new **expirationDateTime** is calculated as the request time plus **durationMinutes**; it replaces the prior expiration rather than extending it. Calling with a shorter duration than the time remaining effectively reduces the lock window.
- The **createdDateTime** and **expirationDateTime** are returned in UTC.
- This API is idempotent and retry-safe: if a network failure leaves the caller uncertain whether the lock succeeded, retrying naturally results in a refresh (if the first call succeeded) or a fresh acquire (if it didn't).

<!--
{
  "type": "#page.annotation",
  "description": "Acquire or refresh an exclusive lock on a file.",
  "keywords": "lock,driveItem,file lock,exclusive lock",
  "section": "documentation",
  "tocPath": "Items/Lock",
  "suppressions": [
  ]
}
-->
