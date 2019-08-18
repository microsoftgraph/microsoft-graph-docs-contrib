---
title: "Update chatMessage with DLP violations"
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

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](https://docs.microsoft.com/en-us/graph/permissions-reference).

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
| [policyViolation](policyviolation.md) | chatMessagePolicyViolation | Supply the properties for the Data Loss Prevention (DLP) violation.|

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
PATCH https://graph.microsoft.com/beta/teams/{group-id}/channels/{channel-id}/messages/{message-id}
Content-type: application/json
Content-length: 248
{
  "policyViolation": {
    "policyTip": {
      "generalText" : “This item has been blocked by administrator.”,
      "complianceUrl" : " https: //contoso.com",
      "matchedConditionDescriptions" : ["Credit Card Number"]
    },
    "verdictDetails" : AllowOverrideWithoutJustification,AllowFalsePositiveOverride,
    "dlpAction" : BlockAccess
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
Content-type: application/json
Content-length: 0
{
}
```
<!-- uuid: ??????????????
2018-04-20 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "chatMessage.PatchPolicyViolation.All",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
