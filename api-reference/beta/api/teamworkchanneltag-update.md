---
title: "Update teamworkChannelTag"
description: "Update the display name or description of a teamworkChannelTag owned by the specified channel."
author: "npoplove"
ms.date: 10/26/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Update teamworkChannelTag

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the display name or description of a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "teamworkchanneltag-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/teamworkchanneltag-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /teams/{team-id}/channels/{channel-id}/tags/{teamworkChannelTag-id}
```

>**Note:** Use the team that hosts the channel and a tag ID returned for that channel.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|description|String|Optional. The description of the tag. Set the value to `null` to clear the description.|
|displayName|String|Optional. A nonblank tag name with a maximum length of 40 characters.|

## Response

If successful, this method returns a `200 OK` response code and an updated [teamworkChannelTag](../resources/teamworkchanneltag.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "update_teamworkchanneltag",
  "sampleKeys": ["6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67", "19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2", "ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/teams/6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67/channels/19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2/tags/ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ
Content-Type: application/json

{
  "displayName": "Design reviewers",
  "description": null
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.teamworkChannelTag",
  "id": "ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ",
  "teamId": "6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67",
  "displayName": "Design reviewers",
  "description": null,
  "memberCount": 1,
  "tagType": "standard",
  "channelId": "19:e3a7c8d14b2f4f6e9a0d5c71b8e2f945@thread.tacv2"
}
```
