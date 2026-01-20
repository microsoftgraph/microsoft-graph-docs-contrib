---
title: "Remove teamsApp"
description: "Remove a teamsApp object that disables an app in the specified channel within a team."
author: "devjha-ms"
ms.date: 10/14/2025
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Remove teamsApp

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a [teamsApp](../resources/teamsapp.md) object that disables an [app](../resources/teamsapp.md) in the specified [channel](../resources/channel.md) within a [team](../resources/team.md). This operation is allowed only for channels with a **membershipType** value of `shared`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "channel-delete-enabledapps-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/channel-delete-enabledapps-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /teams/{teamsId}/channels/{channelId}/enabledApps/{id}/$ref
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

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_enabledapps_from_channel"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/teams/92a32d60-8819-41a5-93f1-4e7ab675a84c/channels/19:EXBxA86mdj8ToATNBzN8FcaJFeMgxM3abqoOF9WRVaI1@thread.tacv2/enabledApps/7fffdd9a-eb41-37e0-be9b-0bfc89302cb2/$ref
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
