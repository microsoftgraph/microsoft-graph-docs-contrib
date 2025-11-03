---
title: "presence: clearLocation"
description: "Clear the work location signals for a user, including both the manual and automatic layers for the current date."
author: "garchiro7"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# presence: clearLocation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Clear the work location signals for a [user](../resources/user.md), including both the manual and automatic layers for the current date.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "presence-clearlocation-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/presence-clearlocation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/presence/clearLocation
POST /users/{usersId}/presence/clearLocation
POST /communications/presences/{presenceId}/clearLocation
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "presencethis.clearlocation"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/presence/clearLocation
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

