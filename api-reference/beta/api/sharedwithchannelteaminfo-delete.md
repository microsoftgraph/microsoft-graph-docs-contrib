---
title: "Delete sharedWithChannelTeamInfo"
description: "Delete a team from a shared channel."
author: "devjha-ms"
doc_type: "apiPageType"
ms.localizationpriority: high
ms.subservice: "teams"
---

# Delete sharedWithChannelTeamInfo
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unshare a [channel](../resources/channel.md) with a [team](../resources/team.md) by deleting the corresponding [sharedWithChannelTeamInfo](../resources/sharedwithchannelteaminfo.md) resource. This operation is allowed only for channels with a **membershipType** value of `shared`.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharedwithchannelteaminfo_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharedwithchannelteaminfo-delete-permissions.md)]


> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /teams/{team-id}/channels/{channel-id}/sharedWithTeams/{shared-with-channel-team-info-id}
```

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

The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "unshare_channel_by_delete_sharedwithchannelteaminfo",
  "sampleKeys": ["ece6f0a1-7ca4-498b-be79-edf6c8fc4d82", "19%3A56eb04e133944cf69e603c5dac2d292e%40thread.skype", "ece6f0a1-5g39-498b-be79-edf6c8fc4d82"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/teams/ece6f0a1-7ca4-498b-be79-edf6c8fc4d82/channels/19%3A56eb04e133944cf69e603c5dac2d292e%40thread.skype/sharedWithTeams/ece6f0a1-5g39-498b-be79-edf6c8fc4d82
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/unshare-channel-by-delete-sharedwithchannelteaminfo-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/unshare-channel-by-delete-sharedwithchannelteaminfo-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/unshare-channel-by-delete-sharedwithchannelteaminfo-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/unshare-channel-by-delete-sharedwithchannelteaminfo-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/unshare-channel-by-delete-sharedwithchannelteaminfo-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/unshare-channel-by-delete-sharedwithchannelteaminfo-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/unshare-channel-by-delete-sharedwithchannelteaminfo-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/unshare-channel-by-delete-sharedwithchannelteaminfo-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

## Related content

- [Remove member from channel](channel-delete-members.md)
- [Remove member from team](team-delete-members.md)
