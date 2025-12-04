---
title: "presence: clearAutomaticLocation"
description: "Clear the automatic work location signal for a user."
author: "garchiro7"
ms.date: 12/15/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---


# presence: clearAutomaticLocation

Namespace: microsoft.graph

Clear the automatic work location signal for a [user](../resources/user.md). After clearing, the user’s final aggregated work location is recomputed according to the precedence rules:

- Precedence: manual > automatic > scheduled
- If a manual location is set, clearing the automatic signal doesn't change the final location (manual still takes precedence).
- If no manual location is set, the final location falls back to the scheduled signal (calendar working hours and location – WHL) for the current segment, or to none if there's no scheduled signal.

Use this operation when you need to remove the current autodetected signal without affecting manual or scheduled layers.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

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
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "presencethis.clearautomaticlocation"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/me/presence/clearAutomaticLocation
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 200 OK
```

