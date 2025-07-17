---
title: "List reactions"
description: "Get a list of the engagementConversationMessageReaction objects and their properties for an engagementConversationMessage in an online meeting."
author: "aditijha"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# List reactions

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

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

>[!NOTE]
> Currently, this API doesn't support delegated permissions.

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
<!-- {
  "blockType": "request",
  "name": "list_engagementconversationmessagereaction",
  "sampleKeys": ["eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzM0NjU1NTExODA0MzEzNiJ9", "eyJfdHlwZSI6Ik1lc3NhZ2UiLCJpZCI6IjMzNDY1NTUxMTgwNDMxMzYifQ"]
}
-->
``` http
GET https://graph.microsoft.com/beta/communications/onlineMeetingConversations/eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzM0NjU1NTExODA0MzEzNiJ9/messages/eyJfdHlwZSI6Ik1lc3NhZ2UiLCJpZCI6IjMzNDY1NTUxMTgwNDMxMzYifQ/reactions
```

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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/onlineMeetingConversations('eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzM0NjU1NTExODA0MzEzNiJ9')/messages('eyJfdHlwZSI6Ik1lc3NhZ2UiLCJpZCI6IjMzNDY1NTUxMTgwNDMxMzYifQ')/reactions",
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

