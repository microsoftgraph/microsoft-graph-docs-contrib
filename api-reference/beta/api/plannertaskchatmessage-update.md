---
title: "Update plannerTaskChatMessage"
description: "Update the properties of a plannerTaskChatMessage object."
author: "pavlodatsiuk"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 01/23/2026
---

# Update plannerTaskChatMessage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [plannerTaskChatMessage](../resources/plannertaskchatmessage.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannertaskchatmessage_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannertaskchatmessage-update-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
PATCH /planner/tasks/{task-id}/messages/{message-id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| content | String | The content of the chat message. Supports plain text and sanitized HTML. |
| mentions | [plannerTaskChatMention](../resources/plannertaskchatmention.md) collection | The list of mentions in the message. |

## Response

If successful, this method returns a `200 OK` response code and an updated [plannerTaskChatMessage](../resources/plannertaskchatmessage.md) object in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 400, 403, 404, and 409 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_plannertaskchatmessage",
  "sampleKeys": ["01gzSlKkIUSUl6DF_EilrmQAKDhh", "5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5"]
}-->
```http
PATCH https://graph.microsoft.com/beta/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages/5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5
Content-type: application/json

{
  "content": "<div>Updated message with <span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> mention</div>",
  "mentions": [
    {
      "mentioned": "6463a5ce-2119-4198-9f2a-628761df4a62",
      "position": 0,
      "mentionType": "user"
    }
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-plannertaskchatmessage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-plannertaskchatmessage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-plannertaskchatmessage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-plannertaskchatmessage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-plannertaskchatmessage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-plannertaskchatmessage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-plannertaskchatmessage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTaskChatMessage"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#planner/tasks('01gzSlKkIUSUl6DF_EilrmQAKDhh')/messages/$entity",
  "id": "5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5",
  "messageType": "richTextHtml",
  "content": "<div>Updated message with <span itemid=\"0\" itemtype=\"https://schema.skype.com/Mention/Person\"></span> mention</div>",
  "createdDateTime": "2025-12-05T17:49:39.593Z",
  "parentEntityId": "01gzSlKkIUSUl6DF_EilrmQAKDhh",
  "deletedTime": null,
  "editedTime": "2025-12-05T18:15:24.706Z",
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
  "description": "Update plannerTaskChatMessage",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
