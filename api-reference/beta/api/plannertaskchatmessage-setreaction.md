---
title: "plannerTaskChatMessage: setReaction"
description: "Set a reaction to a plannerTaskChatMessage for the current user."
author: "pavlodatsiuk"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 01/23/2026
---

# plannerTaskChatMessage: setReaction

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Set a reaction to a [plannerTaskChatMessage](../resources/plannertaskchatmessage.md) for the current user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannertaskchatmessage_setreaction" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannertaskchatmessage-setreaction-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /planner/tasks/{task-id}/messages/{message-id}/setReaction
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

In the request body, supply a JSON representation of the reaction to set.

The following table lists the properties that are required when you set a reaction.

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| reactionType | String | The type of reaction. For example, `like`. Required. |

## Response

If successful, this method returns a `200 OK` response code.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 400, 403, and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannertaskchatmessage_setreaction",
  "sampleKeys": ["01gzSlKkIUSUl6DF_EilrmQAKDhh", "5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5"]
}-->
```http
POST https://graph.microsoft.com/beta/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages/5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5/setReaction
Content-type: application/json

{
  "reactionType": "like"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannertaskchatmessage-setreaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 200 OK
```

<!-- {
  "type": "#page.annotation",
  "description": "Set reaction to plannerTaskChatMessage",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
