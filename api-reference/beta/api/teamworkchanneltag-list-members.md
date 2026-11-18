---
title: "List channel tag members"
description: "Get the teamworkTagMember objects assigned to a teamworkChannelTag owned by the specified channel."
author: "npoplove"
ms.date: 10/26/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List channel tag members

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [teamworkTagMember](../resources/teamworktagmember.md) objects assigned to a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworkchanneltag_list_members" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworkchanneltag-list-members-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{team-id}/channels/{channel-id}/tags/{teamworkChannelTag-id}/members
```

>**Note:** Use the team that hosts the channel and a tag ID returned for that channel.

## Optional query parameters

This method supports the `$select`, `$filter`, `$top`, and `$skiptoken` [OData query parameters](/graph/query-parameters). The default and maximum page size is 100.

For example, use `$filter=userId eq '8c1e6b52-3d4a-4f97-b0e8-5a2c7f9d1e36'` to filter members by user.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkTagMember](../resources/teamworktagmember.md) objects in the response body.

If the response includes **@odata.nextLink**, use that URL unchanged to request the next page. A page can contain fewer results than requested, including no results, and still include a next-page link. Continue until **@odata.nextLink** is absent.

This method also returns a `400 Bad Request` response if the value of the `$top` OData query parameter is greater than 100.

Use the returned member IDs with [Get channel tag member](../api/teamworkchanneltag-get-members.md) and [Delete channel tag member](../api/teamworkchanneltag-delete-members.md). Don't substitute channel membership IDs from other APIs.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_channel_tag_members",
  "sampleKeys": ["6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67", "19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2", "ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ"]
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67/channels/19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2/tags/ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ/members
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkTagMember",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.teamworkTagMember",
      "id": "MCMjMiMjZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjIzhjMWU2YjUyLTNkNGEtNGY5Ny1iMGU4LTVhMmM3ZjlkMWUzNg",
      "displayName": "Adele Vance",
      "tenantId": "d4f6a1b8-2c93-4e57-8a0d-6b1f3e9c2a74",
      "userId": "8c1e6b52-3d4a-4f97-b0e8-5a2c7f9d1e36"
    }
  ]
}
```
