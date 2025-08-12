---
title: "channel: archive"
description: "Archive a channel in a team."
author: "sumitgupta3"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 08/13/2024
ms.custom: sfi-ga-nochange
---

# channel: archive

Namespace: microsoft.graph

Archive a [channel](../resources/channel.md) in a team. When a channel is archived, users can't send new messages or react to existing messages in the channel, edit the channel settings, or make other changes to the channel.

You can delete an archived channel or add and remove members from it. If you archive a team, its channels are also archived.

Archiving is an asynchronous operation; a channel is archived after the asynchronous archiving operation completes successfully, which might occur after the response returns.

A channel without an owner or that belongs to a [group](../resources/group.md) that has no owner, can't be archived.

To restore a channel from its archived state, use the [channel: unarchive](channel-unarchive.md) method. A channel can’t be archived or unarchived if its team is archived.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_archive" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-archive-permissions.md)]

> **Note**: This API supports admin permissions. Users with the Global Administrator or Microsoft Teams service admin roles can access teams that they aren't members of.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/channels/{channel-id}/archive
POST /groups/{team-id}/team/channels/{channel-id}/archive
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Optional.  |

## Request body

In the request body, you can optionally provide a JSON object with the following parameter.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
|shouldSetSpoSiteReadOnlyForMembers|Boolean|Defines whether to set permissions for channel members to read-only on the SharePoint Online site associated with the team. If you set it to `false` or omit the parameter, this step is skipped.|

The following example shows the request body with **shouldSetSpoSiteReadOnlyForMembers** set to `true`.

```json
{
  "shouldSetSpoSiteReadOnlyForMembers": true
}
```

## Response

If archiving is started successfully, this method returns a `202 Accepted` response code. The response contains a `Location` header that specifies the location of the [teamsAsyncOperation](../resources/teamsasyncoperation.md) that was created to handle the archiving of the channel in a team. Check the status of the archiving operation by making a GET request to this location.

## Examples

### Example 1: Archive a channel

The following example shows a request to archive a channel.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "archive_channel",
  "sampleKeys": ["16dc05c0-2259-4540-a970-3580ff459721", "19:v32db348d9264477abcf18ffa2cf76dc@thread.tacv2"]
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/16dc05c0-2259-4540-a970-3580ff459721/channels/19:v32db348d9264477abcf18ffa2cf76dc@thread.tacv2/archive
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/archive-channel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/archive-channel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/archive-channel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/archive-channel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/archive-channel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/archive-channel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/archive-channel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "name": "archive_channel"
}-->
```http
HTTP/1.1 202 Accepted
Location: /teams/16dc05c0-2259-4540-a970-3580ff459721/operations/b7ee702a-d87f-4cc6-82b9-e731c16d3aba
Content-Type: text/plain
Content-Length: 0
```

### Example 2: Archive a channel when the team is archived

The following example shows a request to archive a channel that fails because the team is archived; the team must be active to archive or unarchive a channel.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "archive_channel_on_archived_team",
  "sampleKeys": ["16dc05c0-2259-4540-a970-3580ff459721", "19:v32db348d9264477abcf18ffa2cf76dc@thread.tacv2"]
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/16dc05c0-2259-4540-a970-3580ff459721/channels/19:v32db348d9264477abcf18ffa2cf76dc@thread.tacv2/archive
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/archive-channel-on-archived-team-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/archive-channel-on-archived-team-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/archive-channel-on-archived-team-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/archive-channel-on-archived-team-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/archive-channel-on-archived-team-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/archive-channel-on-archived-team-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/archive-channel-on-archived-team-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the `400 Bad Request` response code with a corresponding error message.

<!-- {
  "blockType": "response",
  "name": "archive_channel_on_archived_team",
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
