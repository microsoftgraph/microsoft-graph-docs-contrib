---
title: "List userScopeTeamsAppInstallation"
description: "Retrieve one-on-one chat between the specified user and the Teams app."
author: "AkJo"
doc_type: "apiPageType"
localization_priority: Normal
ms.prod: "microsoft-teams"
---

# List one-on-one chat between the specified user and Teams app

Namespace: microsoft.graph

Retrieve the [chat](../resources/chat.md) of the specified [user](../resources/user.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | TeamsAppInstallation.ReadSelfForUser, TeamsAppInstallation.ReadForUser, TeamsAppInstallation.Read, TeamsAppInstallation.ReadWriteSelfForUser, TeamsAppInstallation.ReadWriteForUser, TeamsAppInstallation.ReadWrite |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | TeamsAppInstallation.ReadSelfForUser.All, TeamsAppInstallation.ReadForUser.All, TeamsAppInstallation.Read.All,TeamsAppInstallation.ReadWriteSelfForUser.All, TeamsAppInstallation.ReadWriteForUser.All, TeamsAppInstallation.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /users/{id}/teamwork/installedApps/{id}/chat
```

## Optional query parameters

This method supports the $select [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an instance of [chat](../resources/chat.md) object in the response body.

## Examples

### Example 1: List one-on-one chats between the specified user and the Teams app

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "user_chat_teamsApps"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/users/{id}/teamwork/installedApps/{id}/chat
```

#### Response

The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "name": "user_chat_teamsApps",
  "truncated": true,
  "@odata.type": "microsoft.graph.chat",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "id-value"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "User chat teamsAppInstallations",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
