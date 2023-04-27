---
title: "deletedTeam: getAllMessages"
description: "Retrieve all messages across all channels in a deleted team."
author: agnesliu
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# deletedTeam: getAllMessages
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve all [messages](../resources/chatmessage.md) across all [channels](../resources/channel.md) in a [deleted team](../resources/deletedteam.md), including text, audio, and video conversations.

To learn more about using the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams Export APIs](/microsoftteams/export-teams-content).

[!INCLUDE [teams-model-A-and-B-disclaimer](../../includes/teams-model-A-and-B-disclaimer.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|ChannelMessage.Read.All|

> [!NOTE]
> Before you call this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/deletedTeams/{deletedTeamId}/channels/getAllMessages
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Optional query parameters

You can use the `model` query parameter, which supports the values `A` and `B`, based on the preferred [licensing and payment model](/graph/teams-licenses),
as shown in the following examples.  

```http
GET /teamwork/deletedTeams/{deletedTeamId}/channels/getAllMessages?model=A
GET /teamwork/deletedTeams/{deletedTeamId}/channels/getAllMessages?model=B
```

If the `model` parameter is not specified, the [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used.

This method supports the [$top](/graph/query-parameters#top-parameter) query parameter to control the number of items per response and the [$filter](/graph/query-parameters#filter-parameter) query parameter with the **dateTime** range query on **lastModifiedDateTime**. Other [OData query parameters](/graph/query-parameters) are currently not supported.

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [chatMessage](../resources/chatmessage.md) objects in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "deletedteamthis_getallmessages"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/deletedTeams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/getAllMessages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/deletedteamthis-getallmessages-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/deletedteamthis-getallmessages-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/deletedteamthis-getallmessages-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/deletedteamthis-getallmessages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/deletedteamthis-getallmessages-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(chatMessage)",
    "@odata.count": 2,
    "@odata.nextLink": "https://graph.microsoft.com/beta/teamwork/deletedTeams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/getAllMessages",
    "value": [
        {
            "@odata.type": "#microsoft.graph.chatMessage",
            "id": "1616990417393",
            "replyToId": null,
            "etag": "1616990417393",
            "messageType": "message",
            "createdDateTime": "2021-03-29T04:00:17.393Z",
            "lastModifiedDateTime": "2021-03-29T04:00:17.393Z",
            "lastEditedDateTime": null,
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": null,
            "importance": "normal",
            "locale": "en-us",
            "webUrl": "https://teams.microsoft.com/l/message/19%3Ad5d2708d408c41d98424c1c354c19db3%40thread.tacv2/1616990417393?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616990417393&parentMessageId=1616990417393",
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "conversation": null,
                "user": {
                    "id": "8ea0e38b-efb3-4757-924a-5f94061cf8c2",
                    "displayName": "Robin Kline",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "text",
                "content": "Test message"
            },
            "channelIdentity": {
                "teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
                "channelId": "19:d5d2708d408c41d98424c1c354c19db3@thread.tacv2"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        }
    ]
}
```

