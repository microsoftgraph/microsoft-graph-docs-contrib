---
title: "presence: setAutomaticLocation"
description: "Update the automatic work location for a user."
author: "garchiro7"
ms.date: 12/15/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# presence: setAutomaticLocation

Namespace: microsoft.graph

Update the automatic work location for a [user](../resources/user.md). The automatic layer participates in the standard precedence model:

- Precedence: manual > automatic > scheduled
- Precision (within the same layer): more precise wins (for example, office + building > office)
- If a manual location is set, it overrides both automatic and scheduled settings.

Use this operation from clients or services that automatically detect location (for example, Teams, network/location agents, or OEM docking apps). It doesn't clear manual or scheduled signals.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "presence-setautomaticlocation-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/presence-setautomaticlocation-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/presence/setAutomaticLocation
POST /users/{usersId}/presence/setAutomaticLocation
POST /communications/presences/{presenceId}/setAutomaticLocation
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that are required when you call this action.

|Parameter|Type|Description|
|:---|:---|:---|
|placeId|String| Identifier of the place (when applicable). |
|workLocationType|workLocationType| Semantic type of the location. The possible values are: `unspecified`, `office`, `remote`, `timeOff`.|

## Response

If successful, this action returns a `200 OK` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "presencethis.setautomaticlocation"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/me/presence/setAutomaticLocation
Content-Type: application/json

{
  "workLocationType": "office",
  "placeId": "eb706f15-137e-4722-b4d1-b601481d9251"
}
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

