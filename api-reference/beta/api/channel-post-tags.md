---
title: "Create teamworkChannelTag"
description: "Create a teamworkChannelTag owned by a channel and assign its initial members."
author: "npoplove"
ms.date: 10/26/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Create teamworkChannelTag

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by a channel and assign its initial members.

The **General** channel doesn't support the creation of channel-owned tags; use the [Create teamworkTag](../api/teamworktag-post.md) instead.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_post_tags" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-post-tags-permissions.md)]

The creation of a tag with initial members supports both delegated and application permissions. To add members after you create the tag, use [Create channel tag member](../api/teamworkchanneltag-post-members.md), which supports application permissions only.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{team-id}/channels/{channel-id}/tags
```

>**Note:** Use the team that hosts the channel, including for shared channels.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [teamworkChannelTag](../resources/teamworkchanneltag.md) object.

The following table shows the properties that are required when you create a **teamworkChannelTag**.

|Property|Type|Description|
|:---|:---|:---|
|description|String|Optional. The description of the tag.|
|displayName|String|Required. A nonblank tag name with a maximum length of 40 characters.|
|members|[teamworkTagMember](../resources/teamworktagmember.md) collection|Required. Between 1 and 25 initial members. Each member requires a **userId**, expressed as a GUID, and must be a member of the channel. The **tenantId** is optional; if specified, it must be the ID of the tenant that hosts the channel. Cross-tenant members aren't supported.|

## Response

If successful, this method returns a `201 Created` response code and a [teamworkChannelTag](../resources/teamworkchanneltag.md) object in the response body.

This method also returns a `400 Bad Request` response code if a specified **userId** isn't a member of the channel.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_teamworkchanneltag_from_",
  "sampleKeys": ["6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67", "19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2"]
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67/channels/19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2/tags
Content-Type: application/json

{
  "displayName": "Project reviewers",
  "description": "Reviewers for the channel's project",
  "members": [
    {
      "userId": "8c1e6b52-3d4a-4f97-b0e8-5a2c7f9d1e36"
    }
  ]
}
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
HTTP/1.1 201 Created
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
