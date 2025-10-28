---
title: "List reactions"
description: "Get a list of the engagement conversation message reaction objects and their properties for an engagement conversation message in an online meeting."
author: "aditijha"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# List reactions

Namespace: microsoft.graph

Get a list of the [engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) objects and their properties for an [engagementConversationMessage](../resources/engagementconversationmessage.md) in an online meeting.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "engagementconversationdiscussionmessage-list-reactions-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/engagementconversationdiscussionmessage-list-reactions-permissions.md)]


## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /communications/onlineMeetingConversations/{onlineMeetingEngagementConversationId}/messages/{engagementConversationMessageId}/reactions
```

## Optional query parameters

This method doesn't support OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) objects in the response body.

## Examples

### Request

The following example shows how to get a list of reactions for a Teams questions and answers message.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_engagementconversationmessagereaction",
  "sampleKeys": ["eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzM0NjU1NTExODA0MzEzNiJ9", "eyJfdHlwZSI6Ik1lc3NhZ2UiLCJpZCI6IjMzNDY1NTUxMTgwNDMxMzYifQ"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/communications/onlineMeetingConversations/eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzM0NjU1NTExODA0MzEzNiJ9/messages/eyJfdHlwZSI6Ik1lc3NhZ2UiLCJpZCI6IjMzNDY1NTUxMTgwNDMxMzYifQ/reactions
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-engagementconversationmessagereaction-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-engagementconversationmessagereaction-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-engagementconversationmessagereaction-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-engagementconversationmessagereaction-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-engagementconversationmessagereaction-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-engagementconversationmessagereaction-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.engagementConversationMessageReaction"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#communications/onlineMeetingConversations('eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzM0NjU1NTExODA0MzEzNiJ9')/messages('eyJfdHlwZSI6Ik1lc3NhZ2UiLCJpZCI6IjMzNDY1NTUxMTgwNDMxMzYifQ')/reactions",
  "@odata.nextLink": "/communications/onlineMeetingConversations('eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzM0NjU1NTExODA0MzEzNiJ9')/messages('eyJfdHlwZSI6Ik1lc3NhZ2UiLCJpZCI6IjMzNDY1NTUxMTgwNDMxMzYifQ')/reactions&skipToken=eyADASSDSA",
  "value": [
    {
      "@odata.type": "#microsoft.graph.engagementConversationMessageReaction",
      "id": "eyJxFkLBYM09IlRocmVhZCIsImlkIjoiMzM0NjU1NT0MzEzNiJ9ExODA",
      "createdDateTime": "2019-02-04T19:58:15.511Z",
      "reactionBy": {
        "user": {
          "displayName": "admin@a830edad9050849lq4lepgz0ubr.onmicrosoft.com",
          "id": "04222c1b-87eb-4cb1-80af-85cae1847a3c"
        }
      },
      "reactionType": "like"
    }
  ]
}
```

