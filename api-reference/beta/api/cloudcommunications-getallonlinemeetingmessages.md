---
title: "cloudCommunications: getAllOnlineMeetingMessages"
description: "Get all Teams question and answer (Q&A) conversation messages in a tenant."
author: "aditijha"
ms.date: 06/19/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# cloudCommunications: getAllOnlineMeetingMessages

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all Teams question and answer (Q&A) conversation messages in a tenant. This function returns a snapshot of all Q&A activity in JSON format.

The export includes:
- The original question or discussion text
- The user who posted the message
- All replies and responders
- Vote counts
- Moderation status (pending or dismissed)
- Private replies
- The meeting ID and organizer ID that are used for mapping to meeting metadata.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "cloudcommunications-getallonlinemeetingmessages-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/cloudcommunications-getallonlinemeetingmessages-permissions.md)]

>[!NOTE]
> Currently, this API doesn't support delegated permissions.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /communications/getAllOnlineMeetingMessages
```

## Optional query parameters

This method supports the `$expand` [OData query parameter](/graph/query-parameters) to help customize the response. 

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a collection of [engagementConversationMessage](../resources/engagementconversationmessage.md) objects in the response body. 

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudcommunicationsthis.getallonlinemeetingmessages"
}
-->
``` http
GET https://graph.microsoft.com/beta/communications/getAllOnlineMeetingMessages?$expand=conversation
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.engagementConversationMessage)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#communications/getAllOnlineMeetingMessages",
  "@odata.nextLink": "/communications/getAllOnlineMeetingMessages?$expand=conversation&skipToken=eyADASSDSA",
  "value": [
    {
      "@odata.type": "#microsoft.graph.engagementConversationDiscussionMessage",
      "id": "eyJfdHlwZSI6IlRocmVhZCIsImlkIjoiMzM0OTcwNzMxNTEyNjI3MiJ9",
      "createdDateTime": "2025-05-20T06:35:58.936313Z",
      "lastModifiedDateTime": "2025-05-20T06:35:58.936313Z",
      "replyToId": "eyJjh1wwZSI6IlRocmVhZCIsImlkIjxyzqzM0OTcwNzMxNTEyNjI2q1fw",
      "from": {
        "user": {
          "displayName": "John Doe",
          "id": "611b1c2b-8935-4068-8445-2f73aec6cc3f"
        }
      },
      "body": {
        "content": "This is a sample message body.",
        "contentType": "html"
      },
      "mentions": [],
      "attachments": [],
      "conversation": {
        "@odata.type": "#microsoft.graph.onlineMeetingEngagementConversation",
        "id": "eyJjh1wwZSI6IlRocmVhZCIsImlkIjxyzqzM0OTcwNzMxNTEyNjI2q1fw7",
        "starterId": "eyJjh1wwZSI6IlRocmVhZCIsImlkIjxyzqzM0OTcwNzMxNTEyNjI2q1fw",
        "moderationState": "published",
        "upvoteCount": 5,
        "onlineMeetingId": "MSoxMjczYTAxNi0yMDFkRLTmOTUtODA5My0xYjdmOTliM2VkZWIqMCoqMTk6bWVldGluZ19aR1F3WTJZNE9XTXROekppWlMwME1XWTRMVGc0TWpBdE1BBXdOV1kzWlRsak9UTXlAdGhyZWFkLnYy",
        "organizer": {
          "user": {
            "displayName": "Meeting Organizer",
            "id": "3fe108bf-1d01-43d6-a7f4-b2b697f02c90"
          }
        }
      }
    }
  ]
}
```

