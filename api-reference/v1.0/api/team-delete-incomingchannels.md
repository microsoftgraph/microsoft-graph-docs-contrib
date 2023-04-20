---
title: "Remove channel"
description: "Remove an incoming channel."
author: "devjha-ms"
doc_type: "apiPageType"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
---

# Remove channel
Namespace: microsoft.graph

Remove an incoming [channel](../resources/channel.md) (a **channel** shared with a **team**) from a [team](../resources/team.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Channel.Delete.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Channel.Delete.All |


> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /teams/{team-id}/incomingChannels/{incoming-channel-id}/$ref
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_sharedwithchannelteaminfo_for_channel",
  "sampleKeys": ["ece6f0a1-7ca4-498b-be79-edf6c8fc4d82", "19%3A56eb04e133944cf69e603c5dac2d292e%40thread.skype"]
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/teams/ece6f0a1-7ca4-498b-be79-edf6c8fc4d82/incomingChannels/19%3A56eb04e133944cf69e603c5dac2d292e%40thread.skype/$ref
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-sharedwithchannelteaminfo-for-channel-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-sharedwithchannelteaminfo-for-channel-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

## See also

- [Remove member from channel](channel-delete-members.md)
- [Remove member from team](team-delete-members.md)
