---
title: "Unarchive team"
description: "Restore an archived channel in a team. This restores users' ability to send messages and edit the channel. Channels are archived using the archive API."
ms.localizationpriority: medium
author: "sumitgupta3"
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Unarchive channel in a team

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Restore an archived [channel](../resources/channel.md). This restores users' ability to send messages and edit the channel. Channels are archived using the [archive](channel-archive.md) API.

Unarchiving is an async operation. A channel is unarchived once the async operation completes successfully, which may occur subsequent to a response from this API.

> **Note**: If a team is archived and we try to unarchive a channel inside the team, the API will return an error.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | ChannelSettings.ReadWrite.All | |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelSettings.ReadWrite.All | |

[!INCLUDE [teamwork-permissions-note](../../../includes/teamwork-permissions-note.md)]

> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/channels/{channel-id}/unarchive
```

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body
Do not supply a request body for this method.

## Response

If unarchiving is started successfully, this method returns a `202 Accepted` response code. The response will also contain a `Location` header, which contains the location of the [teamsAsyncOperation](../resources/teamsasyncoperation.md) that was created to handle unarchiving of the channel of team. Check the status of the unarchiving operation by making a GET request to this location.

## Example
#### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unarchive_channel"
}-->
```http
POST https://graph.microsoft.com/beta/teams/{team-id}/channels/{channel-id}/unarchive
```

---


#### Response
The following is an example of a response.
<!-- {
  "blockType": "response",
  "name": "unarchive_channel"
}-->
```http
HTTP/1.1 202 Accepted
Location: /teams/{team-id}/channels/{channel-id}/operations/{operation-id}
Content-Type: text/plain
Content-Length: 0
```

<!-- uuid: 9a9bb83f-6f35-4426-bb04-73ca43ad6cc8
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Unarchive channel",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
