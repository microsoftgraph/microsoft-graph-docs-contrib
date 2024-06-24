---
title: "Create thread"
description: "Create a new thread in the specified conversation. "
author: "mikemcleanlive"
ms.localizationpriority: medium
ms.subservice: "entra-groups"
doc_type: apiPageType
---

# Create thread

Namespace: microsoft.graph

Create a new thread in the specified conversation. 

A thread and post are created as specified. Use [reply thread](conversationthread-reply.md) to further post 
to that thread. Or, if you get the post ID, you can also [reply](post-reply.md) to that post in that thread.

Note: You can also [start a new conversation by first creating a thread](group-post-threads.md).

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "conversation_post_threads" } -->
[!INCLUDE [permissions-table](../includes/permissions/conversation-post-threads-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /groups/{id}/conversations/{id}/threads
```
## Request headers
| Name       | Description|
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
In the request body, supply a JSON representation of [conversationThread](../resources/conversationthread.md) object.

## Response

If successful, this method returns `201 Created` response code and [conversationThread](../resources/conversationthread.md) object in the response body.

## Example
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_conversationthread_from_conversation"
}-->
```http
POST https://graph.microsoft.com/v1.0/groups/{id}/conversations/{id}/threads
Content-type: application/json

{
    "topic": "Take your wellness days and rest",
    "posts": [
        {
            "body": {
                "contentType": "html",
                "content": "Waiting for the summer holidays."
            }
        }
    ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-conversationthread-from-conversation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-conversationthread-from-conversation-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-conversationthread-from-conversation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-conversationthread-from-conversation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-conversationthread-from-conversation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-conversationthread-from-conversation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-conversationthread-from-conversation-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-conversationthread-from-conversation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

In the request body, supply a JSON representation of [conversationThread](../resources/conversationthread.md) object.
### Response

If successful, this method returns `201 Created` response code and the `id` of the new thread in the response body.
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationThread"
} -->
```http
HTTP/1.1 201 Created
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#groups('4d81ce71-486c-41e9-afc5-e41bf2d0722a')/conversations('AAQkAGRhZmRhMWM3LTYwZTktNDZmYy1hNWU1LThhZWU4NzI2YTEyZgAQABKPPJ682apIiV1UFlj7XxY%3D')/threads/$entity",
    "id": "AAQkAGRhZmRhMWM3LTYwZTktNDZmYy1hNWU1LThhZWU4NzI2YTEyZgMkABAArnv4XDMi_kemtqM1d730TxAArnv4XDMi_kemtqM1d730Tw=="
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create thread",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

