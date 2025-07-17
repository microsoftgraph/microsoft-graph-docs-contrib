---
title: "chats: getAllMessages"
description: "Get all messages from all chats in which a user is a participant."
author: "RamjotSingh"
ms.localizationpriority: high
ms.subservice: "teams"
doc_type: apiPageType
ms.date: 05/21/2024
---

# chats: getAllMessages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all messages from all [chats](../resources/chatmessage.md) in which a user is a participant, including one-on-one chats, group chats, and meeting chats.

To learn more about how to use the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

[!INCLUDE [teams-metered-apis](../../includes/teams-metered-apis.md)]

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chats_getallmessages" } -->
[!INCLUDE [permissions-table](../includes/permissions/chats-getallmessages-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | user-principal-name}/chats/getAllMessages
```

## Optional query parameters

You can use the `model` query parameter, which supports the values `A` and `B`, based on the preferred [licensing and payment model](/graph/teams-licenses),
as shown in the following examples.

<!-- { "blockType": "ignored" } -->
```http
GET /users/{id | user-principal-name}/chats/getAllMessages?model=A
GET /users/{id | user-principal-name}/chats/getAllMessages?model=B
```

If no `model` parameter is specified, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) will be used.

This method also supports [date range parameters](/graph/query-parameters) to customize the response, as shown in the following example.

<!-- { "blockType": "ignored" } -->
``` http
GET /users/{id}/chats/getAllMessages?$top=50&$filter=lastModifiedDateTime gt 2020-06-04T18:03:11.591Z and lastModifiedDateTime lt 2020-06-05T21:00:09.413Z
```

This method supports also supports `$filter`. The following table lists examples.

|Scenario                                  | `$filter` parameter                                                                       |Possible values                                                                                             |
|:-----------------------------------------|:---------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------|
|Get messages sent by user identity type   |$filter=from/user/userIdentityType eq '{teamworkUserIdentityType}'                      |aadUser, onPremiseAadUser, anonymousGuest, federatedUser, personalMicrosoftAccountUser, skypeUser, phoneUser|
|Get messages sent by application type     |$filter=from/application/applicationIdentityType eq '{teamworkApplicationIdentity}'     |aadApplication, bot, tenantBot, office365Connector, outgoingWebhook                                         |
|Get messages sent by user ID              |$filter=from/user/id eq '{oid}'                                                         ||
|Get control(system event) messages        |$filter=messageType eq 'systemEventMessage'                                             ||
|Exclude control (system event) messages   |$filter=messageType ne 'systemEventMessage'                                             ||

>**Note:** These filter clauses can be joined by using the `or` operator. A filter clause can appear more than once in a query, and it can filter on a different value each time it appears within the query.

## Request headers
| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Response

If successful, this method returns a `200 OK` response code and a list of [chatMessages](../resources/chatmessage.md) in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chat_getallmessages_1"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats/getAllMessages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/chat-getallmessages-1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/chat-getallmessages-1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/chat-getallmessages-1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/chat-getallmessages-1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/chat-getallmessages-1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/chat-getallmessages-1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/chat-getallmessages-1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
   "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(chatMessage)",
   "@odata.count":10,
   "@odata.nextLink":"https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats/getAllMessages?$skip=10",
   "value":[
      {
         "@odata.type":"#microsoft.graph.chatMessage",
         "id":"1600457965467",
         "replyToId":null,
         "etag":"1600457965467",
         "messageType":"message",
         "createdDateTime":"2020-09-18T19:39:25.467Z",
         "lastModifiedDateTime":"2020-09-18T19:39:25.467Z",
         "lastEditedDateTime":null,
         "deletedDateTime":null,
         "subject":null,
         "summary":null,
         "chatId":"19:0de69e5e-2da8-4cf2-821f-5e6585b2c65b_5c64e248-3269-4268-a36e-0f80314e9c39@unq.gbl.spaces",
         "importance":"normal",
         "locale":"en-us",
         "webUrl":null,
         "channelIdentity":null,
         "policyViolation":null,
         "eventDetail": null,
         "from":{
            "application":null,
            "device":null,
            "conversation":null,
            "user":{
               "id":"0de69e5e-2da8-4cf2-821f-5e6585b2c65b",
               "displayName":"Richard Wilson",
               "userIdentityType":"aadUser"
            }
         },
         "body":{
            "contentType":"html",
            "content":"<div>\n<blockquote itemscope=\"\" itemtype=\"http://schema.skype.com/Reply\" itemid=\"1600457867820\">\n<strong itemprop=\"mri\" itemid=\"8:orgid:0de69e5e-2da8-4cf2-821f-5e6585b2c65b\">Richard Wilson</strong><span itemprop=\"time\" itemid=\"1600457867820\"></span>\n<p itemprop=\"preview\">1237</p>\n</blockquote>\n<p>this is a reply</p>\n</div>"
         },
         "attachments":[

         ],
         "mentions":[

         ],
         "reactions":[

         ]
      }
   ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "chats: getallmessages",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->

## Related content

[Microsoft Graph service-specific throttling limits](/graph/throttling-limits#microsoft-teams-service-limits)
