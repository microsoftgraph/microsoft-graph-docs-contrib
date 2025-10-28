---
title: "presence: clearAutomaticLocation"
description: "Clear the automatically detected work location for the user"
author: "garchiro7"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---


# presence: clearAutomaticLocation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Clears the user’s automatic work location signal. After clearing, the user’s final aggregated work location is recomputed following the precedence rules:

- Precedence: manual > automatic > scheduled.
- If manual is set, clearing automatic doesn't change the final location (manual still wins).
- If manual isn't set, the final location falls back to scheduled (Calendar Working Hours & Location – WHL) for the current segment, or to none if there’s no scheduled signal.

Use this operation when your client needs to remove the current autodetected signal without affecting manual or scheduled layers.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "presence-clearautomaticlocation-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/presence-clearautomaticlocation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/presence/clearAutomaticLocation
POST /users/{usersId}/presence/clearAutomaticLocation
POST /communications/presences/{presenceId}/clearAutomaticLocation
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
  "name": "presencethis.clearautomaticlocation"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/presence/clearAutomaticLocation
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

