---
title: "List messages"
description: "Retrieve a list of plannerTaskChatMessage objects associated with a plannerTask."
author: "pavlodatsiuk"
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: apiPageType
ms.date: 01/23/2026
---

# List messages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [plannerTaskChatMessage](../resources/plannertaskchatmessage.md) objects associated with a [plannerTask](../resources/plannertask.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "plannertask_list_messages" } -->
[!INCLUDE [permissions-table](../includes/permissions/plannertask-list-messages-permissions.md)]

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
GET /planner/tasks/{task-id}/messages
```

## Optional query parameters

This method supports the `$skipToken` query parameter for paging. This method doesn't support other OData query parameters.

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [plannerTaskChatMessage](../resources/plannertaskchatmessage.md) objects in the response body.

This method can return any of the [HTTP status codes](/graph/errors). The most common errors that apps should handle for this method are the 403 and 404 responses. For more information about these errors, see [Common Planner error conditions](../resources/planner-overview.md#common-planner-error-conditions).

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "plannertask_list_messages",
  "sampleKeys": ["01gzSlKkIUSUl6DF_EilrmQAKDhh"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/planner/tasks/01gzSlKkIUSUl6DF_EilrmQAKDhh/messages
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/plannertask-list-messages-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.plannerTaskChatMessage",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#planner/tasks('01gzSlKkIUSUl6DF_EilrmQAKDhh')/messages",
  "@odata.count": 1,
  "value": [
    {
      "id": "5bde7bc8-d998-4e8a-8159-93d4d7ccc3b5",
      "messageType": "richTextHtml",
      "content": "This is the message content",
      "createdDateTime": "2025-11-29T00:39:31.319Z",
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
  ]
}
```

<!-- {
  "type": "#page.annotation",
  "description": "List plannerTaskChatMessage",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
