---
title: "deletedTeam: getAllMessages"
description: "Retrieve all messages across channels in a deleted team."
author: agnesliu
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# deletedTeam: getAllMessages
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve [messages](../resources/chatmessage.md) across all [channels](../resources/channel.md) in a [deleted team](../resources/deletedteam.md), including text, audio, and video conversations.

To learn more about using the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported|
|Delegated (personal Microsoft account)|Not supported|
|Application|ChannelMessage.Read.All|

> [!NOTE]
> Before calling this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/deletedTeam/{deletedTeamId}/getAllMessages
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Optional query parameters

You can use `model` query parameter, which supports the values `A` and `B`, based on the preferred [licensing and payment model](/graph/teams-licenses),
as shown in the following examples.  
If no `model` is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used.

```http
GET /teams/{team-id}/channels/getAllMessages?model=A
GET /teams/{team-id}/channels/getAllMessages?model=B
```
If no `model` parameter is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used. 

You can use the [$top](/graph/query-parameters#top-parameter) query parameter to control the number of items per response.
Additionally, [$filter](/graph/query-parameters#filter-parameter) is supported with **dateTime** range query on **lastModifiedDateTime**. The other [OData query parameters](/graph/query-parameters) are not currently supported.

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [chatMessage](../resources/chatmessage.md) collection in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "deletedteamthis.getallmessages"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/deletedTeam({deletedTeamId})/getAllMessages
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.chatMessage)"
}
-->
``` http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(chatMessage)",
    "@odata.count": 1,
    "@odata.nextLink": "https://graph.microsoft.com/beta/teamwork/deletedTeam({deletedTeamId})/getAllMessages?$top={topValue}&$skiptoken={skipToken}",
    "value": [
        {
            "@odata.type": "#microsoft.graph.chatMessage",
            "id": "{messageId}}",
            "replyToId": null,
            "etag": "1642795810017",
            "messageType": "message",
            "createdDateTime": "2022-01-21T19:53:42.859Z",
            "lastModifiedDateTime": "2022-01-21T20:10:10.017Z",
            "lastEditedDateTime": "2022-01-21T20:10:09.782Z",
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": null,
            "importance": "normal",
            "locale": "en-us",
            "webUrl": "https://teams.microsoft.com/l/message/{channelId}/{id}}?groupId={teamId}&tenantId={tenantId}}&createdTime={timeStamp}&parentMessageId={parentMessageId}}",
            "onBehalfOf": null,
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "user": {
                    "id": ""{userId}"",
                    "displayName": "{userName}",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "html",
                "content": "{content}"
            },
            "channelIdentity": {
                "teamId": "{teamId}}",
                "channelId": "{channelId}}"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        }
    ]
}
```

