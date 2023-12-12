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

Restore an archived [channel](../resources/channel.md). This restores user's ability to send messages and edit the channel. Channels are archived using the [archive](channel-archive.md) API.

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
POST /groups/{team-id}/team/channels/{channel-id}/unarchive
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
The following is an example of a request with success.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unarchive_channel"
}-->
```http
POST https://graph.microsoft.com/beta/teams/5crrrtrd5-e41c-4f18-ab8awfd-f36ca7dd11231de/channels/5ceebed5-o45u-334o-sve3-f36ca7dd31de/unarchive
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
Location: /teams/5crrrtrd5-e41c-4f18-ab8awfd-f36ca7dd11231de/operations/5cr4f18ab8awfdf36
Content-Type: text/plain
Content-Length: 0
```


### Request
The following is an example of a request when **Team is archived**.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "archive_channel"
}-->
```http
POST https://graph.microsoft.com/beta/teams/5crrrtrd5-e41c-4f18-ab8awfd-f36ca7dd11231de/channels/5ceebed5-o45u-334o-sve3-f36ca7dd31de/unarchive
```

---

### Response
The following is an example of a response with 400.
<!-- {
  "blockType": "response",
  "name": "archive_channel"
}-->
```http
http/1.1 400 Bad Request
Content-Type: application/json
Content-Length: 193

{
    "error": {
        "code": "BadRequest",
        "message": "Team has to be active, for channel to be archived or unarchived: 5ceebed5-o45u-334o-sve3-f36ca7dd31de",
        "innerError": {
            "message": "Team has to be active, for channel to be archived or unarchived: 5ceebed5-o45u-334o-sve3-f36ca7dd31de",
            "code": "Unknown",
            "innerError": {},
            "date": "2023-12-11T04:26:35",
            "request-id": "8f897345980-f6f3-49dd-83a8-a3064eeecdf8",
            "client-request-id": "50a0er33-4567-3f6c-01bf-04d144fc8bbe"
        }
    }
}

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
