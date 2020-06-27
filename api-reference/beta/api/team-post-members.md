---
title: "Add members to team"
description: "Add a new member to a team."
author: "nkramer"
localization_priority: Priority
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Create members
Namespace: microsoft.graph

Add a new [conversationMember](../resources/conversationmember.md) to a [team](../resources/team.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/concepts/permissions-reference.md).

|Permission type|Permissions (from most to least privileged)|
|:---|:---|
|Delegated (work or school account)| TeamMember.ReadWrite.All|
|Delegated (personal Microsoft account) | Not supported.    |
|Application| TeamMember.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /teams/{teamsId}/members
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [conversationMember](../resources/conversationmember.md) object.

## Response

If successful, this method returns a `201 Created` response code and a [conversationMember](../resources/conversationmember.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_conversationmember_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/teams/{id}/members
{
  "@odata.type": "#microsoft.graph.aadUserConversationMember",
  "user@odata.bind": "https://graph.microsoft.com/v1.0/users('7051f984-682e-4a08-a6b2-df82fe7d9fe1')",
  "roles": [],
}
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.conversationmember"
}
-->
``` http

HTTP/1.1 201 Created
{
    "@odata.type": "#microsoft.graph.aadUserConversationMember",
    "id": "3c02af05-9312-4966-bc84-c1a0818791c4",
    "roles": [],
    "userId": "7051f984-682e-4a08-a6b2-df82fe7d9fe1",
    "displayName": "George Washington",
    "email": "geowa@example.com"
}
```
