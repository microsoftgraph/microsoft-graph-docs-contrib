---
title: "Get allChatMessages"
description: "Retrieve all 1:1, group chats, meeting chats and Private channel messages"
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get allChatMessages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

> [!Important] 
> APIs under the /beta version in Microsoft Graph are subject to change. Use of these APIs in production applications is not supported. To determine whether an API is available in v1.0, use the Version selector.

Retrieve all 1:1, group chats, meeting chats and Private channel messages the user is involved in.

## Permissions

The following permissions are required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Application | Chat.Read.All |

> [!NOTE]
> Before calling this API with application permissions, you must request access. For details, see [Protected APIs in Microsoft Teams](/graph/teams-protected-apis).

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET https://graph.microsoft.com/beta/users/{id}/chats/allMessages
```

## Optional query parameters

This operation supports [date range parameters](/graph/query-parameters) to customize the response.

GET https://graph.microsoft.com/beta/users/{id}/chats/allMessages?$top=50&$filter=lastModifiedDateTime gt 2020-06-04T18:03:11.591Z and lastModifiedDateTime lt 2020-06-05T21:00:09.413Z

## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body


## Response

If successful, this method returns a `200 OK` response code and a list of[chatmessages](../resources/chatmessage.md) in the response body.

## Example
##### Request
Here is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_chat_message"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/{id}/chats/allMessages
```
# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-chat-message-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-chat-message-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Objective-C](#tab/objc)
[!INCLUDE [sample-code](../includes/snippets/objc/get-chat-message-objc-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


##### Response
Here is an example of the response. 

>**Note:** The response object shown here is shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.chatMessage"
} -->
```http
HTTP/1.1 200 OK 
Content-type: application/json 
Content-length: 201 

{ 
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(chatMessage)", 
    "@odata.count": 10, 
    "@odata.nextLink": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats/allMessages?$skip=10", 
    "value": [ 
{ 
            "@odata.type": "#microsoft.graph.chatMessage", 
            "id": "1600457965467", 
            "replyToId": null, 
            "etag": "1600457965467", 
            "messageType": "message", 
            "createdDateTime": "2020-09-18T19:39:25.467Z", 
            "lastModifiedDateTime": "2020-09-18T19:39:25.467Z", 
            "lastEditedDateTime": null, 
            "deletedDateTime": null, 
            "subject": null, 
            "summary": null, 
            "chatId": "19:0de69e5e-2da8-4cf2-821f-5e6585b2c65b_5c64e248-3269-4268-a36e-0f80314e9c39@unq.gbl.spaces", 
            "importance": "normal", 
            "locale": "en-us", 
            "webUrl": null, 
            "channelIdentity": null, 
            "policyViolation": null, 
            "from": { 
                "application": null, 
                "device": null, 
                "conversation": null, 
                "user": { 
                    "id": "0de69e5e-2da8-4cf2-821f-5e6585b2c65b", 
                    "displayName": "Avinash Ravi", 
                    "userIdentityType": "aadUser"                } 
            }, 
            "body": { 
                "contentType": "html", 
                "content": "<div>\n<blockquote itemscope=\"\" itemtype=\"http://schema.skype.com/Reply\" itemid=\"1600457867820\">\n<strong itemprop=\"mri\" itemid=\"8:orgid:0de69e5e-2da8-4cf2-821f-5e6585b2c65b\">Avinash Ravi</strong><span itemprop=\"time\" itemid=\"1600457867820\"></span>\n<p itemprop=\"preview\">1237</p>\n</blockquote>\n<p>this is a reply</p>\n</div>"            }, 
            "attachments": [], 
            "mentions": [], 
            "reactions": [] 
        } 
 
  ]
}
```
