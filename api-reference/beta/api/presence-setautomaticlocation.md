---
title: "Presence setAutomaticLocation API"
description: "Set the user’s automatically detected work location"
author: "garchiro7"
ms.date: 10/23/2025
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: apiPageType
---

# presence: setAutomaticLocation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

`setAutomaticLocation` updates the automatic work location. The automatic layer participates in the standard precedence model:

- Precedence: manual > automatic > scheduled.
- Precision (within the same layer): more precise wins (for example, office+building > office).
- If manual is set, it overrides automatic and scheduled.

Use this operation from clients or services that detect location automatically (Teams, network/location agents, OEM docking apps). It doesn't clear manual or scheduled signals.

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
|workLocationType|workLocationType| Semantic type of the location. The possible values are: `unspecified`, `office`, `remote`, `timeOff`, `unknownFutureValue`.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "presencethis.setautomaticlocation"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/presence/setAutomaticLocation
Content-Type: application/json

{
  "workLocationType": "String",
  "placeId": "String"
}
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

