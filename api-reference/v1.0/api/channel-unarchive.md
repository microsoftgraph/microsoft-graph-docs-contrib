---
title: "channel: unarchive"
description: "Restore an archived channel in a team."
ms.localizationpriority: medium
author: "sumitgupta3"
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 08/13/2024
ms.custom: sfi-ga-nochange
---

# channel: unarchive

Namespace: microsoft.graph

Restore an archived [channel](../resources/channel.md). Unarchiving restores the ability for users to send messages and edit the channel. Channels are archived via the [channel: archive](channel-archive.md) method.

Unarchiving is an asynchronous operation; a channel is unarchived when the asynchronous unarchiving operation completes successfully, which might occur after this method responds.

> **Note**: An archived channel that belongs to an archived team can't be unarchived. Unarchive the team before you unarchive the channel; otherwise, the request fails.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_unarchive" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-unarchive-permissions.md)]

> **Note**: This API supports admin permissions. Users with the Global Administrator or Microsoft Teams service admin roles can access teams that they aren't a member of.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /teams/{team-id}/channels/{channel-id}/unarchive
POST /groups/{team-id}/team/channels/{channel-id}/unarchive
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If unarchiving is started successfully, this method returns a `202 Accepted` response code. The response contains a `Location` header that specifies the location of the [teamsAsyncOperation](../resources/teamsasyncoperation.md) that was created to handle the unarchiving of the channel in a team. Check the status of the unarchiving operation by making a GET request to this location.

## Examples

### Example 1: Unarchive a channel

The following example shows a request to unarchive a channel.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unarchive_channel",
  "sampleKeys": ["16dc05c0-2259-4540-a970-3580ff459721", "19:v32db348d9264477abcf18ffa2cf76dc@thread.tacv2"]
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/16dc05c0-2259-4540-a970-3580ff459721/channels/19:v32db348d9264477abcf18ffa2cf76dc@thread.tacv2/unarchive
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/unarchive-channel-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/unarchive-channel-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unarchive-channel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unarchive-channel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/unarchive-channel-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/unarchive-channel-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/unarchive-channel-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "name": "unarchive_channel"
}-->
```http
HTTP/1.1 202 Accepted
Location: /teams/16dc05c0-2259-4540-a970-3580ff459721/operations/b7ee702a-d87f-4cc6-82b9-e731c16d3aba
Content-Type: text/plain
Content-Length: 0
```

### Example 2: Unarchive a channel when the team is archived

The following example shows a request to unarchive a channel that fails because the team is archived; the team must be active to archive or unarchive a channel.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unarchive_channel_on_archived_team",
  "sampleKeys": ["16dc05c0-2259-4540-a970-3580ff459721", "19:v32db348d9264477abcf18ffa2cf76dc@thread.tacv2"]
}-->
```http
POST https://graph.microsoft.com/v1.0/teams/16dc05c0-2259-4540-a970-3580ff459721/channels/19:v32db348d9264477abcf18ffa2cf76dc@thread.tacv2/unarchive
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/unarchive-channel-on-archived-team-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/unarchive-channel-on-archived-team-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unarchive-channel-on-archived-team-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unarchive-channel-on-archived-team-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/unarchive-channel-on-archived-team-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/unarchive-channel-on-archived-team-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/unarchive-channel-on-archived-team-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
