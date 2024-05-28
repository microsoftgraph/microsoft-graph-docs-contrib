---
title: "channel: unarchive"
description: "Restore an archived channel in a team."
ms.localizationpriority: medium
author: "sumitgupta3"
ms.subservice: "teams"
doc_type: apiPageType
---

# channel: unarchive

Namespace: microsoft.graph

Restore an archived [channel](../resources/channel.md). Unarchiving restores the ability for users to send messages and edit the channel. Channels are archived via the [channel: archive](channel-archive.md) method.

Unarchiving is an asynchronous operation; a channel is unarchived when the asynchronous unarchive operation completes successfully, which might occur after this method responds.

> **Note**: An archived channel that belongs to an archived team can't be unarchived. Unarchive the team before you unarchive the channel; otherwise, the request fails.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | ChannelSettings.ReadWrite.All | 
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChannelSettings.ReadWrite.All | 

> **Note**: This API supports admin permissions. Users with the Global Administrator or Microsoft Teams service admin roles can access teams that they aren't a member of.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/channels/{channel-id}/unarchive
POST /groups/{team-id}/team/channels/{channel-id}/unarchive
```

## Request headers

| Header       | Value |
|:-------------|:------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If unarchiving is started successfully, this method returns a `202 Accepted` response code. The response contains a `Location` header that specifies the location of the [teamsAsyncOperation](../resources/teamsasyncoperation.md) that was created to handle the unarchiving of the channel in a team. Check the status of the unarchiving operation by making a GET request to this location.

## Examples

### Example 1: Unarchive a channel

The following example shows a request to unarchive a channel.

#### Request

<!-- {
  "blockType": "request",
  "name": "unarchive_channel"
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/{team-id}/channels/{channel-id}/unarchive
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "name": "unarchive_channel"
}-->
```http
HTTP/1.1 202 Accepted
Location: /teams/{team-id}/operations/{operation-id}
Content-Type: text/plain
Content-Length: 0
```

### Example 2: Unarchive a channel when the team is archived

The following example shows a request to unarchive a channel that fails because the team is archived; the team must be active to archive or unarchive a channel.

#### Request

<!-- {
  "blockType": "request",
  "name": "unarchive_channel_on_archived_team"
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/{team-id}/channels/{channel-id}/unarchive
```

#### Response

The following example shows the `400 Bad Request` response code with a corresponding error message.

<!-- {
  "blockType": "response",
  "name": "unarchive_channel_on_archived_team",
  "@odata.type": "microsoft.graph.publicError",
  "truncated": true
}-->
```http
http/1.1 400 Bad Request
Content-Type: application/json
Content-Length: 193

{
    "error": {
        "code": "BadRequest",
        "message": "Team has to be active, for channel to be archived or unarchived: {channel-id}",
        "innerError": {
            "message": "Team has to be active, for channel to be archived or unarchived: {channel-id}",
            "code": "Unknown",
            "innerError": {},
            "date": "2023-12-11T04:26:35",
            "request-id": "8f897345980-f6f3-49dd-83a8-a3064eeecdf8",
            "client-request-id": "50a0er33-4567-3f6c-01bf-04d144fc8bbe"
        }
    }
}
```
