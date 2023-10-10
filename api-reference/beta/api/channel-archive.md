---
title: "Archive channel"
description: "Archive the specified channel in a team. "
author: "sumitgupta3"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Archive channel in team

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Archive the specified [channel](../resources/channel.md).
When a channel is archived, users can no longer send or like messages on the channel in the team, edit the channel's name or other settings, or in general make most changes to the channel.
Membership changes to the channel continue to be allowed. A channel is archived by default if team is archived.

Archiving is an async operation. A channel is archived once the async operation completes successfully, which may occur subsequent to a response from this API.

To archive a channel, the channel and [group](../resources/group.md) must have an owner.

To restore a channel from its archived state, use the API to [unarchive](channel-unarchive.md). A channel can not be archived if team is archived.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | ChannelSettings.ReadWrite.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelSettings.ReadWrite.All |

> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/channels/{channel-id}/archive
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
In the request, you may _optionally_ include the `shouldSetSpoSiteReadOnlyForMembers` parameter in a JSON body, as follows.
```JSON
{
    "shouldSetSpoSiteReadOnlyForMembers": true
}
```
This optional parameter defines whether to set permissions for team members to read-only on the SharePoint Online site associated with the team. Setting it to false or omitting the body altogether will result in this step being skipped.

## Response

If archiving is started successfully, this method returns a `202 Accepted` response code. The response will also contain a `Content-Location` header, which contains the location of the [teamsAsyncOperation](../resources/teamsasyncoperation.md) that was created to handle archiving of the channel in a team. Check the status of the archiving operation by making a GET request to this location.

## Example
### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "archive_channel"
}-->
```http
POST https://graph.microsoft.com/beta/teams/{id}/archive
```

---

### Response
The following is an example of a response.
<!-- {
  "blockType": "response",
  "name": "archive_channel"
}-->
```http
HTTP/1.1 202 Accepted
Content-Location: /teams/{team-id}/channels/{channel-id}/operations/{operation-id}
Content-Type: text/plain
Content-Length: 0
```
<!-- uuid: e848414b-4669-4484-ac36-1504c58a3fb8
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Archive Channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
