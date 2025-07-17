---
title: "channel: getAllMessages"
description: "Retrieve all messages across channels in a team."
author: "RamjotSingh"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 04/04/2024
---

# channel: getAllMessages

Namespace: microsoft.graph

Retrieve [messages](../resources/chatmessage.md) across all [channels](../resources/channel.md) in a [team](../resources/team.md), including text, audio, and video conversations.

To learn more about how to use the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

[!INCLUDE [teams-metered-apis](../../includes/teams-metered-apis.md)]

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_getallmessages" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-getallmessages-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /teams/{team-id}/channels/getAllMessages
```

## Optional query parameters

You can use `model` query parameter, which supports the values `A` and `B`, based on the preferred [licensing and payment model](/graph/teams-licenses),
as shown in the following examples.  
If no `model` is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used.

```http
GET /teams/{team-id}/channels/getAllMessages?model=A
GET /teams/{team-id}/channels/getAllMessages?model=B
```

If no `model` is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used. 

You can use the [$top](/graph/query-parameters#top-parameter) query parameter to control the number of items per response.
Additionally, [$filter](/graph/query-parameters#filter-parameter) is supported with **dateTime** range query on **lastModifiedDateTime**. The other [OData query parameters](/graph/query-parameters) aren't currently supported.

## Request headers

|Name |Description |
|:--------------|:------------|
|Authorization |Bearer {code}. Required. |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and also returns all the messages in all the public and private channels.

## Example

### Request

The following example shows a request.



# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "channel_getallchannelmessages_1"
}-->
``` http
GET https://graph.microsoft.com/v1.0/teams/01fe12e0-e720-44fd-8854-28c66d1bee40/channels/getAllMessages?$filter=lastModifiedDateTime+gt+2019-11-01T00:00:00Z+and lastModifiedDateTime+lt+2021-11-01T00:00:00Z
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/channel-getallchannelmessages-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/channel-getallchannelmessages-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/channel-getallchannelmessages-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/channel-getallchannelmessages-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/channel-getallchannelmessages-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/channel-getallchannelmessages-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/channel-getallchannelmessages-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage",
  "isCollection": true
} -->
``` http
HTTP/1.1 200 OK

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#Collection(chatMessage)",
    "@odata.count": 2,
    "@odata.nextLink": "https://graph.microsoft.com/v1.0/teams('01fe12e0-e720-44fd-8854-28c66d1bee40')/channels/getallMessages?$skiptoken=U2tpcFZhbHVlPTAjUHJpdmF0ZUNoYW5uZWxJZD0xOTpmYWU5YTJmZjk1ZGE0ZTEwOWE1YTg3ZTM5Y2FkOGYyYkB0aHJlYWQudGFjdjIjVXNlcklkPTBkN2M2M2QzLTEzMDYtNGVlYy04ZjIxLTU4OGE3MGZiNmVmMSNNYWlsYm94Rm9sZGVyPU1haWxGb2xkZXJzL1RlYW1DaGF0&$filter=lastModifiedDateTime+gt+2019-11-01T00%3a00%3a00Z+and+lastModifiedDateTime+lt+2021-11-01T00%3a00%3a00Z",
    "value": [
        {
            "@odata.type": "#microsoft.graph.chatMessage",
            "id": "1622071758431",
            "replyToId": "1622071642456",
            "etag": "1622071758431",
            "messageType": "message",
            "createdDateTime": "2021-05-26T23:29:18.431Z",
            "lastModifiedDateTime": "2021-05-26T23:29:18.431Z",
            "lastEditedDateTime": null,
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": null,
            "importance": "normal",
            "locale": "en-us",
            "webUrl": "https://teams.microsoft.com/l/message/19%3Afae9a2ff95da4e109a5a87e39cad8f2b%40thread.tacv2/1622071758431?groupId=01fe12e0-e720-44fd-8854-28c66d1bee40&tenantId=9854dc85-3fb3-4f8e-a055-9cdc5523024d&createdTime=1622071758431&parentMessageId=1622071642456",
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "user": {
                    "id": "0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5",
                    "displayName": "user1 a",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "html",
                "content": "<div>\n<div itemprop=\"copy-paste-block\">reply 9&nbsp;to new conv</div>\n</div>"
            },
            "channelIdentity": {
                "teamId": "01fe12e0-e720-44fd-8854-28c66d1bee40",
                "channelId": "19:fae9a2ff95da4e109a5a87e39cad8f2b@thread.tacv2"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        },
        {
            "@odata.type": "#microsoft.graph.chatMessage",
            "id": "1622071764529",
            "replyToId": "1622071642456",
            "etag": "1622071764529",
            "messageType": "message",
            "createdDateTime": "2021-05-26T23:29:24.529Z",
            "lastModifiedDateTime": "2021-05-26T23:29:24.529Z",
            "lastEditedDateTime": null,
            "deletedDateTime": null,
            "subject": null,
            "summary": null,
            "chatId": null,
            "importance": "normal",
            "locale": "en-us",
            "webUrl": "https://teams.microsoft.com/l/message/19%3Afae9a2ff95da4e109a5a87e39cad8f2b%40thread.tacv2/1622071764529?groupId=01fe12e0-e720-44fd-8854-28c66d1bee40&tenantId=9854dc85-3fb3-4f8e-a055-9cdc5523024d&createdTime=1622071764529&parentMessageId=1622071642456",
            "policyViolation": null,
            "eventDetail": null,
            "from": {
                "application": null,
                "device": null,
                "user": {
                    "id": "0b4f1cf6-54c8-4820-bbb7-2a1f4257ade5",
                    "displayName": "user1 a",
                    "userIdentityType": "aadUser"
                }
            },
            "body": {
                "contentType": "html",
                "content": "<div>\n<div itemprop=\"copy-paste-block\">reply 10 to new conv</div>\n</div>"
            },
            "channelIdentity": {
                "teamId": "01fe12e0-e720-44fd-8854-28c66d1bee40",
                "channelId": "19:fae9a2ff95da4e109a5a87e39cad8f2b@thread.tacv2"
            },
            "attachments": [],
            "mentions": [],
            "reactions": []
        }
    ]
}
```

## Related content

[Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
