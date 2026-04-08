---
title: "Create plannerTaskChatMessage"
description: "Create a new chat message on a planner task."
author: "pavlodatsiuk"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 01/23/2026
---

# Create plannerTaskChatMessage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [plannerTaskChatMessage](../resources/plannertaskchatmessage.md) on a [plannerTask](../resources/plannertask.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannertask_post_messages" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannertask-post-messages-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /planner/tasks/{task-id}/messages
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of a [plannerTaskChatMessage](../resources/plannertaskchatmessage.md) object.

The following table lists the properties that you can set when you create a **plannerTaskChatMessage**.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| content | String | The content of the chat message. This property supports plain text and sanitized HTML. Required. |
| mentions | [plannerTaskChatMention](../resources/plannertaskchatmention.md) collection | The list of mentions in the message. Optional. |

## Response

If successful, this method returns a `201 Created` response code and a [plannerTaskChatMessage](../resources/plannertaskchatmessage.md) object in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 400, 403, and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Examples

### Example 1: Create a message

#### Request

The following example shows a request to create a chat message.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannertask_post_messages",
  "sampleKeys": ["01gzSlKkIUSUl6DF_EilrmQAKDhh"]
}-->
```http
POST https://graph.microsoft.com/beta/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages
Content-type: application/json

{
  "content": "This is a new chat message"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannertask-post-messages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTaskChatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#planner/tasks('01gzSlKkIUSUl6DF_EilrmQAKDhh')/messages/$entity",
  "id": "5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5",
  "messageType": "richTextHtml",
  "content": "This is a new chat message",
  "createdDateTime": "2025-12-05T17:49:39.593Z",
  "parentEntityId": "01gzSlKkIUSUl6DF_EilrmQAKDhh",
  "deletedTime": null,
  "editedTime": null,
  "mentions": [],
  "reactions": [],
  "createdBy": {
    "user": {
      "id": "6463a5ce-2119-4198-9f2a-628761df4a62"
    }
  }
}
```

### Example 2: Create a message with mentions

#### Request

The following example shows a request to create a chat message with a user mention.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannertask_post_messages_with_mentions",
  "sampleKeys": ["01gzSlKkIUSUl6DF_EilrmQAKDhh"]
}-->
```http
POST https://graph.microsoft.com/beta/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages
Content-type: application/json

{
  "content": "<div><span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> Please review this task</div>",
  "mentions": [
    {
      "mentioned": "6463a5ce-2119-4198-9f2a-628761df4a62",
      "position": 0,
      "mentionType": "user"
    }
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannertask-post-messages-with-mentions-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTaskChatMessage"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#planner/tasks('01gzSlKkIUSUl6DF_EilrmQAKDhh')/messages/$entity",
  "id": "7cde8bc9-e109-5f9b-9260-04e5e8ddc4c6",
  "messageType": "richTextHtml",
  "content": "<div><span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> Please review this task</div>",
  "createdDateTime": "2025-12-05T17:49:39.593Z",
  "parentEntityId": "01gzSlKkIUSUl6DF_EilrmQAKDhh",
  "deletedTime": null,
  "editedTime": null,
  "mentions": [
    {
      "mentioned": "6463a5ce-2119-4198-9f2a-628761df4a62",
      "position": 0,
      "mentionType": "user"
    }
  ],
  "reactions": [],
  "createdBy": {
    "user": {
      "id": "6463a5ce-2119-4198-9f2a-628761df4a62"
    }
  }
}
```

<!-- {
  "type": "#page.annotation",
  "description": "Create plannerTaskChatMessage",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
