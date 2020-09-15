---
title: "Update chatMessage with DLP policy violation"
description: "Update a chatMessage with a Data Loss Prevention (DLP) policy violation."
author: "clearab"
doc_type: apiPageType
localization_priority: Normal 
ms.prod: "microsoft-teams"
---

# Update chatMessage

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update a chatMessage with a Data Loss Prevention (DLP) policy violation.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Not supported.    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | ChatMessage.PatchPolicyViolation.All for chat a message.</br>ChannelMessage.UpdatePolicyViolation.All for a channel message. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /teams/(team-id)/channels/{channel-id}/chatMessages/{message-id}
PATCH /users/(user-id)/chats/{chatThread-id}/chatMessages/{message-id}
```

## Request headers

| Name       | Type | Description|
|:-----------|:------|:----------|
| Authorization  | string  | Bearer {token}. Required. |
| Content-Type | string  | Nature of the data in the body of an entity. Required. |

## Request body

In the request body, supply the relevant properties that you would like to update.

| Property   | Type |Description|
|:---------------|:--------|:----------|
| policyViolation | [chatMessagePolicyViolation](../resources/chatmessagepolicyviolation.md) | Supply the properties for the Data Loss Prevention (DLP) violation.|

## Response

If successful, this method returns a `200 OK` response.

## Example

### Request

The following is an example of the request for updating DLP properties on a Microsoft Teams channel message.

<!-- {
  "blockType": "request",
  "name": "chatMessage.PatchPolicyViolation.All"
}-->
```http
PATCH https://graph.microsoft.com/beta/teams/e1234567-e123-4276-55555-6232b0e3a89a/channels/a7654321-e321-0000-0000-123b0e3a00a/messages/19%3Aa21b0b0c05194ebc9e30000000000f61%40thread.skype
Content-Type: application/json
Content-Length: 248

{
  "policyViolation": {
    "policyTip": {
      "generalText" : "This item has been blocked by administrator.",
      "complianceUrl" : "https://contoso.com/dlp-policy-page",
      "matchedConditionDescriptions" : ["Credit Card Number"]
    },
    "verdictDetails" : "AllowOverrideWithoutJustification,AllowFalsePositiveOverride",
    "dlpAction" : "BlockAccess"
  }
}
```

### Response

Here is an example of the response.

<!-- {
  "blockType": "response",
} -->

```http
HTTP/1.1 200 OK
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chatMessage.UpdatePolicyViolation.All",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
