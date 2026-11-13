---
title: "Delete teamworkChannelTag"
description: "Delete a teamworkChannelTag owned by the specified channel."
author: "npoplove"
ms.date: 10/26/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# Delete teamworkChannelTag

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [teamworkChannelTag](../resources/teamworkchanneltag.md) owned by the specified channel.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "teamworkchanneltag_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/teamworkchanneltag-delete-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /teams/{team-id}/channels/{channel-id}/tags/{teamworkChannelTag-id}
```

>**Note:** Use the team that hosts the channel and a tag ID returned for that channel. Team tag IDs and channel tag IDs aren't interchangeable.

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
  "name": "delete_teamworkchanneltag",
  "sampleKeys": ["6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67", "19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2", "ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/teams/6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67/channels/19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2/tags/ZDRmNmExYjgtMmM5My00ZTU3LThhMGQtNmIxZjNlOWMyYTc0IyMxOTplM2E3YzhkMTRiMmY0ZjZlOWEwZDVjNzFiOGUyZjk0NUB0aHJlYWQudGFjdjIjI2tQN3ZYbTJRYQ
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response"
}
-->
``` http
HTTP/1.1 204 No Content
```
