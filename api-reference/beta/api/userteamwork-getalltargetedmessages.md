---
title: "userTeamwork: getAllTargetedMessages"
description: "Get all targeted messages sent to a specific user in group chats and channels."
author: "devjha-ms"
ms.date: 02/16/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# userTeamwork: getAllTargetedMessages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all [targeted messages](../resources/targetedchatmessage.md) sent to a specific user in group chats and channels.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userteamwork_getalltargetedmessages" } -->
[!INCLUDE [permissions-table](../includes/permissions/userteamwork-getalltargetedmessages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{user-id | userPrincipalName}/teamwork/getAllTargetedMessages
```

## Optional query parameters

This method supports the following OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

| Name    |Description|
|:--------|:----------|
| $filter | The [$filter](/graph/query-parameters#filter-parameter) query parameter supports date and time range queries on the **lastModifiedDateTime** property using [date range parameters](/graph/query-parameters).|
| $top    | Use the [$top](/graph/query-parameters#top-parameter) query parameter to control the number of items per response.|

### Supported $filter operators

The following filter expressions are supported:

- `lastModifiedDateTime gt {datetime}` - Returns messages modified after the specified date and time.
- `lastModifiedDateTime lt {datetime}` - Returns messages modified before the specified date and time.
- `from/application/id eq '{id}'` - Returns messages sent by a specific application ID.

You can combine multiple filter expressions using the `and` operator. For example:
```http
GET /users/{user-id | userPrincipalName}/teamwork/getAllTargetedMessages?$filter=lastModifiedDateTime gt 2024-01-01T00:00:00Z and lastModifiedDateTime lt 2024-12-31T23:59:59Z
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [targetedChatMessage](../resources/targetedchatmessage.md) objects in the response body.

The response includes the **@odata.nextLink** property for pagination and the **@odata.deltaLink** property for delta tracking, when applicable.

## Examples

### Example 1: Get all targeted messages for a user

The following example shows how to retrieve all targeted messages for a user.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "userteamwork_getalltargetedmessages",
  "sampleKeys": ["f47b5f54-6968-4706-a522-31e842b12345"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/f47b5f54-6968-4706-a522-31e842b12345/teamwork/getAllTargetedMessages
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/userteamwork-getalltargetedmessages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response that includes both chat and channel context–targeted messages.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.targetedChatMessage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(targetedChatMessage)",
  "@odata.count": 2,
  "@odata.nextLink": "https://graph.microsoft.com/beta/users/f47b5f54-6968-4706-a522-31e842b12345/teamwork/getAllTargetedMessages?$top=2&$skiptoken=U2tpcFZhbHVlPTIjTWFpbGJveEZvbGRlcj1NYWlsRm9sZGVycy9UZWFtc01lc3NhZ2VzRGF0YQ",
  "value": [
    {
      "id": "1580849738240",
      "@odata.type": "#microsoft.graph.targetedChatMessage",
      "replyToId": null,
      "etag": "1580849738240",
      "chatId": "19:eeaa4e946d674c4f8d4dded613780f45@thread.v2",
      "channelIdentity": null,
      "messageType": "message",
      "createdDateTime": "2020-02-04T20:55:38.24Z",
      "lastModifiedDateTime": null,
      "deletedDateTime": null,
      "subject": null,
      "summary": null,
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "policyViolation": null,
      "from": {
        "device": null,
        "user": null,
        "application": {
          "@odata.type": "#microsoft.graph.teamworkApplicationIdentity",
          "id": "6d23e712-527b-406f-8d59-d02927885918",
          "displayName": "Breakthru",
          "applicationIdentityType": "bot"
        }
      },
      "body": {
        "contentType": "text",
        "content": "hello"
      },
      "attachments": [],
      "mentions": [],
      "reactions": [],
      "recipient": {
        "@odata.type": "#microsoft.graph.identity",
        "id": "1273a016-201d-4f95-8083-1b7f99b3edeb",
        "displayName": "Adele Vance"
      }
    },
    {
      "id": "1580849738241",
      "@odata.type": "#microsoft.graph.targetedChatMessage",
      "replyToId": null,
      "etag": "1580849738241",
      "chatId": null,
      "channelIdentity": {
        "channelId": "19:eeaa4e946d674c4f8d4dded613780f45@thread.v2",
        "teamId": "3Aeeaa4e946d674c4f8d4dded613780f45@thread.v2"
      },
      "messageType": "message",
      "createdDateTime": "2020-02-04T20:55:38.24Z",
      "lastModifiedDateTime": null,
      "deletedDateTime": null,
      "subject": null,
      "summary": null,
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "policyViolation": null,
      "from": {
        "device": null,
        "user": null,
        "application": {
          "@odata.type": "#microsoft.graph.teamworkApplicationIdentity",
          "id": "6d23e712-527b-406f-8d59-d02927885918",
          "displayName": "Breakthru",
          "applicationIdentityType": "bot"
        }
      },
      "body": {
        "contentType": "text",
        "content": "hello"
      },
      "attachments": [],
      "mentions": [],
      "reactions": [],
      "recipient": {
        "@odata.type": "#microsoft.graph.identity",
        "id": "1273a016-201d-4f95-8083-1b7f99b3edeb",
        "displayName": "Adele Vance"
      }
    }
  ]
}
```

### Example 2: Filter targeted messages by date range

The following example shows how to retrieve targeted messages within a specific date range.

#### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "userteamwork_getalltargetedmessages_filter",
  "sampleKeys": ["f47b5f54-6968-4706-a522-31e842b12345"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/f47b5f54-6968-4706-a522-31e842b12345/teamwork/getAllTargetedMessages?$filter=lastModifiedDateTime gt 2024-01-01T00:00:00Z and lastModifiedDateTime lt 2024-12-31T23:59:59Z
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/userteamwork-getalltargetedmessages-filter-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.targetedChatMessage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#Collection(targetedChatMessage)",
  "@odata.count": 1,
  "value": [
    {
      "id": "1704067200000",
      "@odata.type": "#microsoft.graph.targetedChatMessage",
      "replyToId": null,
      "etag": "1704067200000",
      "chatId": "19:eeaa4e946d674c4f8d4dded613780f45@thread.v2",
      "channelIdentity": null,
      "messageType": "message",
      "createdDateTime": "2024-01-01T00:00:00Z",
      "lastModifiedDateTime": "2024-01-01T00:00:00Z",
      "deletedDateTime": null,
      "subject": null,
      "summary": null,
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "policyViolation": null,
      "from": {
        "device": null,
        "user": null,
        "application": {
          "@odata.type": "#microsoft.graph.teamworkApplicationIdentity",
          "id": "6d23e712-527b-406f-8d59-d02927885918",
          "displayName": "Breakthru",
          "applicationIdentityType": "bot"
        }
      },
      "body": {
        "contentType": "text",
        "content": "Filtered message content"
      },
      "attachments": [],
      "mentions": [],
      "reactions": [],
      "recipient": {
        "@odata.type": "#microsoft.graph.identity",
        "id": "1273a016-201d-4f95-8083-1b7f99b3edeb",
        "displayName": "Adele Vance"
      }
    }
  ]
}
```
