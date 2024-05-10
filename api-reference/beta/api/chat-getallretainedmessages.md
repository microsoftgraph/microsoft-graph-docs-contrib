---
title: "chat: getAllRetainedMessages"
description: "Get retained messages from all chats that a user is a participant in, including one-on-one chats, group chats, and meeting chats."
author: "AgnesLiu"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# chat: getAllRetainedMessages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all retained messages from all [chats](../resources/chatmessage.md) that a user is a participant in, including one-on-one chats, group chats, and meeting chats.

To learn more about how to use the Microsoft Teams export APIs to export content, see [Export content with the Microsoft Teams export APIs](/microsoftteams/export-teams-content).

[!INCLUDE [teams-metered-apis](../../includes/teams-metered-apis.md)]

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

> **Note:**  
> This API requires [Teams Retention Policy setup](https://learn.microsoft.com/en-us/purview/create-retention-policies?tabs=teams-retention).
> To learn more about Teams Retention policy, see the [Manage retention policies for Microsoft Teams](/microsoftteams/retention-policies) for further details.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "chat_getallretainedmessages" } -->
[!INCLUDE [permissions-table](../includes/permissions/chat-getallretainedmessages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{id}/chats/getAllRetainedMessages
```

## Optional query parameters

The following example shows how to use the `model` query parameter with values `A` or `B` to select the preferred [licensing and payment model](/graph/teams-licenses). If you don't specify a payment model, [evaluation mode](/graph/teams-licenses#evaluation-mode-default-requirements) is used by default.

```http
GET /users/{id}/chats/getAllRetainedMessages?model=A
GET /users/{id}/chats/getAllRetainedMessages?model=B
```

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name    |Description|
|:--------|:----------|
| $filter | The [$filter](/graph/query-parameters#filter-parameter) query parameter supports date and time range queries on the **lastModifiedDateTime** property using [date range parameters](/graph/query-parameters).|
| $top    | Use the [$top](/graph/query-parameters#top-parameter) query parameter to control the number of items per response.|

The following example shows a request that uses the `$top` and `$filter` query parameters to get a list of retained chat messages.

```http
GET /users/{id}/chats/getAllRetainedMessages?$top=50&$filter=lastModifiedDateTime gt 2020-06-04T18:03:11.591Z and lastModifiedDateTime lt 2020-06-05T21:00:09.413Z
```

The following table lists examples that show how to use the `$filter` parameter.

|Scenario                                  | `$filter` parameter                                                                       |Possible values                                                                                             |
|:-----------------------------------------|:---------------------------------------------------------------------------------------|:-----------------------------------------------------------------------------------------------------------|
|Get messages sent by user identity type   |$filter=from/user/userIdentityType eq '{teamworkUserIdentityType}'                      |aadUser, onPremiseAadUser, anonymousGuest, federatedUser, personalMicrosoftAccountUser, skypeUser, phoneUser|
|Get messages sent by application type     |$filter=from/application/applicationIdentityType eq '{teamworkApplicationIdentity}'     |aadApplication, bot, tenantBot, office365Connector, outgoingWebhook                                         |
|Get messages sent by user ID              |$filter=from/user/id eq '{oid}'                                                         ||
|Get control (system event) messages       |$filter=messageType eq 'systemEventMessage'                                             ||
|Exclude control (system event) messages   |$filter=messageType ne 'systemEventMessage'                                             ||

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [chatMessage](../resources/chatmessage.md) objects in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "chatthis.getallretainedmessages"
}
-->
``` http
GET https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats/getAllRetainedMessages
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/chatthisgetallretainedmessages-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/chatthisgetallretainedmessages-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/chatthisgetallretainedmessages-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/chatthisgetallretainedmessages-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/chatthisgetallretainedmessages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/chatthisgetallretainedmessages-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/chatthisgetallretainedmessages-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/chatthisgetallretainedmessages-python-snippets.md)]
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
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(chatMessage)",
  "@odata.count": 10,
  "@odata.nextLink": "https://graph.microsoft.com/beta/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5/chats/getAllRetainedMessages?$skip=10",
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
      "eventDetail": null,
      "from": {
        "application": null,
        "device": null,
        "conversation": null,
        "user": {
          "id": "0de69e5e-2da8-4cf2-821f-5e6585b2c65b",
          "displayName": "Richard Wilson",
          "userIdentityType": "aadUser"
        }
      },
      "body": {
        "contentType": "html",
        "content": "<div>\n<blockquote itemscope=\"\" itemtype=\"http://schema.skype.com/Reply\" itemid=\"1600457867820\">\n<strong itemprop=\"mri\" itemid=\"8:orgid:0de69e5e-2da8-4cf2-821f-5e6585b2c65b\">Richard Wilson</strong><span itemprop=\"time\" itemid=\"1600457867820\"></span>\n<p itemprop=\"preview\">1237</p>\n</blockquote>\n<p>this is a reply</p>\n</div>"
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
