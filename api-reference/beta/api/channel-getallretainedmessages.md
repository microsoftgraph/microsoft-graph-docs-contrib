---
title: "channel: getAllRetainedMessages"
description: "Get retained messages across all channels in a team."
author: "AgnesLiu"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# channel: getAllRetainedMessages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get retained [messages](../resources/chatmessage.md) across all [channels](../resources/channel.md) in a [team](../resources/team.md).

To learn more about how to use the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

[!INCLUDE [teams-metered-apis](../../includes/teams-metered-apis.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "channel_getallretainedmessages" } -->
[!INCLUDE [permissions-table](../includes/permissions/channel-getallretainedmessages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teams/{teamsId}/channels/getAllRetainedMessages
```

## Optional query parameters

The following example shows how to use the `model` query parameter with values `A` or `B` to select the preferred [licensing and payment model](/graph/teams-licenses). If you don't specify a `model`, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) is used by default.

```http
GET /teams/{team-id}/channels/getAllRetainedMessages?model=A
GET /teams/{team-id}/channels/getAllRetainedMessages?model=B
```

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name    |Description|
|:--------|:----------|
| $filter | The [$filter](/graph/query-parameters#filter-parameter) query parameter supports date and time range queries on the **lastModifiedDateTime** property.|
| $top    | Use the [$top](/graph/query-parameters#top-parameter) query parameter to control the number of items per response.|

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [chatMessage](../resources/chatmessage.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "channelthis.getallretainedmessages"
}
-->
``` http
GET https://graph.microsoft.com/beta/teams/8b081ef6-4792-4def-b2c9-c363a1bf41d5/channels/getAllRetainedMessages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/channelthisgetallretainedmessages-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/channelthisgetallretainedmessages-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/channelthisgetallretainedmessages-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/channelthisgetallretainedmessages-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/channelthisgetallretainedmessages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/channelthisgetallretainedmessages-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/channelthisgetallretainedmessages-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/channelthisgetallretainedmessages-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.chatMessage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(chatMessage)",
  "@odata.count": 2,
  "@odata.nextLink": "https://graph.microsoft.com/beta/teams/fbe2bf47-16c8-47cf-b4a5-4b9b187c508b/channels/getAllRetainedMessages?$skip=2",
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
    },
    {
      "@odata.type": "#microsoft.graph.chatMessage",
      "id": "1616990171266",
      "replyToId": "1616990032035",
      "etag": "1616990171266",
      "messageType": "message",
      "createdDateTime": "2021-03-29T03:56:11.266Z",
      "lastModifiedDateTime": "2021-03-29T03:56:11.266Z",
      "lastEditedDateTime": null,
      "deletedDateTime": null,
      "subject": null,
      "summary": null,
      "chatId": null,
      "importance": "normal",
      "locale": "en-us",
      "webUrl": "https://teams.microsoft.com/l/message/19%3A4a95f7d8db4c4e7fae857bcebe0623e6%40thread.tacv2/1616990171266?groupId=fbe2bf47-16c8-47cf-b4a5-4b9b187c508b&tenantId=2432b57b-0abd-43db-aa7b-16eadd115d34&createdTime=1616990171266&parentMessageId=1616990032035",
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
        "content": "Hello World"
      },
      "channelIdentity": {
        "teamId": "fbe2bf47-16c8-47cf-b4a5-4b9b187c508b",
        "channelId": "19:4a95f7d8db4c4e7fae857bcebe0623e6@thread.tacv2"
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
