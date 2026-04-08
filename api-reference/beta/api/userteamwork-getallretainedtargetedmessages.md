---
title: "userTeamwork: getAllRetainedTargetedMessages"
description: "Get all retained targeted messages sent to a specific user in group chats and channels."
author: "devjha-ms"
ms.date: 02/16/2026
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: apiPageType
---

# userTeamwork: getAllRetainedTargetedMessages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all retained [targeted messages](../resources/targetedchatmessage.md) sent to a specific user in group chats and channels.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userteamwork_getallretainedtargetedmessages" } -->
[!INCLUDE [permissions-table](../includes/permissions/userteamwork-getallretainedtargetedmessages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /users/{user-id | userPrincipalName}/teamwork/getAllRetainedTargetedMessages
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
GET /users/{user-id | userPrincipalName}/teamwork/getAllRetainedTargetedMessages?$filter=lastModifiedDateTime gt 2024-01-01T00:00:00Z and lastModifiedDateTime lt 2024-12-31T23:59:59Z
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [targetedChatMessage](../resources/targetedchatmessage.md) objects in the response body.

The response includes the **@odata.nextLink** property for pagination, when applicable.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "userteamwork_getallretainedtargetedmessages",
  "sampleKeys": ["f47b5f54-6968-4706-a522-31e842b12345"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/f47b5f54-6968-4706-a522-31e842b12345/teamwork/getAllRetainedTargetedMessages
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/userteamwork-getallretainedtargetedmessages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

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
  "@odata.nextLink": "https://graph.microsoft.com/beta/users/f47b5f54-6968-4706-a522-31e842b12345/teamwork/getAllRetainedTargetedMessages?$top=1&$skiptoken=Token",
  "value": [
    {
      "@odata.type": "#microsoft.graph.targetedChatMessage",
      "id": "1684961612345",
      "replyToId": null,
      "etag": "1684962512345",
      "messageType": "message",
      "createdDateTime": "2023-05-24T20:54:49.858Z",
      "lastModifiedDateTime": "2023-05-24T21:13:15Z",
      "lastEditedDateTime": "2023-05-24T21:09:00.224Z",
      "deletedDateTime": null,
      "subject": "",
      "summary": null,
      "chatId": "19:1a546d42d8b54a16903716f49b512345@thread.v2",
      "importance": "normal",
      "locale": "en-us",
      "webUrl": null,
      "channelIdentity": null,
      "onBehalfOf": null,
      "policyViolation": null,
      "eventDetail": null,
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
        "contentType": "html",
        "content": "<p>5/24 group chat</p>"
      },
      "attachments": [],
      "mentions": [],
      "reactions": [],
      "messageHistory": [],
      "recipient": {
        "@odata.type": "#microsoft.graph.identity",
        "id": "1273a016-201d-4f95-8083-1b7f99b3edeb",
        "displayName": "Adele Vance"
      }
    }
  ]
}
```
