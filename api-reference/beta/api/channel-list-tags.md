---
title: "List tags"
description: "Get a list of the teamworkChannelTag objects owned by the specified channel."
author: "npoplove"
ms.date: 10/26/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# List tags

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [teamworkChannelTag](../resources/teamworkchanneltag.md) objects owned by the specified channel.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_list_tags" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-list-tags-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{team-id}/channels/{channel-id}/tags
```

>**Note:** Use the team that hosts the channel, including for shared channels.

## Optional query parameters

This method supports the `$select`, `$filter`, `$top`, and `$skiptoken` [OData query parameters](/graph/query-parameters). The default and maximum page size is 200.

For example, use `$filter=displayName eq 'Project reviewers'` to filter tags by name.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [teamworkChannelTag](../resources/teamworkchanneltag.md) objects in the response body. This collection doesn't include team-owned tags. For the **General** channel, this method returns an empty collection.

If the response includes **@odata.nextLink**, use that URL unchanged to request the next page. A page can contain fewer results than requested, including no results, and still include a next-page link. Continue until **@odata.nextLink** is absent.

This method also returns a `400 Bad Request` response if the value of the `$top` OData query parameter is greater than 200.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_teamworkchanneltag",
  "sampleKeys": ["6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67", "19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2"]
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/6f2c8b4e-91d3-4a7f-b5e2-0c8d3a9f1e67/channels/19%3Ae3a7c8d14b2f4f6e9a0d5c71b8e2f945%40thread.tacv2/tags
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.teamworkChannelTag)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
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
  ]
}
```
