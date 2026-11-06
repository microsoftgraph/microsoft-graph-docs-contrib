---
title: "Get teamworkChannelTag"
description: "Get the properties of a teamworkChannelTag owned by the specified channel."
author: "npoplove"
ms.date: 10/26/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Get teamworkChannelTag

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamworkchanneltag-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamworkchanneltag-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{team-id}/channels/{channel-id}/tags/{teamworkChannelTag-id}
```

>**Note:** Use the team that hosts the channel and a tag ID returned for that channel. Team tag IDs and channel tag IDs aren't interchangeable.

## Optional query parameters

This method supports the `$select` [OData query parameter](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamworkChannelTag](../resources/teamworkchanneltag.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_teamworkchanneltag",
  "sampleKeys": ["6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67", "19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2", "ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ"]
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67/channels/19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2/tags/ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamworkChannelTag"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamworkChannelTag",
  "id": "ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ",
  "teamId": "6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67",
  "displayName": "Project reviewers",
  "description": "Reviewers for the channel's project",
  "memberCount": 1,
  "tagType": "standard",
  "channelId": "19:e3a7c8d14b2f4f6e9a0d5c71b8e2f945@thread.tacv2"
}
```
