---
title: "employeeExperience: get online meeting q&a message reactions"
description: "Get all Teams Q&A conversation messages in a tenant"
author: "aditijha4"
ms.date: 05/21/2025
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# employeeExperience: get all reactions for an online meeting Q&A message

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Export all reactions associated with a Teams Q&A conversation message.

It provides a point-in-time snapshot of all reactions posted to a Q&A message in Teams.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "employeeexperience-getallonlinemeetingmessages-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/employeeexperience-getallonlinemeetingmessages-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/onlineMeetingConversations/{conversation-id}/messages/{message-id}/reactions
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [engagementConversationMessageReaction](../resources/engagementconversationmessagereaction.md) collection in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "employeeexperiencethis.getallonlinemeetingmessagereactions"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/onlineMeetingConversations/152396cc-4954-4ccf-b514-e1c75ba8b5dd/messages/aff83136-b7f6-450a-85e8-b430f1bd1129/reactions
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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata/employeeExperience/onlineMeetingConversations/152396cc-4954-4ccf-b514-e1c75ba8b5dd/messages/aff83136-b7f6-450a-85e8-b430f1bd1129/reactions",
    "@odata.nextLink": "/employeeExperience/onlineMeetingConversations/152396cc-4954-4ccf-b514-e1c75ba8b5dd/messages/aff83136-b7f6-450a-85e8-b430f1bd1129/reactions&skipToken=eyADASSDSA",
    "value": [
        {
           "@odata.type": "#microsoft.graph.engagementConversationMessageReaction",
           "id": "ey",        
           "createdDateTime": "2019-02-04T19:58:15.511Z",
           "reactionBy": {
              "user":{
                 "id": "2de80ca4-3e91-11ef-ba07-ce45dc06b08b"
              }
           },
           "reactionType": "like"
        }
    ]
}
```

