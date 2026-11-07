---
title: "Get channel tag member"
description: "Get a teamworkTagMember of a teamworkChannelTag owned by the specified channel."
author: "npoplove"
ms.date: 10/29/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get channel tag member

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [teamworkTagMember](../resources/teamworktagmember.md) of a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamworkchanneltag-get-members-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamworkchanneltag-get-members-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{team-id}/channels/{channel-id}/tags/{teamworkChannelTag-id}/members/{teamworkTagMember-id}
```

>**Note:** Use the tag ID returned by [List tags](../api/channel-list-tags.md) or [Create teamworkChannelTag](../api/channel-post-tags.md), and the member ID returned by [List channel tag members](../api/teamworkchanneltag-list-members.md) or [Create channel tag member](../api/teamworkchanneltag-post-members.md). Use the team that hosts the channel. Don't substitute a channel membership ID from another API.

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamworkTagMember](../resources/teamworktagmember.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_channel_tag_member",
  "sampleKeys": ["6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67", "19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2", "ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ", "MCMjMiMjZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjIzhjMWU2YjUyLTNkNGEtNGY5Ny1iMGU4LTVhMmM3ZjlkMWUzNg"]
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67/channels/19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2/tags/ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ/members/MCMjMiMjZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjIzhjMWU2YjUyLTNkNGEtNGY5Ny1iMGU4LTVhMmM3ZjlkMWUzNg
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "@odata.type": "microsoft.graph.teamworkTagMember"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamworkTagMember",
  "id": "MCMjMiMjZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjIzhjMWU2YjUyLTNkNGEtNGY5Ny1iMGU4LTVhMmM3ZjlkMWUzNg",
  "displayName": "Adele Vance",
  "tenantId": "d4f6a1b8-2c93-4e57-8a0d-6b1f3e9c2a74",
  "userId": "8c1e6b52-3d4a-4f97-b0e8-5a2c7f9d1e36"
}
```
