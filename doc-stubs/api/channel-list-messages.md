---
title: "List messages"
description: "Get the chatMessage resources from the messages navigation property."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# List messages
Namespace: microsoft.graph

Get the chatMessage resources from the messages navigation property.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /chats/{chatsId}/messages
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [chatMessage](../resources/chatmessage.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_chatmessage"
}
-->
``` http
GET https://graph.microsoft.com/beta/chats/{chatsId}/messages
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(Microsoft.Teams.GraphSvc.chatMessage)"
}
-->
``` http
HTTP/1.1 200 OK

Content-Type: application/json
{
  "value": [
    {
      "@odata.type": "#Microsoft.Teams.GraphSvc.chatMessage",
      "id": "7bae46da-46da-7bae-da46-ae7bda46ae7b",
      "replyToId": "String",
      "from": {
        "@odata.type": "microsoft.graph.identitySet"
      },
      "etag": "String",
      "messageType": "String",
      "createdDateTime": "String (timestamp)",
      "lastModifiedDateTime": "String (timestamp)",
      "deletedDateTime": "String (timestamp)",
      "subject": "String",
      "body": {
        "@odata.type": "microsoft.graph.itemBody"
      },
      "summary": "String",
      "attachments": [
        {
          "@odata.type": "microsoft.graph.chatMessageAttachment"
        }
      ],
      "mentions": [
        {
          "@odata.type": "microsoft.graph.chatMessageMention"
        }
      ],
      "importance": "String",
      "policyViolation": {
        "@odata.type": "microsoft.graph.chatMessagePolicyViolation"
      },
      "reactions": [
        {
          "@odata.type": "microsoft.graph.chatMessageReaction"
        }
      ],
      "locale": "String",
      "webUrl": "String"
    }
  ]
}
```

