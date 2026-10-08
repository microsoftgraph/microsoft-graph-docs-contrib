---
title: "plannerTaskChatMessage: unsetReaction"
description: "Remove a reaction from a plannerTaskChatMessage for the current user."
author: "pavlodatsiuk"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 01/23/2026
---

# plannerTaskChatMessage: unsetReaction

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a reaction from a [plannerTaskChatMessage](../resources/plannertaskchatmessage.md) for the current user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannertaskchatmessage_unsetreaction" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannertaskchatmessage-unsetreaction-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /planner/tasks/{task-id}/messages/{message-id}/unsetReaction
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the reaction to remove.

The following table lists the properties that are required when you remove a reaction.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| reactionType | String | The type of reaction to remove. For example, `like`. Required. |

## Response

If successful, this method returns a `204 No Content` response code.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 403 and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannertaskchatmessage_unsetreaction",
  "sampleKeys": ["01gzSlKkIUSUl6DF_EilrmQAKDhh", "5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5"]
}-->
```http
POST https://graph.microsoft.com/beta/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages/5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5/unsetReaction
Content-type: application/json

{
  "reactionType": "like"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/plannertaskchatmessage-unsetreaction-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/plannertaskchatmessage-unsetreaction-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/plannertaskchatmessage-unsetreaction-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannertaskchatmessage-unsetreaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/plannertaskchatmessage-unsetreaction-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/plannertaskchatmessage-unsetreaction-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/plannertaskchatmessage-unsetreaction-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- {
  "type": "#page.annotation",
  "description": "Remove reaction from plannerTaskChatMessage",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
